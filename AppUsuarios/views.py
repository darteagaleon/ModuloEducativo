from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse_lazy
from django.contrib.auth.models import User
from AppCursos.models import *
from AppUsuarios.models import *
from .models import *
from django.http import JsonResponse
from django.http import HttpResponseNotFound
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .forms import CrearUsuariosForm, CargoForm 
from django.contrib import messages
from django.contrib.auth.forms import UserCreationForm #Para crear usuarios
from django.contrib.auth import get_user_model
from django.db.models import Q #permite realizar consultas más complejas
import json
from django.core.serializers import serialize


# Create your views here.
# vista para la selecion de curso en el panel de usuario
def Cursos_Usuarios(request):
        #Consultar listado de Cursos para el Usuario y sus Cargos
        listaCursos= Cursos.objects.filter(estado_curso=True).values('nombre_curso','id','iconoCurso')
        #Obtener el id del usuario
        user_id=request.user.id
        listaUsuarioCargo=Usuario_Cargo.objects.filter(id_usuario=user_id).values('id_cargo')
            
        #Ensamblar el contexto para el template
        listacursos = Cursos.objects.filter(id_cargo__in=listaUsuarioCargo, estado_curso=True)

        #Retornar el template con el contexto
        context = {
            'listacursos': listacursos,
        }

        return render (request,'Templates_Usuarios/Cursos/Cursos_Usuarios.html', context)

#Vista para listar modulos,clases y evaluaciones de un curso, asi como crear los registros de tabla Clase_Usuario
def Modulos_Usuarios(request): 
    regUsuario=request.user
    if request.method == "POST":
        #Leer registro del Curso seleccionado
        pk_curso=request.POST['curso']
        regCurso=Cursos.objects.get(id=pk_curso)
        #Obtener fk del Cargo asociado
        fk_cargo=regCurso.id_cargo
        #Obtener pk de la tabla Usuario_Cargo
        regUsuarioCargo=Usuario_Cargo.objects.get(id_cargo=fk_cargo, id_usuario=regUsuario)
        #Obtener lista de los Modulos del Curso
        listaModulos=Modulos.objects.filter(id_curso=regCurso)
        #Consular si los modulos ya existen en la tabla Clase_Usuario
        existe=Clase_Usuario.objects.filter(id_usuario_cargo=regUsuarioCargo, id_modulo__in=listaModulos).exists()
        if not existe:
            #Si no existen, insertarlos
            listaClases=Clases.objects.filter(id_modulo__in=listaModulos)
            #Generar datos para insertar en la tabla Clase_Usuario
            listaReg=[]
            for clase in listaClases:
                listaReg.append(Clase_Usuario(id_usuario_cargo=regUsuarioCargo, id_modulo=clase.id_modulo, id_clase=clase, visto=False))
            
            #Insertar registros en la tabla Clase_Usuario (Los inserta en la base de datos) )
            Clase_Usuario.objects.bulk_create(listaReg) #Bulk_create es para insertar varios registros a la vez

        #Consultar las clases del Curso
        #Listar los id de las clases del Curso
        listaClasesUsuario=Clase_Usuario.objects.filter(id_usuario_cargo=regUsuarioCargo, id_modulo__in=listaModulos).values('id_clase', 'visto')
        listaPkClases=listaClasesUsuario.values_list('id_clase' ,flat=True)
        listaClases = Clases.objects.filter(id__in=listaPkClases).order_by('id_modulo', 'orden_clase')
        listafilas=[]
        #Recorrer la lista de clases para ensamblar el contexto
        nuevoModulo='' #Para saber cuando el registro es una clase o es un modulo
        visto=True #Para saber si la clase ya fue vista
        ultima_clase=0 #Para saber si es la ultima clase del modulo
        for clase in listaClases:
            reg = {}
            # Si el modulo es diferente al anterior, agregarlo a la lista
            if nuevoModulo != clase.id_modulo.nombre_modulo:
                # Controlar Evaluacion
                if nuevoModulo != '':  # Si no es la primera vez
                    reg = {
                        'tipo': 'evaluacion',
                        'titulo': 'Evaluación del Módulo ' + nuevoModulo,
                        'id': ultima_clase,  # El ID de la evaluación es el ID de la clase
                        'disponible': True
                        
                    }
                    if not visto:
                        reg['disponible'] = False
                    listafilas.append(reg)

                reg = {
                    'tipo': 'modulo',
                    'titulo': clase.id_modulo.nombre_modulo,
                    'id': clase.id_modulo.id
                }
                listafilas.append(reg)
                nuevoModulo = clase.id_modulo.nombre_modulo

            ultima_clase=clase.id
            reg = {
                'tipo': 'clase',
                'titulo': clase.nombre_clase,
                'id': clase.id,
                'disponible': True
            }
            if not visto:
                reg['disponible'] = False
            #Consulta si la clase ya la vio el usuario 
            for claseUsuario in listaClasesUsuario:
                if claseUsuario['id_clase'] == clase.id:
                    if claseUsuario['visto'] == False:
                        visto = False
                        
            listafilas.append(reg)

        # Agregar la evaluación del último módulo
        reg = {
            'tipo': 'evaluacion',
            'titulo': 'Evaluación del Módulo ' + nuevoModulo,
            'id': ultima_clase,  # El ID de la evaluación es el ID de la clase
            'disponible': True
        }
        if not visto:
            reg['disponible'] = False
        
        listafilas.append(reg)

        context= {
            'nombre_curso' : regCurso.nombre_curso,
            'descripcion_curso' : regCurso.descripcion_curso,
            'icono_curso' : regCurso.iconoCurso.url, #Asumiendo que 'iconoCurso' es un campo de tipo ImageField
            'listaclases' : listafilas ,
        }
        return render(request,'Templates_Usuarios/Cursos/Modulos_Usuarios.html', context)
        
