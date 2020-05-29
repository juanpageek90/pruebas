#!/bin/bash

#Variables generales a usar de MySQL
user=tu_usuario
pass=tu_password
fecha=$(date)
db=tu_base_de_datos

#Respaldar la base de datos
mysqldump -u $user -p$pass $db > Respaldo"_"$fecha.sql
sleep 10

