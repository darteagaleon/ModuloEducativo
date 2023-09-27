from django.contrib import admin
from django.urls import path
from . import views




urlpatterns = [
    path('login/', views.login, name='login'),
    path('seleccionar_curso', views.seleccionar_curso, name='seleccionar_curso'),
]
