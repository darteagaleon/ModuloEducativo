from django.contrib import admin
from django.urls import path
from . import views




urlpatterns = [
    path('login/', views.login, name='login'),
    path('realizar_curso', views.realizar_curso, name='realizar_curso'),
]
