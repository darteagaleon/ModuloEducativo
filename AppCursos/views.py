from django.shortcuts import render,redirect
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.views.generic.edit import FormView
from .models import *
from django.urls import reverse_lazy
from django.contrib import messages 
from datetime import datetime, timedelta
from django.shortcuts import render
from django.http import HttpResponse
from .forms import crear_cursos,CursosForm,EvaluacionForm,PreguntasForm,ModulosForm,ClasesForm
from .models import Evaluaciones,Modulos

from django.contrib import messages

# Create your views here.

#vista para crear los cursos
class Crear_cursos (CreateView):
    model = Cursos
    form_class = crear_cursos
    template_name = 'Cursos/crear_cursos.html'
    success_url = reverse_lazy('appcursos:crear_cursos')

#Metodo para guardar los datos del formulario, se sobreescribe el metodo post
    def post(self, request, *args, **kwargs):
    #validando el estado del curso
        estatus=request.POST.get('estado_curso')
        #validando si el estado del curso esta activo o inactivo
        if estatus == 'on':
            estatus = True
        else:
            estatus = False
        #guardando los datos del formulario
        curso= Cursos.objects.create(nombre_curso=request.POST['nombre_curso'],descripcion_curso=request.POST['descripcion_curso'],estado_curso=estatus,duracion_curso=request.POST['duracion_curso'],iconoCurso=request.FILES['iconoCurso'])
        #super para llamar al metodo post de la clase padre
        return super().post(request, *args, **kwargs)


#vista para crear los modulos
# #vista para crear los modulos
# class Crear_modulos (CreateView):
#     model = Modulos
#     fields = ['nombre_curso','nombre_modulo', 'estado_modulo']
#     template_name = 'crear_modulos.html'
#     success_url = '/modulos'

# #vista para crear las clases
# class Crear_clases (CreateView):
#     model = Clases
#     fields = ['nombre_modulo','nombre_clase', 'duracion_clase','contenido_clase','descripcion_clase','estado_clase']
#     template_name = 'crear_clases.html'
#     success_url = '/clases'

# #vista para crear las clases
# class Crear_clases (CreateView):
#     model = Clases
#     fields = ['nombre_modulo','nombre_clase', 'duracion_clase','contenido_clase','descripcion_clase','estado_clase']
#     template_name = 'crear_clases.html'
#     success_url = '/clases'




def Listar_cursos(request):
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'Cursos/listar_cursos.html',context)



#vista para fitrar cursos 
def filtrar(request):
    filtro = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    context = {'filtro':filtro}
    return render(request, 'Cursos/listar_cursos.html', {'listarc': filtro})


#vista para editar un cursito

def update(request, curso_id):
    editar = Cursos.objects.get(id=curso_id)
    if request.method == "POST":
        form = CursosForm(request.POST, instance=editar)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect("listar_cursos")
    else:
        form = CursosForm(instance=editar)
    
    context = {"form": form}
    return render(request, 'Cursos/editar_cursos.html', context)


def crear_clases(request):
    if request.method=="POST" :
        form = ClasesForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('crear_clases')
    else:
        form = ClasesForm
    return render(request,'Clases/crear_clases.html',{'form':form})
            

def crear_modulos(request):
    if request.method=='POST' :
        form = ModulosForm (request.POST )
        if form.is_valid ():
            form.save ()
            return redirect ('crear_modulos')
    else:
        form = ModulosForm
    return render(request,'Modulos/crear_modulos.html',{'form':form})

# Vista para ver y realizar las evaluaciones como Usuario

#     return render(request, 'Evaluaciones/crear_evaluaciones.html')

def crear_evaluacion(request):
    if request.method == 'POST':
        form = EvaluacionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('crear_evaluacion')  
    else:
        form = EvaluacionForm()

    return render(request, 'Evaluaciones/crear_evaluacion.html', {'form': form})
def crear_pregunta(request):
    if request.method == 'POST':
        form = PreguntasForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('crear_preguntas')
    else:
        form = PreguntasForm()

    return render(request, 'Evaluaciones/crear_pregunta.html', {'form': form})

# Vista para ver y realizar las evaluaciones como Usuario
def ver_evaluaciones(request, modulo_id):

    evaluaciones = Evaluaciones.objects.filter(nombre_modulo=modulo_id)
    
    if request.method == 'POST':

        evaluaciones.finalizada = True
        evaluaciones.save()
        return redirect('ver_evaluaciones')

    context = {'evaluaciones':evaluaciones}
    return render(request, 'Evaluaciones/ver_evaluaciones.html', {'evaluaciones': evaluaciones})


def crear_evaluacion(request):
    if request.method == 'POST':
        form = EvaluacionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('crear_evaluacion')  
    else:
        form = EvaluacionForm()

    return render(request, 'Evaluaciones/crear_evaluacion.html', {'form': form})
def gestion_evaluacion(request):
    return render(request, 'Evaluaciones/evaluacion.html')

def ver_evaluacion(request):
    evaluaciones = Evaluaciones.objects.all()
    return render(request, 'Evaluaciones/visualizar_evaluacion.html', {'evaluaciones': evaluaciones})
def Listar_evaluaciones(request):
    listare = Evaluaciones.objects.all()
    context = {'listare':listare}
    return render(request,'Evaluaciones/listar_evaluaciones.html',context)
def All_Modulos(request):
    modulos = Modulos.objects.all()
    return render(request, 'Modulos/modulos.html', {'modulos': modulos})
def Listar_modulos(request):
    listarm = Modulos.objects.all()
    context = {'listarm':listarm}
    return render(request,'Modulos/listar_modulos.html',context)
def All_cursos(request):
    cursos = Cursos.objects.all()
    return render(request, 'Cursos/cursos.html', {'cursos': cursos})
def All_clases(request):
    clases = Clases.objects.all()
    return render(request, 'Clases/clases.html', {'clases': clases})
def Listar_clases(request):
    listarclases = Clases.objects.all()
    context = {'listarclases':listarclases}
    return render(request,'Clases/listar_clases.html',context)

#  apartado se hace el llamado a detalle de cada Evaluacion
def ver_evaluacion_detalle(request, evaluacion_id):
    evaluacion = Evaluaciones.objects.get(pk=evaluacion_id)
    return render(request, 'Evaluaciones/ver_evaluacion_detalle.html', {'evaluacion': evaluacion})
