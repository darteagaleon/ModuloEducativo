from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path("admin/", admin.site.urls),
<<<<<<< HEAD
    path("",views.home, name="home"),
    path('cursos/', include('AppCursos.urls')),

=======
    path('', views.home,name='home'),
    path('usuario/', include('AppUsuarios.urls')), 
>>>>>>> 0474676465a831a7bf3b8c8d9d47d5b708b5cbf8
]