def ejecutar_clase(request, clase_id):
    #Mostrar el contenido de la clase
    clase = get_object_or_404(Clases, pk=clase_id)
    #Marcar el registro como visto
    
    context = {
        'v_clases': clase,
        'user_id': request.user.id
    }
    return render(request, 'Templates_Usuarios/Cursos/ejecutar_clase.html', context)

def marcar_clase_como_vista(request, clase_id, user_id):
    # Marcar la clase como vista
    clase_usuario = Clase_Usuario.objects.get(id_clase=clase_id, id_usuario_cargo__id_usuario=user_id)
    clase_usuario.visto = True
    clase_usuario.save()
    clase = get_object_or_404(Clases, pk=clase_id)

    # Redirigir al usuario al contenido
    return redirect(clase.contenido_clase)

#EJECUTAR EVALUACION
def ejecutar_evaluacion(request):
    is_ajax = request.META.get('HTTP_X_REQUESTED_WITH') == 'XMLHttpRequest'
    if is_ajax:
        data=json.loads(request.body)
        clase_id=data['clase_id']
        
        #Buscar el modulo_id de la clase
        modulo=Clases.objects.get(id=clase_id).id_modulo.id
        nombre_modulo=Modulos.objects.get(id=modulo).nombre_modulo

        #Mostrar las preguntas de la evaluacion
        reg_evaluacion=Evaluaciones.objects.get(id_modulo=modulo)
        listaPreguntas=Preguntas.objects.filter(id_evaluacion=reg_evaluacion).values()
    
        data = {
            'nombre': nombre_modulo,
            'descripcion': reg_evaluacion.descripcion_evaluacion,
            'instrucciones': reg_evaluacion.instrucciones_evaluacion,
            'duracion': reg_evaluacion.duracion_evaluacion_admin,
            'intentos': reg_evaluacion.numero_intentos,
            'listaPreguntas': list(listaPreguntas),  # Convertir a lista para ser JSON serializable
        }
        return JsonResponse(data)
        
    else:
        return redirect('home')




#*********************
#       Cargos       *
#*********************

#filtrar cargos
def filtrar_cargos(request):
    cargos = Cargo.objects.filter(nombre_cargo__contains=request.GET.get('search',''))
    
    context = {'cargos':cargos}
    return render(request, 'Cargos/listar_cargos.html', {'cargos': cargos})

#Views para listar cargos
def listar_cargos(request):
    cargos = Cargo.objects.all()
    return render(request, 'Cargos/listar_cargos.html', {'cargos': cargos})

#vista para crear cargos
def crear_cargo(request):
    if request.method == 'POST':
        form = CargoForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, 'Cargos/crear_cargo.html', {'mensaje': 'Cargo creado exitosamente'})
    else:
        form = CargoForm()
    
    return render(request, 'Cargos/crear_cargo.html', {'form': form})  

#vista para editar cargos 
def editar_cargo(request, cargo_id):
    cargo = get_object_or_404(Cargo, pk=cargo_id)

    if request.method == 'POST':
        form = CargoForm(request.POST, instance=cargo)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect('listar_cargos')
            # return render(request, 'Cargos/editar_cargo.html', {'mensaje': 'Cargo editado exitosamente'})
            
    else:
        form = CargoForm(instance=cargo)
    
    context = {"form": form,"cargo_id":cargo_id}   
        
    return render(request, 'Cargos/editar_cargo.html', context)



#*****************************************************
#                  Gestion de usuario                *
#*****************************************************

#vista para gestion de usuario
def usuarios(request):
    return render(request, 'Usuarios/usuarios.html')

def GestionUsuarios(request):
    return render(request, 'Usuarios/GestionUsuarios.html')


def filtrar_usuarios(request):
    search_query = request.GET.get('search', '')  # Obtiene el valor de búsqueda de la URL
    perfiles = Profile.objects.filter(user__username__icontains=search_query)  # Filtra por el nombre de usuario
    
    context = {'perfiles': perfiles, 'search_query': search_query}
    return render(request, 'Usuarios/listar_usuarios.html', context)


