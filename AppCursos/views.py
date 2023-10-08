from django.shortcuts import render,redirect, get_object_or_404
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.views.generic.edit import FormView
from .models import *
from django.urls import reverse_lazy
from django.contrib import messages 
from datetime import datetime, timedelta
from django.shortcuts import render
from django.http import HttpResponse
from .forms import crear_cursos,CursosForm,EvaluacionForm,PreguntasForm,ModulosForm,ClasesForm, MaterialApoyoForm
from .models import Evaluaciones,Modulos, MaterialApoyo,Cursos
from .forms import ClasesForm  
from django.views import View
#Para el tema de las imagenes del Curso
from PIL import Image
# Create your views here.
from django.contrib.auth import logout, authenticate
from django.contrib.auth import login as auth_login  #esta linea de codigo llama a login pero poniendole un alias alternativo llamado "auth_login"


# Vista de inicio de sesión
def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        # se agrega una autenticación para poder ingresar al sitio
        if user is not None:
            # si la autenticación resulta exitosa, se redirige a la pagina de home
            auth_login(request, user) 
            return redirect('home')
        else:
            # Si la autenticación falla, muestra un mensaje de error o redirige a la página de login, para poder ingresar.
            return render(request, 'registration/login.html')   
    else:
        return render(request, 'registration/login.html')
# Vista de inicio (home) protegida por autenticación
def home(request):
    return render(request, 'home.html')
def All_cursos(request):
    cursos = Cursos.objects.all()
    return render(request, 'Cursos/cursos.html', {'cursos': cursos})


def All_clases(request):
    clases = Clases.objects.all()
    return render(request, 'Clases/clases.html', {'clases': clases})


def All_Modulos(request):
    modulos = Modulos.objects.all()
    return render(request, 'Modulos/modulos.html', {'modulos': modulos})


def gestion_evaluacion(request):
    return render(request, 'Evaluaciones/evaluacion.html')

#Vista de material de apoyo

def Listar_cursos_material(request): # type: ignore
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'material_apoyo/cursos_material.html',context)

# funcion para hacer logout

def exit(request):
    logout(request)
    return redirect('home')

# 

#Vista para crear los cursos
class Crear_cursos(CreateView):
    model = Cursos
    form_class = crear_cursos
    template_name = 'Cursos/crear_cursos.html'
    
    success_url=reverse_lazy('listar_cursos')


# 
def Listar_cursos(request):
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'Cursos/listar_cursos.html',context)


#vista para fitrar cursos 

def filtrar(request):
    filtro = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    
    context = {'filtro':filtro}
    return render(request, 'Cursos/listar_cursos.html', {'listarc': filtro})

# vista para filtrar modulos

def filtrar_modulos(request):
    filtro_m = Modulos.objects.filter(nombre_modulo__contains=request.GET.get('search',''))
    
    context = {'filtro_m':filtro_m}
    return render(request, 'Modulos/listar_modulos.html', {'listarm': filtro_m})

# vista para filtrar clases

def filtrar_clases(request):
    filtro_c = Clases.objects.filter(nombre_clase__contains=request.GET.get('search',''))
    
    context = {'filtro_c':filtro_c}
    return render(request, 'Clases/listar_clases.html', {'listarclases': filtro_c})

# vista para filtrar evaluaciones 

def filtrar_evaluaciones(request):
    filtro_e = Evaluaciones.objects.filter(nombre_evaluacion__contains=request.GET.get('search',''))
    
    context = {'filtro_e':filtro_e}
    return render(request, 'Evaluaciones/listar_evaluaciones.html', {'listare': filtro_e})

# vista para filtrar preguntas

def filtrar_preguntas(request):
    filtro_p = Preguntas.objects.filter(nombre_pregunta__contains=request.GET.get('search',''))
    
    context = {'filtro_p':filtro_p}
    return render(request, 'Evaluaciones/listar_preguntas.html', {'listar_p': filtro_p})

#vista para fitrar cursos de material de apoyo

def filtrar_cursos_material(request):
    filtrocm = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    
    context = {'filtrocm':filtrocm}
    return render(request, 'material_apoyo/cursos_material.html', {'listarc': filtrocm})



# vista para filtrar material de apoyo

def filtrar_material(request):
    filtro_m = MaterialApoyo.objects.filter(NombreMaterialApoyo__contains=request.GET.get('search',''))
    
    context = {'filtro_m':filtro_m}
    return render(request, 'material_apoyo/material_list.html', {'materiales': filtro_m})
