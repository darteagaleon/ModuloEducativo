from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import views as auth_views
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('',include('AppCursos.urls')),
    path("admin/", admin.site.urls),
    path("",views.home, name="home"),
    path("cursos/", include('AppCursos.urls')),
    path('usuario/', include('AppUsuarios.urls')), 
        path('accounts/',include('django.contrib.auth.urls')),

]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
