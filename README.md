# Descripción de la tarea

Para esta prueba se creó inicialmente los modelos User y Like, los cuales contienen la estructura de los datos almacenados para los dos tipos. Para el modelo User, se almacenaron los siguientes: email:string, first_name:string last_name:string address:string y phone_number:string; para el modelo Like se almacenaron los siguientes: art:string, cinema:string, music:string -- Se pensó el modelo Like como una pequeña colección de autores/artistas que gustan al usuario --

Se creó una asociación 1-1 entre el modelo User y el modelo Like.

Luego de crear los modelos y sus migraciones, se agregaron las restricciones correspondientes: email único y no `nil`. 

Posteriormente, se añadieron los controladores y las rutas, en las cuales se especificó que las rutas de Like eran sub-rutas de User, por lo cual, para acceder al controlador, tendrían que usarse rutas del estilo: `users/:id/likes` 

Al generar el controlador, se crearon `concerns` para mantener el código DRY. En estos se agregaron Handlers para manejar errores comunes dentro de los controladores y el código de respuesa JSON más común a ser usado.

Al final se agregaron las pruebas para los modelos y el UserController. Para facilitar la creación de dummy data, se agregó la gema FactoryGirl.

* ...
# tas - test
