from django.contrib import admin
from django.urls import path
from . import views




urlpatterns = [
    path('login/', views.login, name='login'),
    path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'),
    path('ejecutar_curso/<int:clase_id>/', views.ejecutar_clase, name='ejecutar_clase'),
]
    
    # path('ejecutar_curso/<int:pk>', views.ejecutar_curso, name='ejecutar_curso'),

