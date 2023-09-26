# Integral Python-Flask-GIT-Docker.
Trabajo conjunto- PPI Python y PPI Dvops ITEC 2023.
## Tabla de contenidos
- [Entorno Virtual e Inicio](#entorno-Virtual-e-Inicio)
- [Docker](#docker)


## *Entorno Virtual e Inicio*
***
**Paso 1.**

Activar XAMPP.

```
XAMPP_START
```

**Paso 2.**

Crear entorno virtual de python en Linux.

```
python3 -m venv venv
```

El segundo *venv* es el nombre del entorno (Se puede poner otro).

**Paso 3.**

Activar entorno virtual.

```
source venv/bin/activate
```

**Paso 4.**

Dentro del entorno, levantar el archivo requirements.txt que contiene las dependencias necesarias para poder trabajar.

```
pip install -r requirements.txt
```

**Paso 5.**

Ejecutar flask.

```
flask run --reload
```

## *Docker*
***

### *Dockerfile*

**Paso 1.**

Crear imagen
```
docker build --tag (nombre) .
```
Importante que despues del nombre haya un espacio y un punto.

**Paso 2.**

Correr la imagen y levantar el contenedor
```
docker run -d -p 5005:5005 (nombre repositorio)
```
5005 es el puerto que envia y el puerto que recibe. Va a variar de acuerdo a como arme el dockerfile.

### *Docker-compose*

**Paso 1.**

Crear imagen
```
docker-compose build
```
Toma todas las instrucciones de docker-compose

**Paso 2.**

Correr la imagen y levantar el contenedor
```
docker-compose up -d
```
### *Comandos utiles*

**Ver contenedores abiertos**
```
docker ps
```


**Ver contenedores frenados**
```
docker ps -a
```

**Ver imagenes**
```
docker images
```
**Detener contenedor**
```
docker container stop (nro container)
```
**Detener contenedor en compose**
```
docker-compose stop
```

**Eliminar contenedor**
```
docker container rm (nro container)
```
**Ingresar a contenedor y manejarlo desde la shell**
```
docker exec -it (nro container) sh
```