#vista para editar un cursito


def crear_clases(request):
    if request.method=="POST" :
        form = ClasesForm(request.POST)
        if form.is_valid():
            nueva_classe=form.save()
            messages.success(request, 'Guardado con éxito')

            return redirect('ver_clases',clase_id=nueva_classe.id)
    else:
        form = ClasesForm()
    return render(request,'Clases/crear_clases.html',{'form':form})
            

def crear_modulos(request):
    if request.method == 'POST':
        form = ModulosForm(request.POST)
        if form.is_valid():
            nuevo_modulo = form.save()  # Guarda el nuevo módulo y obtén el objeto creado
            messages.success(request, 'Guardado con éxito')
            # Redirige a la vista "ver_modulos" con el "modulo_id" del módulo creado
            return redirect('ver_modulos', modulo_id=nuevo_modulo.id)
    else:
        form = ModulosForm()

    return render(request, 'Modulos/crear_modulos.html', {'form': form})


def crear_pregunta(request):
    if request.method == 'POST':
        form = PreguntasForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Guardado con éxito')
            return redirect('ver_preguntas')
    else:
        form = PreguntasForm()

    return render(request, 'Evaluaciones/crear_pregunta.html', {'form': form})


def crear_evaluacion(request):
    if request.method == 'POST':
        form = EvaluacionForm(request.POST)
        if form.is_valid():
            nueva_evaluacion=form.save()
            messages.success(request, 'Guardado con éxito')
            return redirect('ver_evaluacion_detalle', evaluacion_id=nueva_evaluacion.id)

    else:
        form = EvaluacionForm()

    return render(request, 'Evaluaciones/crear_evaluacion.html', {'form': form})

# Vista para ver y realizar las evaluaciones como Usuario

def ver_evaluaciones(request, modulo_id):

    evaluaciones = Evaluaciones.objects.filter(nombre_modulo=modulo_id)
    
    if request.method == 'POST':

        evaluaciones.finalizada = True # type: ignore
        evaluaciones.save() # type: ignore
        return redirect('ver_evaluaciones')

    context = {'evaluaciones':evaluaciones}
    return render(request, 'Evaluaciones/ver_evaluaciones.html', {'evaluaciones': evaluaciones})


def ver_evaluacion(request):
    evaluaciones = Evaluaciones.objects.all()
    return render(request, 'Evaluaciones/visualizar_evaluacion.html', {'evaluaciones': evaluaciones})




def Listar_evaluaciones(request):
    listare = Evaluaciones.objects.all()
    context = {'listare':listare}
    return render(request,'Evaluaciones/listar_evaluaciones.html',context)


def Listar_clases(request):
    listarclases = Clases.objects.all()
    context = {'listarclases':listarclases}
    return render(request,'Clases/listar_clases.html',context)



def Listar_modulos(request):
    listarm = Modulos.objects.all()
    context = {'listarm':listarm}
    return render(request,'Modulos/listar_modulos.html',context)



#  apartado se hace el llamado a detalle de cada Evaluacion

def ver_evaluacion_detalle(request, evaluacion_id):
    evaluacion = Evaluaciones.objects.get(pk=evaluacion_id)
    return render(request, 'Evaluaciones/Visualizacion/ver_evaluacion_detalle.html', {'evaluacion': evaluacion})


def ver_preguntas_detalle(request,evaluacion_id):
    evaluacion = get_object_or_404(Evaluaciones, pk=evaluacion_id)
    preguntas = Preguntas.objects.filter(id_evaluacion=evaluacion).order_by('id')
    return render(request, 'Evaluaciones/Visualizacion/ver_preguntas_detalle.html', {'evaluacion': evaluacion, 'preguntas': preguntas})



def editar_evaluaciones(request, evaluacion_id):
    editar_e = Evaluaciones.objects.get(id=evaluacion_id)
    if request.method == "POST":
        form = EvaluacionForm(request.POST, instance=editar_e)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect("ver_evaluacion_detalle", evaluacion_id=evaluacion_id)
    else:
        form = EvaluacionForm(instance=editar_e)
    
    context = {"form": form,"evaluacion_id":evaluacion_id}
    return render(request, 'Evaluaciones/editar_evaluacion.html', context)


