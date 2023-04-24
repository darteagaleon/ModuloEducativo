from django.shortcuts import render
from django.generic import ListView, CreateView, UpdateView, DeleteView
from .models import *
# Create your views here.

#vista para crear los cursos
class Crear_cursos (CreateView):
    model = Cursos
    fields = ['nombre_curso', 'descripcion', 'estado_curso', 'duracion_curso', ]
    template_name = 'crear_cursos.html'
    success_url = '/cursos'

#vista para crear los modulos
class Crear_modulos (CreateView):
    model = Modulos
    fields = ['nombre_curso','nombre_modulo', 'estado_modulo']
    template_name = 'crear_modulos.html'
    success_url = '/modulos'

#vista para crear las clases
class Crear_clases (CreateView):
    model = Clases
    fields = ['nombre_modulo','nombre_clase', 'duracion_clase','contenido_clase','descripcion_clase','estado_clase']
    template_name = 'crear_clases.html'
    success_url = '/clases'

#vista para ver los cursos
class Ver_cursos (ListView):
    model = Cursos
    template_name = 'ver_cursos.html'


    