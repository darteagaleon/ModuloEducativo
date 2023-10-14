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
    # path('crear_usuario/',login_required(views.crear_usuario),name='crear_usuario'),

    #FILTRAR

    #VER

    #LISTAR

    #EDITAR
    
    path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'),
    path('ejecutar_curso/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('ejecutar_clase/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('marcar_clase_como_vista/<int:clase_id>/<int:user_id>/', views.marcar_clase_como_vista, name='marcar_clase_como_vista'),
    
    
]
    

