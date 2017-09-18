## Monitor de servicios

Este repositorio contiene los scripts necesarios para que puedan ser implementados en un servidor.

La idea de estos scripts es dar la información necesaria del estado de diferentes servicios que están corriendo en el servidor.

## Server

El servidor está alojado en AWS. Es un RHEL release 7.4

## Requerimientos de conexión

Los requerimientos para trabajar con el servidor son simples, únicamente se necesita de una terminal SSH para acceder a él y comenzar a trabajar en sus configuraciones.


## Instalación y paquetes

Para comenzar será necesario que se tengan ciertos paquetes instalados en nuestro servidor. Primeramente para tener nuestro servidor web necesitaremos instalar el paquete _httpd_ ese paquete será el que nos de nuestra interfaz web.

Todos los scripts que tengamos irán en la carpeta _/var/www/cgi-bin/_esta carpeta hace referencia a la interfaz de entrada común, es una tecnología que permite a un navegador solicitar datos de un programa ejecutado en un servidor web. CGI especifica un estándar para transferir datos entre el cliente y el programa. Es un mecanismo de comunicación entre el servidor web y una aplicación externa.

Después tendremos que cerciorarnos que el modulo cgi-bin estéactivado en nuestro servidor Apache usando el binario _apachectl -M_

Necesitaremos un editor de texto para poder crear los scripts, en este caso se puede nano o vim.
_yum install -y nano vim_

### DBMS
Para poder monitorear el estado de un DBMS será necesario instalar uno de ellos, en este caso se usará Postgres y MariaDB.

Para la instalación de MariaDB, basta con instalar el paquete _yum install -y mariadb-server.x8664_
Una vez hecho esto, procedemosa iniciar el servicio

_systemctl start mariadb_

Verificamos que esté corriendo

_systemctl status mariadb_

Para instalar Postgres tendremos que instalar el siguiente paquete _yum install postgresql-server_
Después de instalado iniciamos el servicio 
_systemctl start postgresql_

Y lo habilitamos para el inicio del sistema.
_systemctl enable postgresql_

### https
Como práctica adicional todas las páginas del servidor usan el protocolo de seguridad https, usando certificados de seguridad ssl emitidos por Let's encrypt. Para hacer eso se instaló el paquete certbot que es el que en automático habilita el https en el sitio web.

Como los certificados tienen una vigencia, desde cron se manda llamar un binario para que lo renueve al finalizar cada día.

## Cron
Cron es un demonio que ejecuta procesos cada minuto, día, semana o mes. Los procesos que deben ejecutarse y la hora en la que deben hacerlo se especifican en el fichero crontab.

El servidor ejecuta tareas en cron para que se realicen ciertas cosas y se desplieguen en la página web.