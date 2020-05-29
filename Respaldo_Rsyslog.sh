#!/bin/bash

#Variables generales a usar de MySQL
user=tu_usuario
pass=tu_password
fecha=$(date +"%y-%m-%d")
db=tu_base_de_datos

#Respaldar la base de datos
mysqldump -u $user -p$pass $db > Respaldo"_"$fecha.sql
sleep 10

#Manejo de archivos
mkdir Respaldos_$fecha
cp -R /etc/rsyslog.conf Respaldos_$fecha/
cp -R /var/www/html/Syslog/ Respaldos_$fecha/
cp -R /etc/rsyslog.d/ Respaldos_$fecha/
mv *.sql Respaldos"_"$fecha
sleep 10

#Se crea un tar.gz con la carpeta que contiene todos los archivos
tar -czvf Respaldos_Syslog_$fecha.tar.gz Respaldos_$fecha/
sleep  10

#Envio de respaldos - (En espera)
#scp root@10.222.3.xxx:/home/Respaldos_Syslog/
#sleep 10

#Eliminacion de archivos
rm -rf Respaldos_Syslog_$fecha.tar.gz Respaldos_$fecha/
sleep 10

#Limpieza de base de datos
mysql -u $user -p$pass << eof
use $db;
truncate table SystemEvents;
eof

sleep 10
exit
