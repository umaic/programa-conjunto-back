<?php

namespace App\Http\Controllers;

use App\SurveyBorough;
use App\Questions;
use App\Respondents;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SurveyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*
        $questions = Questions::with(['answers', 'topic'])->get();
        foreach ($questions as $q) {
           $q->series = $q->answers->groupBy('answer');
        }
        return $questions;*/
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return SurveyBorough::with(['borough.department','topics.questions.text', 'respondents'])->findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function surveys_borough($id)
    {
        return SurveyBorough::with(['borough.department', 'survey'])->where('borough_id','=',$id)->get();
    }

    public function questions($surv_id){
        $resource = SurveyBorough::with(['topics.questions.text', 'topics.questions.options.answers', 'topics.questions.options.subOptions.answers'])->findOrFail($surv_id);
        $questions = [];
        foreach ($resource->topics as $topic) {
            foreach ($topic->questions as $question) {
                $data = $this->resolveGraph($question->id, $surv_id);
                $data['question'] = $question;
                $questions[] = $data;
            }
        }        
        return $questions;
    }

    public function resolveGraph($question_id, $surv_id)
    {
        $resolved = [];
        $totalPeople = 0;

        $respondents = Respondents::where('surv_bor_id','=',$surv_id)->get();
        $all = $respondents->count();

        $question = Questions::with('options.answers', 'options.subOptions.answers')->findOrFail($question_id);
        $resolved['utilities'] = json_decode($question->utilities);
        $options = $question->options;

        if($question->parent != 0){
            $parentQ = Questions::with('options.answers')->findOrFail($question->parent);
            if ($resolved['utilities']->checked_yes) {                
                foreach ($parentQ->options as $op) {
                    if ($op->keyvar=='si') {
                        $totalPeople = count($op->answers);
                    }
                }
            }else{
                $totalPeople = $all;
            }           
        }else{
            $totalPeople = $all;         
        }

        $resolved['respondent'] = $totalPeople;
        
        $resolved['values']=[];

        if ($resolved['utilities']->txt) {
            foreach ($options as $op) {
               foreach ($op->answers as $ans) {
                            $resolved['values'][] = $ans->value;  
                          }
            }
        }else if ($resolved['utilities']->weighted) {
            $resolved['series'] = [];
            foreach ($options as $op) {
               $resolved['labels'][] = $op->label;
            }
            foreach ($respondents as $resp) {
                $valuesarray = [];
                foreach ($options as $op) {
                    foreach ($op->answers as $ans) {
                              if ($ans->respondent_id == $resp->id) {
                                  $valuesarray[] = $ans->value;
                              }
                          }      
                }
                $temparray[] = $valuesarray;
                $resolved['values'] = $temparray;        
            }
        }else if($resolved['utilities']->number){
            foreach ($options as $key => $op) {
                    $resolved['labels'][] = $op->label;
                    $resolved['values'][] = 0;
                    foreach ($op->answers as $ans) {
                            $resolved['values'][$key] += $ans->value;  
                          }      
                }
        }else if($resolved['utilities']->liker){
            foreach ($options as $key => $op) {
                    if (strlen($op->label) > 41) {
                        $resolved['labels'][] = explode(" ", $op->label)[0]. " " .explode(" ", $op->label)[1];
                    }else{
                       $resolved['labels'][] = $op->label; 
                    }                    
                    $valuesarray = [];
                    $temp[] = count($op->answers);        
            }
            for ($i=0; $i < count($resolved['labels']); $i++) { 
               $resolved['values'][0][$i] = $temp[$i];
            }
        }else{
            foreach ($options as $op) {
                if ($op->parent == 0) {
                    $resolved['labels'][] = $op->label;
                    $resolved['series'] = [];
                    $resolved['values'][] = intval(count($op->answers));             
                }
            }
        }
        
        return $resolved;
    }

    private function normalize($data, $totalPeople, $priorityFlag){
        if ($priorityFlag) {
            foreach ($data as $key => $value) {
                    $data[$key] = round($value/$totalPeople, 2);
            }
        }else{
           foreach ($data as $key => $value) {
                    $data[$key] = round($value/$totalPeople * 100, 2);
            } 
        }

        return $data;
    }   

}