def editar_preguntas(request, pregunta_id):
    editar_p = Preguntas.objects.get(id=pregunta_id)
    if request.method == "POST":
        form = PreguntasForm(request.POST, instance=editar_p)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect("ver_preguntas_detalle", evaluacion_id=editar_p.id_evaluacion.id)
    else:
        form = PreguntasForm(instance=editar_p)
    context = {"form": form,"pregunta_id":pregunta_id}
    return render(request, 'Evaluaciones/editar_pregunta.html', context)


def editar_modulos(request, modulo_id):
    editar_m = get_object_or_404(Modulos, id=modulo_id)
    if request.method == "POST":
        form = ModulosForm(request.POST, instance=editar_m)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect("ver_modulos" ,modulo_id=modulo_id )
    else:

        form = ModulosForm(instance=editar_m)
    context = {"form": form, "modulo_id":modulo_id}
    return render(request, 'Modulos/Visualizacion/editar_modulos.html', context)


def ver_clases(request, clase_id):
    v_clases = get_object_or_404(Clases, id=clase_id)
    return render(request, 'Clases/Visualizacion/ver_clases.html', {'v_clases': v_clases})


def ver_modulos(request,modulo_id):
    v_modulos = get_object_or_404(Modulos, id=modulo_id)
    return render(request, 'Modulos/Visualizacion/ver_modulos.html', {'v_modulos': v_modulos})


def editar_clases(request, clase_id):
    editar_c = get_object_or_404(Clases, id=clase_id)
    if request.method == "POST":
        form = ClasesForm(request.POST, instance=editar_c)
        if form.is_valid():
            form.save()
            messages.success(request, 'Guardado con éxito')
            return redirect("ver_clases",clase_id=clase_id)

    else:
        form = ClasesForm(instance=editar_c)
    context = {"form": form,"clase_id":clase_id}
    return render(request, 'Clases/Visualizacion/editar_clases.html', context)


def ver_cursos(request,curso_id):
    v_cursos = get_object_or_404(Cursos, id=curso_id)
    return render(request, 'Cursos/Visualizacion/ver_cursos.html', {'v_cursos': v_cursos})


def editar_cursos(request, curso_id):
    editar_c = get_object_or_404(Cursos, id=curso_id)

    if request.method == "POST":
        form = CursosForm(request.POST, request.FILES, instance=editar_c)
        if form.is_valid():
            form.save()
            messages.success(request, 'Guardado con éxito')
            return redirect('ver_cursos', curso_id=curso_id)  # Redirige después de guardar los cambios
        
    else:
        form = CursosForm(instance=editar_c)

    context = {"form": form, "curso_id": curso_id}

    icono_url = editar_c.iconoCurso.url if editar_c.iconoCurso else None
    context["icono_url"] = icono_url

    return render(request, 'Cursos/Visualizacion/editar_cursos.html', context)

#********************
# MATERIAL DE APOYO *
#********************

def gestion_MaterialApoyo(request):
    return render(request, 'material_apoyo/MaterialApoyo.html')


#Vista de listado de cursos del material de apoyo
def Listar_cursos_material(request):
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'material_apoyo/cursos_material.html',context)

#listar material
    #listar material


#Listar material de apoyo
def material_list(request, curso_id):
    curso = get_object_or_404(Cursos, pk=curso_id)
    materiales = MaterialApoyo.objects.filter(id_curso=curso)
    return render(request, 'material_apoyo/material_list.html', {'materiales': materiales, 'curso': curso})


#agregar material de apoyo
def crear_material_apoyo(request):
    if request.method == 'POST':
        form = MaterialApoyoForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Guardado con éxito')
            return redirect('Listar_cursos_material') 
    else:
        form = MaterialApoyoForm()


    return render(request, 'material_apoyo/crear_material.html', {'form': form})

#editar material de apoyo
def editar_material_apoyo(request, pk):
    editar_material = get_object_or_404(MaterialApoyo, pk=pk)
    curso_id = editar_material.id_curso.id # Obtener el curso_id del material editado (El ultimo id es para traer el valor numero del id)
    
    if request.method == "POST":
        form = MaterialApoyoForm(request.POST, instance=editar_material)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect('material_list', curso_id=curso_id)
        
    else:
        form = MaterialApoyoForm(instance=editar_material)
    context = {"form": form,"curso_id":curso_id}
    
    return render(request, 'material_apoyo/editar_material.html',context)

def material_list(request, curso_id):
    curso = get_object_or_404(Cursos, pk=curso_id)
    materiales = MaterialApoyo.objects.filter(id_curso=curso)
    return render(request, 'material_apoyo/material_list.html', {'materiales': materiales, 'curso': curso})


