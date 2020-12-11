# Rama 6 Subir imagen a Nexus

#### Explicacion del Dockerfile:

#### 6.0) La imagen de docker debe subirse a nexus
No se pudo subir a nexus, hay un issue de red.

```sh
[sebastianmascolo@localhost Nexus]$ docker --debug=true  login -u Bootcamp -p xxxxxx jenkins.semperti.local:8088
WARNING! Using --password via the CLI is insecure. Use --password-stdin.
Error response from daemon: Get http://jenkins.semperti.local:8088/v2/: dial tcp 10.252.7.162:8088: connect: no route to host

daemon.json
{ "insecure-registries":["jenkins.semperti.local:8089", "jenkins.semperti.local:8088"] }

```

Se pueba con un nexus local siguiendo la guia
> http://www.javamonamour.org/2018/03/using-nexus-3-as-docker-registry-proxy.html
y se puede hacer el login correctamente.


#### 6.1) Subir la imagen de docker a docker hub

Pasos:
* Loguearse
* Tageamos con latest o un numero la imagen a subir (171088848ff9)
* Hacer el push a mi docker hub

```sh
docker login 
docker tag 171088848ff9 sebastianmascolo/centos0:latest
docker push sebastianmascolo/centos0:latest
```

#### Para correr el docker ejecutar el siguiente comando:
```sh
docker run --rm -it  -p 8080:8080 sebastianmascolo/centos0:latest
```

#### 6.2) Taggeo de imagenes
Para el tag de imagenes basta con ingresar el numero de la version luego de los dos puntos.

```sh
docker tag 171088848ff9 sebastianmascolo/centos0:1.0
```

