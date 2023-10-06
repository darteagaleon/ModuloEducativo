from django.contrib import admin
from django.urls import path
from . import views
from .views import Crear_cursos


from .views import home,exit
from django.contrib.auth.decorators import login_required
from django.contrib.auth import views as auth_views
from django.contrib.auth import logout
from django.urls import reverse_lazy
from django.contrib.auth.views import LogoutView





urlpatterns =[
     path('',home, name='home'),
     path('logout/',exit, name="exit"),
     #CREAR


     #FILTRAR

     #EDITAR

     #VER

     #LISTAR

     path("crear_curso/", views.Crear_cursos.as_view(), name="crear_curso"),
     path('listar_cursos/', views.Listar_cursos, name='listar_cursos'),
     path('filtrar/', views.filtrar, name='filtrar'),
     path('filtrar_modulos/',views.filtrar_modulos,name="filtrar_modulos"),
     path('filtrar_clases/',views.filtrar_clases,name="filtrar_clases"),
     path('filtrar_evaluacion/',views.filtrar_evaluaciones,name="filtrar_evaluacion"),
     path('filtrar_preguntas/',views.filtrar_preguntas,name="filtrar_preguntas"),
     path('crear_evaluacion/', views.crear_evaluacion, name='crear_evaluacion'),
     path('crear_pregunta/', views.crear_pregunta, name='crear_pregunta'),
     path('crear_modulos/', views.crear_modulos, name='crear_modulos'),
     path('crear_clases/', views.crear_clases, name='crear_clases'),
     path('evaluacion/', views.gestion_evaluacion, name='evaluacion'),
     path('ver_evaluacion/', views.ver_evaluacion, name='ver_evaluacion'),
     path('lista_de_evaluacion/', views.Listar_evaluaciones,
          name='listar_evaluacion'),
     path('modulos/', views.All_Modulos, name='modulos'),
     path('listar_modulos', views.Listar_modulos, name='listar_modulos'),
     path('cursos', views.All_cursos, name="cursos"),
     path('clase', views.All_clases, name='clase'),
     path('listar_clases', views.Listar_clases, name='listar_clases'),
     path('ver_evaluacion_detalle/<int:evaluacion_id>/',
          views.ver_evaluacion_detalle, name='ver_evaluacion_detalle'),
     path('ver_preguntas_detalle/<int:evaluacion_id>/',
          views.ver_preguntas_detalle, name='ver_preguntas_detalle'),
     path('editar_evaluacion/<int:evaluacion_id>/',
          views.editar_evaluaciones, name='editar_evaluacion'),
          path('editar_pregunta/<int:pregunta_id>/',
               views.editar_preguntas, name='editar_pregunta'),
     path('editar_modulos/<int:modulo_id>/',
          views.editar_modulos, name='editar_modulos'),
     path('ver_clases/<int:clase_id>/', views.ver_clases, name='ver_clases'),
     path('editar_clases/<int:clase_id>/',
          views.editar_clases, name='editar_clases'),
     path('ver_modulos/<int:modulo_id>/', views.ver_modulos, name="ver_modulos"),
     path('ver_cursos/<int:curso_id>/', views.ver_cursos, name='ver_cursos'),
     path('editar_cursos/<int:curso_id>/', views.editar_cursos, name='editar_cursos'),
     path('editar_cursos/<int:curso_id>/',
          views.editar_cursos, name='editar_cursos'),

     path('gestion_MaterialApoyo', views.gestion_MaterialApoyo, name='gestion_MaterialApoyo'),
     path('Listar_cursos_material/', views.Listar_cursos_material, name='Listar_cursos_material'),
     path('filtrar_cursos_material/', views.filtrar_cursos_material, name='filtrar_cursos_material'),
     # path('material_list/<int:curso_id>/', MaterialApoyoListView.as_view(), name='material_list'),
     path('material_list/<int:curso_id>/', views.material_list, name='material_list'),
     path('filtrar_material/',views.filtrar_material,name="filtrar_material"),
     path('agregar_material/', views.agregar_material_apoyo, name='agregar_material'),
     path('editar_material/<int:pk>/', views.editar_material_apoyo, name='editar_material'),

     
     ]
