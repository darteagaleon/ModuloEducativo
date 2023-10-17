from django.contrib import admin
from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required




urlpatterns = [

    #GESTION
    path('usuarios/', login_required(views.usuarios), name='usuarios'),
    path('GestionUsuarios/', login_required(views.GestionUsuarios), name='GestionUsuarios'),

    #CREAR
    path('crear_cargo/', login_required(views.crear_cargo), name='crear_cargo'),
    path('crear_usuario/',login_required(views.crear_usuario),name='crear_usuario'),

    #FILTRAR
    path('filtrar_usuarios/', login_required(views.filtrar_usuarios), name='filtrar_usuarios'),

    #VER

    #LISTAR
    path('listar_usuarios/',login_required(views.listar_usuarios),name='listar_usuarios'),


    #EDITAR
    path('editar_usuarios/<int:user_id>/', views.editar_usuarios, name='editar_usuarios'),

    
    path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'),
    path('marcar_clase_como_vista/<int:clase_id>/<int:user_id>/', views.marcar_clase_como_vista, name='marcar_clase_como_vista'),

    #EJECUTAR
    path('ejecutar_curso/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('ejecutar_clase/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('ejecutar_evaluacion/', views.ejecutar_evaluacion, name='ejecutar_evaluacion'),
    
    path('Cursos_Usuarios/',login_required(views.Cursos_Usuarios),name='Cursos_Usuarios'),
]
    

