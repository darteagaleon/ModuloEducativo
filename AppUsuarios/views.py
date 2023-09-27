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
        #Obtener lista de las clases por modulo del Curso
        listaModulos=Modulos.objects.filter(id_curso=regCurso)
        listaClases=Clases.objects.filter(id_modulo__in=listaModulos)
        #Generar datos para insertar en la tabla Clase_Usuario
        listaReg=[]
        for clase in listaClases:
            #Crear un diccionario para cada registro a insertar
            reg={'id_usuario_cargo': regUsuarioCargo, 
            'id_modulo': clase.id_modulo, 
            'id_clase': clase,
            'visto': False}

            listaReg.append(Clase_Usuario(**reg))#Convierte el diccionario en un objeto de tipo Clase_Usuario
        
        #Insertar registros en la tabla Clase_Usuario (Los inserta en la base de datos) )
        Clase_Usuario.objects.bulk_create(listaReg) #Bulk_create es para insertar varios registros a la vez
        #Regresar al Home
        return render (request,'home.html',{})
    else:

        #Consultar listado de Cursos para el Usuario y sus Cargos
    
        regUsuario=User.objects.get(id=1)
        listaUsuarioCargo=Usuario_Cargo.objects.filter(id_usuario=regUsuario).values('id_cargo')
        
        #Ensamblar el contexto para el template
        listacursos= Cursos.objects.filter(id_cargo__in=listaUsuarioCargo).values('nombre_curso','id')
        # print(listaUsuarioCargo)

        #Retornar el template con el contexto
        return render (request,'Usuarios/seleccionar_curso.html',{'listacursos':listacursos})
   
