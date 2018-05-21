# Instalación de paquetes

Para comenzar será necesario que se tengan ciertos paquetes instalados en nuestro servidor. 

Primeramente para tener nuestro servidor web necesitaremos instalar el paquete httpd ese paquete será el que nos de nuestra interfaz web.

`yum install -y httpd`

Una vez terminada la instalación será necesario iniciar el servicio web.

`systemctl start httpd`

Para habilitar el servicio en caso de que reinicie el servidor.

`systemctl enable httpd`

# Servicio de nombre de dominio

Por defecto, el servicio de _Google Cloud Platform_ nos genera una ip pública, misma que se puede colocar en el navegador para que podamos accesar al servicio web que nos da Apache.

Para no poner la dirección web y una usar un nombre de dominio, se está usando el servicio de [NoIP](https://www.noip.com/) que es el que nos ayudará a resolver el nombre de dominio para que nos sea más fácil recordar la dirección web [diegomac.sytes.net](https://www.noip.com/)

Para la instalación de no ip será necesario descargar un paquete de su web, descargarlo en la ruta `/usr/local/src` descomprimirlo, compilarlo y seguir los pasos que se nos piden para dar de alta nuestro nombre de dominio.


# Scripts

Todos los scripts que tengamos irán en la carpeta **/var/www/cgi-bin/** esta carpeta hace referencia a la interfaz de entrada común, es una tecnología que permite a un navegador solicitar datos de un programa ejecutado en un servidor web. 

**CGI** especifica un estándar para transferir datos entre el cliente y el programa. Es un mecanismo de comunicación entre el servidor web y una aplicación externa.

Necesitaremos un editor de texto para poder crear los scripts, en este caso se puede nano o vim.

Para instalarlo basta con hacer

`yum install -y nano vim`

# Información general

En esta primera opción podremos visualizar los detalles generales de nuestro servidor, disco duro, memoria, usuarios loggeados en el sistema, peticiones al servidor Apache, version del sistema y el tiempo de actividad del server.

# Estado del servicio de SSH

Al entrar al apartado del servicio SSH, vamos encontrarnos con el estdo del servicio, si está arriba o abajo y los túneles que están establecidos en ese momento.


# DBMS

Para poder monitorear el estado de un DBMS será necesario instalar uno de ellos, en este caso se usará MariaDB.

Para la instalación de MariaDB, basta con instalar el paquete 

`yum install -y mariadb-server`

Una vez hecho esto, procedemos iniciar el servicio

`systemctl start mariadb`

Verificamos que esté corriendo

`systemctl status mariadb`

# Docker

Este monitor lo que hace es primeramente checar el estado del servicio de contenedores Docker, si está activo o está caído y también verificará qué contenedores están corriendo en ese momento.

# Cron

Cron es un demonio que ejecuta procesos cada minuto, día, semana o mes. Los procesos que deben ejecutarse y la hora en la que deben hacerlo se especifican en el fichero crontab.

El servidor ejecuta tareas en cron para que se realicen ciertas cosas y se desplieguen en la página web.

# Certificado SSL

Como práctica adicional todas las páginas del servidor usan el protocolo de seguridad https, usando certificados de seguridad ssl emitidos por Let's encrypt. Para hacer eso se instaló el paquete certbot que es el que en automático habilita el https en el sitio web.

Como los certificados tienen una vigencia, desde cron se manda llamar un binario para que lo renueve al finalizar cada día.
