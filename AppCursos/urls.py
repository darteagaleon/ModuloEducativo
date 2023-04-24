from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
     path('crear_cursos/', views.Crear_cursos,name='crear_cursos'),
]
     