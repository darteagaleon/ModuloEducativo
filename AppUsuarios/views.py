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



# Create your views here.
#Vista para realizar un Curso
def seleccionar_curso(request):
    if request.method == "POST":
        #Leer registro del Curso seleccionado
        pk_curso=request.POST['curso']
        regCurso=Cursos.objects.get(id=pk_curso)
        #Obtener fk del Cargo asociado
        fk_cargo=regCurso.id_cargo
        #Obtener pk de la tabla Usuario_Cargo
        regUsuarioCargo=Usuario_Cargo.objects.filter(id_cargo=fk_cargo)[0]
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

            listafilas.append(reg)

        #Agregar la evaluacion del ultimo modulo
        reg={}
        reg['tipo']='evaluacion'
        reg['titulo']='Evaluacion del Modulo ' + nuevoModulo
        reg['id']=clase['id_modulo']
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
        return render (request,'Usuarios/seleccionar_curso.html',{'listacursos':listacursos})


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
    print('------------------')
    print(clase_usuario)
    clase_usuario.visto = True
    clase_usuario.save()
    clase = get_object_or_404(Clases, pk=clase_id)

    # Redirigir al usuario al contenido
    return redirect(clase.contenido_clase)


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
    

#*********************
# Gestion de usuario *
#*********************

#vista para gestion de usuario
def usuarios(request):
    return render(request, 'Usuarios/usuarios.html')

def GestionUsuarios(request):
    return render(request, 'Usuarios/GestionUsuarios.html')

#vista para crear usuario
def crear_usuario(request):
    if request.method == 'POST':
        form = CrearUsuariosForm(request.POST)
        if form.is_valid():
            user = form.save() # Guardar el usuario

            # Asignar un cargo al usuario
            cargo_id = request.POST.get('cargo') 
            if cargo_id:
                cargo = Cargo.objects.get(pk=cargo_id)
                user.cargo = cargo
                user.save()

            username = form.cleaned_data['username']
            messages.success(request, f'Usuario {username} creado')
            return redirect('home')
    else:
        form = CrearUsuariosForm()

    context = {'form': form}
    return render(request, 'Usuarios/crear_usuario.html', context)

