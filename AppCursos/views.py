from django.shortcuts import render,redirect, get_object_or_404
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.views.generic.edit import FormView
#! importo desde appusuarios el modelo de profile para usar esos datos--------------------- keydmon - - -- -inicio
from AppUsuarios.models import Profile
#importo la libreria de los utils
from .utils import render_to_pdf
#importo el utilitaries de fecha y hora
from django.utils import timezone
#? importaciones para usar link_callback
from django.contrib.staticfiles import finders
from io import BytesIO
from django.conf import settings
from xhtml2pdf import pisa
#?finalizan importaciones para el link_callback
#!------------------------------------------------------------------------------------ keydmon- - -- - fin

#? importaciones para usar la funcion de enviar correos electronicos de django - - - -  inico
from django.core.mail import send_mail
from decouple import config
# se ocupa tambien los messages de contrib pero esta ya se importo abajo
#? - - - - - - -  -- - - - - - - - -  - - - - - - - -- -  --  - - - - - - --  - --  keydmon - - - fin
from .models import *
from django.urls import reverse_lazy
from datetime import datetime, timedelta
from django.http import HttpResponse
from .forms import *
from django.views import View
from django.contrib.auth import logout, authenticate
from django.contrib.auth import login as auth_login  #esta linea de codigo llama a login pero poniendole un alias alternativo llamado "auth_login"
from django.contrib import messages
from django.contrib.auth.models import Group
from AppUsuarios.views import *
from django.contrib.auth.decorators import user_passes_test  #para la validacion de accesos segun grupo


#importacion para el xhtml2pdf

from django.views.generic import View

# Create your views here.
#****************************************************
#LOGIN
#****************************************************
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
# Vista de inicio (home) protegida por autenticación ademas de la validacion de usuarios y admiistrativos

def home(request):
    context = {}
    group_name = request.group_name
    context['group_name'] = group_name
    return render(request, 'home.html', context)


# Vista logout
def exit(request):
    logout(request)
    return redirect('home')


#****************************
#vista para validar rutas, segun grupo de usuario
def valida_administrativos(user):
    return user.groups.filter(name='administrativos').exists()


def acceso_denegado(request):
    return render(request, 'Gestion_g/acceso_denegado.html')

#vista para validar rutas, segun grupo de usuario
# def valida_usuarios(user):
#     return user.groups.filter(name='usuarios').exists()


# ******************************
# GESTION GENERAL
# ******************************

def Gestion_general(request):
    return render(request, 'Gestion_g/gestion_general.html')

#****************************************************
#CURSOS
#****************************************************

#CREAR
class Crear_cursos(CreateView):
    model = Cursos
    form_class = crear_cursos
    template_name = 'Cursos/crear_cursos.html'
    
    success_url=reverse_lazy('listar_cursos')

#LISTAR
def Listar_cursos(request):
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'Cursos/listar_cursos.html',context)

#FILTRAR
def filtrar(request):
    filtro = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    
    context = {'filtro':filtro}
    return render(request, 'Cursos/listar_cursos.html', {'listarc': filtro})

def All_cursos(request):
    cursos = Cursos.objects.all()
    return render(request, 'Cursos/cursos.html', {'cursos': cursos})

#VER
def ver_cursos(request,curso_id):
    v_cursos = get_object_or_404(Cursos, id=curso_id)
    return render(request, 'Cursos/Visualizacion/ver_cursos.html', {'v_cursos': v_cursos})


#EDITAR
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

#****************************************************
#MODULOS
#****************************************************
# CREAR
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

# LISTAR
def Listar_modulos(request):
    listarm = Modulos.objects.all()
    context = {'listarm':listarm}
    return render(request,'Modulos/listar_modulos.html',context)

# FILTRAR
def filtrar_modulos(request):
    filtro_m = Modulos.objects.filter(nombre_modulo__contains=request.GET.get('search',''))
    
    context = {'filtro_m':filtro_m}
    return render(request, 'Modulos/listar_modulos.html', {'listarm': filtro_m})

def All_Modulos(request):
    modulos = Modulos.objects.all()
    return render(request, 'Modulos/modulos.html', {'modulos': modulos})

#VER
def ver_modulos(request,modulo_id):
    v_modulos = get_object_or_404(Modulos, id=modulo_id)
    return render(request, 'Modulos/Visualizacion/ver_modulos.html', {'v_modulos': v_modulos})

#EDITAR
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


#****************************************************
#CLASES
#****************************************************
# CREAR
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
            

# LISTAR
def Listar_clases(request):
    listarclases = Clases.objects.all()
    context = {'listarclases':listarclases}
    return render(request,'Clases/listar_clases.html',context)

# FILTRAR
def filtrar_clases(request):
    filtro_c = Clases.objects.filter(nombre_clase__contains=request.GET.get('search',''))
    
    context = {'filtro_c':filtro_c}
    return render(request, 'Clases/listar_clases.html', {'listarclases': filtro_c})

def All_clases(request):
    clases = Clases.objects.all()
    return render(request, 'Clases/clases.html', {'clases': clases})

#VER
def ver_clases(request, clase_id):
    v_clases = get_object_or_404(Clases, id=clase_id)
    return render(request, 'Clases/Visualizacion/ver_clases.html', {'v_clases': v_clases})

#EDITAR
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

#****************************************************
#EVALUACIONES
#****************************************************
def gestion_evaluacion(request):
    return render(request, 'Evaluaciones/evaluacion.html')
    
# CREAR
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
    
