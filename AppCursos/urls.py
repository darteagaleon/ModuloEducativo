from django.contrib import admin
from django.urls import path
from . import views
from .views import Crear_cursos
from .views import home,exit,login
from django.contrib.auth.decorators import login_required




# se agrego el login_required a las urls para que el usuario no pudiera saltar el inicio de sesion y obligar a que se loguee para poder er los recursos que ofrece la pagina web
urlpatterns =[
     path('login/',login_required(views.login), name='login'),
     path('home/',login_required( views.home), name='home'),
     path('exit/', views.exit, name='exit'),
     path('', views.login, name='root'), 
     #CREAR


     #FILTRAR

     #EDITAR

     #VER

     #LISTAR

     path("crear_curso/", login_required(views.Crear_cursos.as_view()), name="crear_curso"),
     path('listar_cursos/',login_required( views.Listar_cursos), name='listar_cursos'),
     path('filtrar/', login_required(views.filtrar), name='filtrar'),
     path('filtrar_modulos/',login_required(views.filtrar_modulos),name="filtrar_modulos"),
     path('filtrar_clases/',login_required(views.filtrar_clases),name="filtrar_clases"),
     path('filtrar_evaluacion/',login_required(views.filtrar_evaluaciones),name="filtrar_evaluacion"),
     path('filtrar_preguntas/',login_required(views.filtrar_preguntas),name="filtrar_preguntas"),
     path('crear_evaluacion/', login_required(views.crear_evaluacion), name='crear_evaluacion'),
     path('crear_pregunta/', login_required(views.crear_pregunta), name='crear_pregunta'),
     path('crear_modulos/', login_required(views.crear_modulos), name='crear_modulos'),
     path('crear_clases/', login_required(views.crear_clases), name='crear_clases'),
     path('evaluacion/', login_required(views.gestion_evaluacion), name='evaluacion'),
     # path('ver_evaluacion/<int:evaluacion_id>/', login_required(views.ver_evaluacion), name='ver_evaluacion'),
     path('lista_de_evaluacion/', login_required(views.Listar_evaluaciones),
          name='listar_evaluacion'),
     path('modulos/', login_required(views.All_Modulos), name='modulos'),
     path('listar_modulos', login_required(views.Listar_modulos), name='listar_modulos'),
     path('cursos', login_required(views.All_cursos), name="cursos"),
     path('clase', login_required(views.All_clases), name='clase'),
     path('listar_clases', login_required(views.Listar_clases), name='listar_clases'),
     path('ver_evaluacion_detalle/<int:evaluacion_id>/',
          login_required(views.ver_evaluacion_detalle), name='ver_evaluacion_detalle'),
     path('ver_preguntas_detalle/<int:evaluacion_id>/',
          login_required(views.ver_preguntas_detalle), name='ver_preguntas_detalle'),
     path('editar_evaluacion/<int:evaluacion_id>/',
          login_required(views.editar_evaluaciones), name='editar_evaluacion'),
          path('editar_pregunta/<int:pregunta_id>/',
               login_required(views.editar_preguntas), name='editar_pregunta'),
     path('editar_modulos/<int:modulo_id>/',
          login_required(views.editar_modulos), name='editar_modulos'),
     path('ver_clases/<int:clase_id>/', login_required(views.ver_clases), name='ver_clases'),
     path('editar_clases/<int:clase_id>/',
          login_required(views.editar_clases), name='editar_clases'),
     path('ver_modulos/<int:modulo_id>/', login_required(views.ver_modulos), name="ver_modulos"),
     path('ver_cursos/<int:curso_id>/', login_required(views.ver_cursos), name='ver_cursos'),
     path('editar_cursos/<int:curso_id>/', login_required(views.editar_cursos), name='editar_cursos'),
     path('editar_cursos/<int:curso_id>/',
          login_required(views.editar_cursos), name='editar_cursos'),

     path('gestion_MaterialApoyo', login_required(views.gestion_MaterialApoyo), name='gestion_MaterialApoyo'),
     path('Listar_cursos_material/', login_required(views.Listar_cursos_material), name='Listar_cursos_material'),
     path('filtrar_cursos_material/', login_required(views.filtrar_cursos_material), name='filtrar_cursos_material'),
     path('material_list/<int:curso_id>/', login_required(views.material_list), name='material_list'),
     path('filtrar_material/',login_required(views.filtrar_material),name="filtrar_material"),
     path('crear_material/', login_required(views.crear_material_apoyo), name='crear_material'),
     path('editar_material/<int:pk>/', login_required(views.editar_material_apoyo), name='editar_material'),
     path('crear_usuario/',login_required(views.crear_usuario),name='crear_usuario'),
     ]
