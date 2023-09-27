from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
from django.contrib.auth.models import User
from AppCursos.models import Cursos,Usuario_Cargo

@login_required

def login(request):
    
    return render (request,'login.html',{})


# Create your views here.
#Vista para realizar un Curso
@login_required

def realizar_curso(request):
    #Consultar listado de Cursos para el Usuario y sus Cargos
    
    regUsuario=User.objects.get(id=1)
    listaUsuarioCargo=Usuario_Cargo.objects.filter(id_usuario=regUsuario).values('id_cargo')
    
    listacursos= Cursos.objects.filter(id_cargo__in=listaUsuarioCargo).values('nombre_curso','id')
    print(listacursos)
    #Ensamblar el contexto para el template

    #Retornar el template con el contexto
    return render (request,'Usuarios/realizar_curso.html',{'listacursos':listacursos})
   
