#script para realizar el respaldo del servicio rsylog y sus archivos de configuracion y el panel de administracion web.

#Instrucciones.

Descarga el repositorio y ejecuta el script con permisos de root.

#Pasos a seguir.

1.- git clone https://github.com/juanpageek90/respaldo_syslog.git

2.- cd respaldo_syslog/

3.- chmod +x respaldo_syslog.sh

4.- ./respaldo_syslog

#Funcionalidades.

Paso 1.- El script realiza el respaldo de la db correspondiente.

Paso 2.- El script realiza el respaldo de los archivos de configuracion de rsyslog (Archivos de configuracion y panel de administracion web)

Paso 3.- El script mueve los archivos de configuracion y la db a una carpeta con la fecha actual y posteriormente pasa a comprimirla para una mayor administracion. 

Paso 4.- El script envia el respaldo a un servidor remoto por medio de ftp o scp. (Falta por definir)

Paso 5.- El escript borra los archivos creados y limpia la base de datos con los registros del syslog.
