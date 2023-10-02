from django.contrib import admin
from django.urls import path
from . import views





urlpatterns = [
    path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'),
    path('ejecutar_curso/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('ejecutar_clase/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
    path('marcar_clase_como_vista/<int:clase_id>/<int:user_id>/', views.marcar_clase_como_vista, name='marcar_clase_como_vista'),
]
    

