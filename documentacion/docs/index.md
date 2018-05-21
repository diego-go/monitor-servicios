# Monitor de servicios

Esta página contiene la documentación de todo lo que se ha creado en la página web del [proyecto web](https://diegomac.sytes.net)

En ella se pondrá a detalle qué es lo que hace la página web y su propósito.


## Comenzando

Este proyecto se genera a partir de la materia de *Desarrollo web* de la carrera de *Matemáticas Aplicadas y Computación* de la *FES Acatlán* con la idea de crear una página web en donde mediante el uso de scripts se estén monitoreando los diferentes servicios que se están corriendo en el servidor.

El servidor monitorea servicios, tales como Docker, base de datos, datos generales, peticiones al servidor, etc.

La página web está alojada en un servidor _Red Hat Enterprise Linux 7_ que está brinda el servicio de _Google Cloud Platform_ para poder generar todos los reportes y los diferentes servicios que el servidor está corriendo.


## Características del servidor

Como se mencionó antes, se están usando el servicio de _Google Cloud Platform_ en su modalidad gratuita de 1 año, donde brindan la posibilidad de 300usd para hacer uso de su plataforma y crear instancias virtuales con diferentes distribuciones GNU/Linux.

En este caso, se está usando la distribución Red Hat Enterprise Linux en su versión 7.5.

La instancia es una de las más pequeñas, sus características son:
* g1-small 
* 1 CPU virtual)
* 1.7 GB de memoria
* 10 gb de disco

# Requerimientos de conexión

Para trabajar con el servidor será necesario tener un llave pública para usar una conexión SSH para acceder a él y comenzar a trabajar en sus configuraciones.
