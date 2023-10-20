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
    path('filtrar_cargos/', login_required(views.filtrar_cargos), name='filtrar_cargos'),
   

    #VER

    #LISTAR
    path('listar_usuarios/',login_required(views.listar_usuarios),name='listar_usuarios'),
    path('listar_cargos/',login_required(views.listar_cargos),name='listar_cargos'),
    


    #EDITAR
    path('editar_usuarios/<int:user_id>/', views.editar_usuarios, name='editar_usuarios'),

    
    path('marcar_clase_como_vista/<int:clase_id>/<int:user_id>/', views.marcar_clase_como_vista, name='marcar_clase_como_vista'),
# path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'), esta es la ruta de la funcion que se llama en el html
    #EJECUTAR
    
    path('ejecutar_curso/<int:clase_id>/', views.Cursos_Usuarios, name='ejecutar_curso'),
    path('ejecutar_clase/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('ejecutar_evaluacion/', views.ejecutar_evaluacion, name='ejecutar_evaluacion'),
    path('Cursos_Usuarios/', login_required(views.Cursos_Usuarios), name='Cursos_Usuarios'),
    
    path('Cursos_Usuarios/',login_required(views.Cursos_Usuarios),name='Cursos_Usuarios'),
    # Modulos_Usuarios
    path('Modulos_Usuarios/',login_required(views.Modulos_Usuarios),name='Modulos_Usuarios'),
    # Material_Usuarios
    path('Material_Usuarios/',login_required(views.Material_Usuarios),name='Material_Usuarios'),
]
    

