from django.urls import path
from . import views

app_name = 'AppUsuarios'

urlpatterns = [
    path('login/', views.login, name='login'),
]
