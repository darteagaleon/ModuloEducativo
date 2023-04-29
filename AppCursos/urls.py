from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
     path("crear_curso/", views.Crear_cursos.as_view(), name="crear_curso"),
]