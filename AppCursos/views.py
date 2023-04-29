from django.shortcuts import render
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.views.generic.edit import FormView
from .models import *
from django.urls import reverse_lazy
from .forms import crear_cursos
# Create your views here.

#vista para crear los cursos
class Crear_cursos (CreateView):
    model = Cursos
    form_class = crear_cursos
    template_name = 'Cursos/crear_cursos.html'
    success_url = reverse_lazy('appcursos:crear_cursos')

    def post(self, request, *args, **kwargs):
        # image=request.FILES.get('iconoCurso')
        estatus=request.POST.get('estado_curso')
        if estatus == 'on':
            estatus = True
        else:
            estatus = False
        curso= Cursos.objects.create(nombre_curso=request.POST['nombre_curso'],descripcion_curso=request.POST['descripcion_curso'],estado_curso=estatus,duracion_curso=request.POST['duracion_curso'],iconoCurso=request.FILES['iconoCurso'])
        
        return super().post(request, *args, **kwargs)


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

class Listar_cursos (ListView):
    model = Cursos
    template_name = 'listar_cursos.html'




    