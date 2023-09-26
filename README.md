# Integral Python-Flask-GIT-Docker.
Trabajo conjunto- PPI Python y PPI Dvops ITEC 2023.
## Tabla de contenidos
- [Entorno Virtual e Inicio](#entorno-Virtual-e-Inicio)

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