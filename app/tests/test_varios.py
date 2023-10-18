import pytest

from app.models.models import Pais

def test_inicial():
    assert 1 == 1

def test_create_pais():
    nombre = "China"
    pais = Pais(nombre=nombre)
    assert pais.nombre == nombre

    