# LISTAR
def Listar_evaluaciones(request):
    listare = Evaluaciones.objects.all()
    context = {'listare':listare}
    return render(request,'Evaluaciones/listar_evaluaciones.html',context)

# FILTRAR
def filtrar_evaluaciones(request):
    filtro_e = Evaluaciones.objects.filter(nombre_evaluacion__contains=request.GET.get('search',''))
    
    context = {'filtro_e':filtro_e}
    return render(request, 'Evaluaciones/listar_evaluaciones.html', {'listare': filtro_e})
    
#VER
def ver_evaluacion(request):
    evaluaciones = Evaluaciones.objects.all()
    return render(request, 'Evaluaciones/visualizar_evaluacion.html', {'evaluaciones': evaluaciones})

def ver_evaluacion_detalle(request, evaluacion_id):
    evaluacion = Evaluaciones.objects.get(pk=evaluacion_id)
    return render(request, 'Evaluaciones/Visualizacion/ver_evaluacion_detalle.html', {'evaluacion': evaluacion})

#EDITAR
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


#****************************************************
#PREGUNTAS
#****************************************************
# CREAR
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

# LISTAR

# FILTRAR
def filtrar_preguntas(request):
    filtro_p = Preguntas.objects.filter(nombre_pregunta__contains=request.GET.get('search',''))
    
    context = {'filtro_p':filtro_p}
    return render(request, 'Evaluaciones/listar_preguntas.html', {'listar_p': filtro_p})

#VER
def ver_preguntas_detalle(request,evaluacion_id):
    evaluacion = get_object_or_404(Evaluaciones, pk=evaluacion_id)
    preguntas = Preguntas.objects.filter(id_evaluacion=evaluacion).order_by('id')
    return render(request, 'Evaluaciones/Visualizacion/ver_preguntas_detalle.html', {'evaluacion': evaluacion, 'preguntas': preguntas})

#EDITAR
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

#****************************************************
#MATERIAL DE APOYO
#****************************************************

def gestion_MaterialApoyo(request):
    return render(request, 'material_apoyo/MaterialApoyo.html')

# CREAR
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

# LISTAR
def material_list(request, curso_id):
    curso = get_object_or_404(Cursos, pk=curso_id)
    materiales = MaterialApoyo.objects.filter(id_curso=curso)
    return render(request, 'material_apoyo/material_list.html', {'materiales': materiales, 'curso': curso})

def Listar_cursos_material(request): # type: ignore
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'material_apoyo/cursos_material.html',context)

# FILTRAR
def filtrar_material(request):
    filtro_m = MaterialApoyo.objects.filter(NombreMaterialApoyo__contains=request.GET.get('search',''))
    
    context = {'filtro_m':filtro_m}
    return render(request, 'material_apoyo/material_list.html', {'materiales': filtro_m})
    
def filtrar_cursos_material(request):
    filtrocm = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    
    context = {'filtrocm':filtrocm}
    return render(request, 'material_apoyo/cursos_material.html', {'listarc': filtrocm})

#VER

#EDITAR
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

#!------------------------------------------ vistas para usar xhtml2pdf  ------------------------ keydmon
#vista basada en clase login_required
class generar_certificacion(View):
    #? metodo que renderiza el template y lo vuelva pdf
    def get(self,request,*args,**Kwargs):
        template_certificado= "Certificados/certificado.html"
        try:
            # Obtén el perfil de usuario
            profile = Profile.objects.get(user=request.user)
            nombre_certificado = f"{profile.user.username} {profile.apellido}"
            # Lógica para generar los certificados usando nombre_certificado
            pdf = render_to_pdf(template_certificado, {
                'nombre_certificado': nombre_certificado,
                'fecha_generacion': timezone.now().strftime("%Y-%m-%d %H:%M:%S")
            })

            if pdf:
                response = HttpResponse(pdf, content_type='application/pdf')
                response['Content-Disposition'] = 'inline; filename="certificado.pdf"'
                return response
            return HttpResponse("No se pudo generar el certificado.")       
        except Profile.DoesNotExist:
            return HttpResponse("El perfil de usuario no se encontró o no está vinculado al usuario actual.")


#! -------------------------------- vista para generar correo electronido --------------------------------- keydmon

def certificados_notificacion_gmail(request):
    return render(request, 'certificados/notificacion_gmail.html',{})

def notificacion_gmail(request):
    # Obtén el perfil del usuario logueado
    profile = Profile.objects.get(user=request.user)

    #? Construye el mensaje con los datos del usuario y del curso -----------------------------------------
    mensaje = (
        f"El usuario {profile.user.username} {profile.apellido} ha culminado satisfactoriamente el curso XXX "
        f"de xxxxx horas. Se encuentra actualmente disponible la certificación para descargar y anexar  la hoja de vida del colaborador. "
        
        f" Cordialmente gestor de cursos de Cyres educativco "
    )

    #? Envia el correo ---------------------------------------------------------
    send_mail(

        f"{profile.user.username} {profile.apellido} - certificación del curso XXX",  # Asunto
        mensaje,  # Mensaje
        settings.EMAIL_HOST_USER,  # Correo del que se remitente el mensaje
        [settings.DEFAULT_FROM_EMAIL],  # Lista de correos destinatarios (en este caso el cmismo correo que envia)
        fail_silently=False,  # No silenciar errores si falla el envío
    )

    # Mensaje de éxito con contrib.messages
    messages.success(request, 'El correo se ha enviado con éxito.')

    # Redirecciona a alguna vista o a donde sea necesario
    return redirect('generar_notificacion')

    #! - -------------- fin de la vista para envviar correos -  keydmon
