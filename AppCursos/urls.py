from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
     path("crear_curso/", views.Crear_cursos.as_view(), name="crear_curso"),
     path('editar/<int:curso_id>/', views.update, name='editar_curso'),
     path('lista_de_cursos/', views.Listar_cursos, name='listar_cursos'),
     path('filtrar/', views.filtrar, name='filtrar'),
     path('crear_evaluacion/', views.crear_evaluacion, name='crear_evaluacion'),
     path('crear_pregunta/', views.crear_pregunta, name='crear_pregunta'),
     path('crear_modulos/', views.crear_modulos, name='crear_modulos'),
     path('crear_clases/', views.crear_clases, name='crear_clases'),
]
