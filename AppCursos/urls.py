from django.contrib import admin
from django.urls import path
from . import views

app_name = "AppCursos"

urlpatterns = [
    path("crear_curso/", views.Crear_cursos.as_view(), name="crear_curso"),
    path('lista_de_cursos/', views.Listar_cursos, name='listar_cursos'),
    path('filtrar/', views.filtrar, name='filtrar'),
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
    # evaluación detallada
    path('ver_evaluacion_detalle/<int:evaluacion_id>/',
         views.ver_evaluacion_detalle, name='ver_evaluacion_detalle'),
    path('ver_preguntas_detalle/<int:evaluacion_id>/',
         views.ver_preguntas_detalle, name='ver_preguntas_detalle'),
    path('editar_evaluacion/<int:evaluacion_id>/',
         views.editar_evaluaciones, name='editar_evaluacion'),
     path('editar_pregunta/<int:pregunta_id>/',
           views.editar_preguntas, name='editar_pregunta'),
    path('listar_preguntas', views.Listar_preguntas, name='listar_preguntas'),
    path('editar_modulos/<int:modulo_id>/',
         views.editar_modulos, name='editar_modulos'),
    path('ver_clases/<int:clase_id>/', views.ver_clases, name='ver_clases'),
    path('editar_clases/<int:clase_id>/',
         views.editar_clases, name='editar_clases'),
    path('ver_modulos/<int:modulo_id>/', views.ver_modulos, name="ver_modulos"),
    path('ver_cursos/<int:curso_id>/', views.ver_cursos, name='ver_cursos'),
    path('editar_cursos/<int:curso_id>/',
         views.editar_cursos, name='editar_cursos'),

]
