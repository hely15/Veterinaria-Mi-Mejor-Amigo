# Veterinaria-Mi-Mejor-Amigo

Este proyecto representa un sistema de gestión para una veterinaria, implementado mediante un modelo relacional en MySQL. Permite llevar el control de dueños, mascotas, especies, razas, tratamientos, servicios y visitas, permitiendo consultas eficientes sobre la información registrada.

## Presentacion Video 
https://youtu.be/xMLHlpmmlaI

## Diagrama Logico 
Despues de Analizar las exigencias de la base de datos y del cliente se definio que esta es la mejor forma de distribuir los datos para el buen funcionamiento de la Base de Datos para realizar este diagrama se tuvo encuenta la 3Forma Normal.
<img width="789" alt="Screenshot 2025-05-22 at 9 37 13 PM" src="https://github.com/user-attachments/assets/2ef3132e-41b6-4e4e-baf0-80160f1e87fd" />


## Estructuras.SQL

El archivo ddl.sql contiene las instrucciones CREATE TABLE para definir la estructura de las siguientes entidades:

Dueños

Mascotas

Especies

Raza

Servicios

Tratamientos

Visitas

Incluye llaves primarias, foráneas, y los tipos de datos adecuados para cada atributo.

## Datos.SQL

Se incluyen sentencias INSERT INTO para poblar las tablas con datos de prueba. Esto permite realizar las consultas SQL y verificar el correcto funcionamiento del sistema.

## Consultas.SQL

El archivo consultas.sql tiene 15 consultas relevantes para la administración de la veterinaria:

Consultas Incluidas

Crear tabla con mascotas vacunadas

Alias en campos

Alias en subconsulta

Uso de COUNT con alias

Promedio (AVG) de precios

Precio máximo y mínimo (MAX y MIN)

Concatenar campos (CONCAT)

Conversión a mayúsculas y minúsculas (UPPER, LOWER)

Tamaño, substring y trim (LENGTH, SUBSTRING, TRIM)

Redondeo de precios (ROUND)

Uso de IF para vacunación

JOIN entre mascotas y dueños

GROUP BY por especie

Mascotas por tratamiento aplicado

Fecha de última visita por mascota


