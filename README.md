# Requisitos
- Composer
- Bower
- Npm
# Instalación
1. En la raíz del sitio: 
``` 
cd /xxx/
```
- Instalar dependencias con composer
``` 
composer install
```
- Hacer una copia de **/.env.example** y llamarlo **/.env** 
``` 
cp /xxx/.env.example /xxx/.env
```
- Configurar los datos en el archivo **/.env**
 `DB_HOST, DB_PORT, DB_DATABASE, DB_USERNAME, DB_PASSWORD` 
 
- Gererar la clave de artisan
``` 
php artisan key:generate
```
- Dar permisos de escritura a la carpetas **/storage/*** y **/bootstrap/cache**
``` 
chmod 777 /xxx/storage/
chmod 777 /xxx/bootstrap/cache