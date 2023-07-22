from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
     path("crear_curso/", views.Crear_cursos.as_view(), name="crear_curso"),
     path('editar/<int:curso_id>/',views.update,name='editar_curso'),
     path('cursos/', views.Listar_cursos, name='listar_cursos'),
]