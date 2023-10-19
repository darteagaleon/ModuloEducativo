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
#Vista para realizar un Curso
def Cursos_Usuarios(request):
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

        # listaPkClases=Clase_Usuario.objects.filter(id_usuario_cargo=regUsuarioCargo, id_modulo__in=listaModulos).values('id_clase')
        listaClases=Clases.objects.filter(id__in=listaPkClases).values('id', 'nombre_clase', 'id_modulo', 'id_modulo__nombre_modulo' ).order_by('id_modulo__orden_modulo', 'orden_clase')
        listafilas=[]
        #Recorrer la lista de clases para ensamblar el contexto
        nuevoModulo='' #Para saber cuando el registro es una clase o es un modulo
        visto=True #Para saber si la clase ya fue vista

        for clase in listaClases:
            reg={}
        
            #Si el modulo es diferente al anterior, agregarlo a la lista
            if nuevoModulo != clase['id_modulo__nombre_modulo']:
                #Controlar Evaluacion
                if nuevoModulo != '': #Si no es la primera vez
                    reg['tipo']='evaluacion'
                    reg['titulo']='Evaluacion del Modulo ' + nuevoModulo
                    reg['id']=clase['id_modulo']
                    if  not visto:
                        reg['disponible']=False

                    listafilas.append(reg)

                reg={}
                reg['tipo']='modulo'
                reg['titulo']=clase['id_modulo__nombre_modulo']
                reg['id']=clase['id_modulo']
                listafilas.append(reg)
                nuevoModulo=clase['id_modulo__nombre_modulo']

            reg={
                'tipo': 'clase',
                'titulo': clase['nombre_clase'],
                'id': clase['id'],
                'disponible': True
            }
            if  not visto:
                reg['disponible']=False

            for claseUsuario in listaClasesUsuario:
                if claseUsuario['id_clase'] == clase['id']:
                    if claseUsuario['visto']==False:
                        visto=False
                        break

            #Agregar la evaluacion del ultimo modulo
            reg={}
            reg['tipo']='evaluacion'
            reg['titulo']='Evaluacion del Modulo ' + nuevoModulo
            reg['id']=listaClases.last().id_modulo.id
            reg['disponible']=True
            if not visto:
                reg['disponible']=False

            listafilas.append(reg)

        context= {
            'nombre_curso' : regCurso.nombre_curso,
            'listaclases' : listafilas ,
        }
        #Redireccionar a la ejecucion del Curso
        
        return render (request,'Usuarios/ejecutar_curso.html', context)

    else:
        #Consultar listado de Cursos para el Usuario y sus Cargos
        listaCursos= Cursos.objects.filter(estado_curso=True).values('nombre_curso','id')
        
        # regUsuario=User.objects.get(username=request.user)
        user_id=request.user.id
        listaUsuarioCargo=Usuario_Cargo.objects.filter(id_usuario=user_id).values('id_cargo')
            
        #Ensamblar el contexto para el template
        listacursos= Cursos.objects.filter(id_cargo__in=listaUsuarioCargo, estado_curso=True).values('nombre_curso','id')

        #Retornar el template con el contexto
        return render (request,'Templates_Usuarios/Cursos/Cursos_Usuarios.html',{'listacursos':listacursos})


def ejecutar_clase(request, clase_id):
    #Mostrar el contenido de la clase
    clase = get_object_or_404(Clases, pk=clase_id)
    #Marcar el registro como visto
    
    context = {
        'v_clases': clase,
        'user_id': request.user.id
    }
    return render(request, 'Usuarios/ejecutar_clase.html', context)


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
        id_evaluacion=Evaluaciones.objects.get(id_modulo=modulo).id
        print('------------------')
        print(id_evaluacion)
        listaPreguntas=Preguntas.objects.filter(id_evaluacion=id_evaluacion).values()
    

        
        data = {
            'nombre': nombre_modulo,
            'listaPreguntas': list(listaPreguntas),  # Convertir a lista para ser JSON serializable
        }
        print('------------------')
        print(data)
        return JsonResponse(data)
        # return render(request, 'Usuarios/ejecutar_evaluacion.html', context)
    else:
        return redirect('home')

#*********************
#       Cargos       *
#*********************

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

#filtrar cargos
def filtrar_cargos(request):
    cargos = Cargo.objects.filter(nombre_cargo__contains=request.GET.get('search',''))
    
    context = {'cargos':cargos}
    return render(request, 'Cargos/listar_cargos.html', {'cargos': cargos})

#Views para listar cargos
def listar_cargos(request):
    cargos = Cargo.objects.all()
    return render(request, 'Cargos/listar_cargos.html', {'cargos': cargos})
    

#*****************************************************
#                  Gestion de usuario                *
#*****************************************************

#vista para gestion de usuario
def usuarios(request):
    return render(request, 'Usuarios/usuarios.html')

def GestionUsuarios(request):
    return render(request, 'Usuarios/GestionUsuarios.html')


# filtrar usuarios
# def filtrar_usuarios(request):
#     perfiles = Profile.objects.filter(User__username__contains=request.GET.get('search',''))
    
#     context = {'perfiles':perfiles}
#     return render(request, 'Usuarios/listar_usuarios.html', {'perfiles': perfiles})

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
            password = form.cleaned_data['password1']
            email = form.cleaned_data['email']
            apellido = form.cleaned_data['apellido']

            # Verificar si el usuario ya existe
            user, created = User.objects.get_or_create(username=username, defaults={'email': email})
            
            # Actualizar el usuario con la nueva contraseña
            user.set_password(password)
            user.save()
            
            # Crear una relación con el cargo
            cargo = form.cleaned_data['cargo']

            # Crear o actualizar el perfil del usuario
            profile, profile_created = Profile.objects.get_or_create(user=user)
            profile.apellido = apellido
            profile.email = email
            profile.estadousuario = form.cleaned_data['estadousuario']
            profile.role = form.cleaned_data['role']
            profile.cargo = form.cleaned_data['cargo']
            profile.save()
            Usuario_Cargo.objects.create(id_usuario=user, id_cargo=cargo)

            if created:
                messages.success(request, f'Usuario {username} creado')
            else:
                messages.success(request, f'Perfil de usuario {username} actualizado')

            return redirect('home')
    else:
        form = CrearUsuariosForm()

    context = {'form': form}
    return render(request, 'Usuarios/crear_usuario.html', context)


#vista para listar usuarios
def listar_usuarios(request):
    usuarios = Profile.objects.select_related('user').all()
    return render(request, 'Usuarios/listar_usuarios.html', {'usuarios': usuarios})


#vista para editar usuarios
def editar_usuarios(request, user_id):
    user = Profile.objects.get(id_usuario=user_id)

    print="-------------------"
    print= user

    if request.method == 'POST':
        form = CrearUsuariosForm(request.POST, instance=user.user)

        if form.is_valid():
            form.save()
            user.email = form.cleaned_data['email']
            user.estadousuario = form.cleaned_data['estadousuario']
            user.role = form.cleaned_data['role']
            user.carga = form.cleaned_data['carga']
            user.save()

            messages.success(request, f'Usuario {user.user.username} actualizado')
            return redirect('inicio')
    else:
        form = CrearUsuariosForm(instance=user.user)

    context = {'form': form, 'user_id': user_id}
    return render(request, 'Usuarios/editar_usuarios.html', context)



