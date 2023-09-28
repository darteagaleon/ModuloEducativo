from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
from django.contrib.auth.models import User
from AppCursos.models import *
from .models import *

@login_required

def login(request):
    
    return render (request,'login.html',{})


# Create your views here.
#Vista para realizar un Curso
@login_required

def seleccionar_curso(request):
    if request.method == "POST":
        #Leer registro del Curso seleccionado
        pk_curso=request.POST['curso']
        regCurso=Cursos.objects.get(id=pk_curso)
        #Obtener fk del Cargo asociado
        fk_cargo=regCurso.id_cargo
        #Obtener pk de la tabla Usuario_Cargo
        regUsuarioCargo=Usuario_Cargo.objects.get(id_cargo=fk_cargo)
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
        listaPkClases=Clase_Usuario.objects.filter(id_usuario_cargo=regUsuarioCargo, id_modulo__in=listaModulos).values('id_clase')
        listaClases=Clases.objects.filter(id__in=listaPkClases).values('id', 'nombre_clase', 'id_modulo', 'id_modulo__nombre_modulo' ).order_by('id_modulo__orden_modulo', 'orden_clase')
        listaClasesUsuario=Clase_Usuario.objects.filter(id_usuario_cargo=regUsuarioCargo, id_modulo__in=listaModulos).values('id_clase', 'visto')
        listafilas=[]
        #Recorrer la lista de clases para ensamblar el contexto
        nuevoModulo='' #Para saber cuando el registro es una clase o es un modulo
        for clase in listaClases:
            reg={}
            if nuevoModulo != clase['id_modulo__nombre_modulo']:
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
            #PENDIENTE REVISAR SI LA CLASE YA FUE VISTA
            listafilas.append(reg)

        context= {
            'nombre_curso' : regCurso.nombre_curso,
            'listaclases' : listafilas ,
            }
        return render (request,'Usuarios/ejecutar_clase.html', context)

        #Redireccionar a la ejecucion del Curso
        return render (request,'Usuarios/ejecutar_curso.html', context)
    else:

        #Consultar listado de Cursos para el Usuario y sus Cargos
    
        regUsuario=User.objects.get(id=1)
        listaUsuarioCargo=Usuario_Cargo.objects.filter(id_usuario=regUsuario).values('id_cargo')
        
        #Ensamblar el contexto para el template
        listacursos= Cursos.objects.filter(id_cargo__in=listaUsuarioCargo, estado_curso=True).values('nombre_curso','id')
        # print(listaUsuarioCargo)

        #Retornar el template con el contexto
        return render (request,'Usuarios/seleccionar_curso.html',{'listacursos':listacursos})
   
