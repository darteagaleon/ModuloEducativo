from django.shortcuts import render
from django.generic import ListView, CreateView, UpdateView, DeleteView
from .models import *
# Create your views here.

#vista para crear los cursos
class Crear_cursos (CreateView):
    model = Cursos
    fields = ['id', 'nombre_curso', 'descripcion', 'estado_curso', 'duracion_curso', 'Curso_Usuario']
    template_name = 'crear_cursos.html'
    success_url = '/cursos'