#vista para crear usuario
def crear_usuario(request):
    if request.method == 'POST':
        form = CrearUsuariosForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            apellido = form.cleaned_data['apellido']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password1']

            # Verificar si el usuario ya existe
            user, created = User.objects.get_or_create(username=username, defaults={'email': email})

            # Actualizar el usuario con la nueva contraseña
            user.set_password(password)

            # Crear una relación con el cargo
            cargo = form.cleaned_data['cargo']

            # Crear o actualizar el perfil del usuario
            profile, profile_created = Profile.objects.get_or_create(user=user)
            profile.apellido = apellido
            profile.email = email
            profile.estadousuario = form.cleaned_data['estadousuario']
            profile.rol = form.cleaned_data['rol']  # Corregir el campo 'rol' aquí
            profile.cargo = form.cleaned_data['cargo']
            user.save()
            profile.save()

            # Crear o actualizar la relación Usuario_Cargo
            usuario_cargo, usuario_cargo_created = Usuario_Cargo.objects.get_or_create(id_usuario=user, id_cargo=cargo)

            if created:
                messages.success(request, f'Usuario {username} creado')
            else:
                messages.success(request, f'Perfil de usuario {username} actualizado')

            # Asignar al usuario al grupo correspondiente
            if form.cleaned_data['rol'] == 'usuario':
                user.groups.add(Group.objects.get(name='usuarios'))
            elif form.cleaned_data['rol'] == 'administrador':
                user.groups.add(Group.objects.get(name='administrativos'))

            return redirect('home')
    else:
        form = CrearUsuariosForm()

    context = {'form': form}
    return render(request, 'Usuarios/crear_usuario.html', context)

#vista para listar usuarios
def listar_usuarios(request):
    usuarios = Profile.objects.select_related('user').all()
    search_query = request.GET.get('search', '')  # Obtén el término de búsqueda
    return render(request, 'Usuarios/listar_usuarios.html', {'usuarios': usuarios})

from .forms import CrearUsuariosForm, CargoForm, EditarUsuariosForm, EditarPerfilForm 

#vista para editar usuarios
def editar_usuarios(request, user_id):
    user_profile = get_object_or_404(Profile, user_id=user_id)
    user = user_profile.user

    if request.method == 'POST':
        user_form = EditarUsuariosForm(request.POST, instance=user)
        profile_form = EditarPerfilForm(request.POST, instance=user_profile)

        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()  # Guardar el formulario del modelo User
            profile_form.save()  # Guardar el formulario del modelo Profile
            messages.success(request, f'Usuario {user.username} actualizado')
            return redirect('listar_usuarios')
                    
    else:
        user_form = EditarUsuariosForm(instance=user)
        profile_form = EditarPerfilForm(instance=user_profile)

    context = {'user_form': user_form, 'profile_form': profile_form, 'user_id': user_id}
    return render(request, 'Usuarios/editar_usuarios.html', context)


# vista para mostrar los datos del usuario
def perfil_usuario(request, user_id):
    usuario = get_object_or_404(User, id=user_id)
    perfil = get_object_or_404(Profile, user=usuario)
    
    context = {'usuario': usuario, 'perfil': perfil}
    return render(request, 'Templates_Usuarios/Cursos/perfil_usuario.html', context)



#*************************************
#   Material de apoyo - usuario
#*************************************


def Material_Usuarios(request):
    user_id = request.user.id  # Obtén el ID del usuario actual
    search_query = request.GET.get('search', '')  # Obtén el término de búsqueda

    # Filtra los cursos relacionados al usuario y aplica el filtro de búsqueda
    listacursos = Cursos.objects.filter(id_cargo__usuario_cargo__id_usuario=user_id, estado_curso=True, nombre_curso__icontains=search_query)

    return render(request, 'Templates_Usuarios/Cursos/Material_Usuarios.html', {'listacursos': listacursos})

def Listar_Material_Usuarios(request,curso_id):
    curso = get_object_or_404(Cursos, pk=curso_id)
    materiales = MaterialApoyo.objects.filter(id_curso=curso)
    return render(request, 'Templates_Usuarios/Cursos/Listar_Material_Usuarios.html', {'materiales': materiales, 'curso':curso})


def Filtrar_Material_Usuario(request):
    filtro_m = MaterialApoyo.objects.filter(NombreMaterialApoyo__contains=request.GET.get('search',''))
    
    context = {'filtro_m':filtro_m}
    return render(request, 'Templates_Usuarios/Cursos/Listar_Material_Usuarios.html', {'materiales': filtro_m})
    



# # vista para mostrar los dat-os del usuario
# def perfil_usuario(request):
#     return render(request, 'Templates_Usuarios/Cursos/perfil_usuario.html')
