from django.contrib import admin
from django.urls import path
from . import views
from .views import Crear_cursos, generar_certificacion, notificacion_gmail
from .views import home,exit,login
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import user_passes_test #para validar acceso segun grupo

# se agrego el login_required a las urls para que el usuario no pudiera saltar el inicio de sesion y obligar a que se loguee para poder er los recursos que ofrece la pagina web
# se agrego (user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/') para que valide el grupo al que pertenece el usuario, y asi darle acceso a la ruta
urlpatterns =[
     path('login/',login_required(views.login), name='login'),
     path('home/',login_required( views.home), name='home'),
     path('exit/', views.exit, name='exit'),
     path('', views.login, name='root'), 
     #--------------------------------------------------------
     #GESTION
     path('gestion_general', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Gestion_general)), name='gestion_general'),
     path('cursos', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.All_cursos)), name="cursos"),
     path('modulos/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.All_Modulos)), name='modulos'),
     path('clase', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.All_clases)), name='clase'),
     path('evaluacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.gestion_evaluacion)), name='evaluacion'),
     path('gestion_MaterialApoyo', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.gestion_MaterialApoyo)), name='gestion_MaterialApoyo'),
     path('acceso_denegado/', views.acceso_denegado, name='acceso_denegado'),

     #CREAR
     path("crear_curso/", login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Crear_cursos.as_view())), name="crear_curso"),
     path('crear_modulos/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.crear_modulos)), name='crear_modulos'),
     path('crear_clases/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.crear_clases)), name='crear_clases'),
     path('crear_evaluacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.crear_evaluacion)), name='crear_evaluacion'),
     path('crear_pregunta/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.crear_pregunta)), name='crear_pregunta'),
     path('crear_material/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.crear_material_apoyo)), name='crear_material'),

     # FILTRAR
     path('filtrar/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar)), name='filtrar'),  # Filtrar cursos
     path('filtrar_modulos/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_modulos)), name="filtrar_modulos"),
     path('filtrar_clases/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_clases)), name="filtrar_clases"),
     path('filtrar_evaluacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_evaluaciones)), name="filtrar_evaluacion"),
     path('filtrar_preguntas/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_preguntas)), name="filtrar_preguntas"),
     path('filtrar_material/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_material)), name="filtrar_material"),
     path('filtrar_cursos_material/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.filtrar_cursos_material)), name='filtrar_cursos_material'),

     # VER
     path('ver_cursos/<int:curso_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.ver_cursos)), name='ver_cursos'),
     path('ver_modulos/<int:modulo_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.ver_modulos)), name="ver_modulos"),
     path('ver_clases/<int:clase_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.ver_clases)), name='ver_clases'),
     path('ver_evaluacion_detalle/<int:evaluacion_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.ver_evaluacion_detalle)), name='ver_evaluacion_detalle'),
     path('cursos/ver_preguntas_detalle/<int:evaluacion_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.ver_preguntas_detalle)), name='ver_preguntas_detalle'),

     #LISTAR
     path('listar_cursos/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Listar_cursos)), name='listar_cursos'),
     path('listar_modulos', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Listar_modulos)), name='listar_modulos'),
     path('listar_clases', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Listar_clases)), name='listar_clases'),
     path('lista_de_evaluacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Listar_evaluaciones)), name='listar_evaluacion'),
     path('material_list/<int:curso_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.material_list)), name='material_list'),
     path('Listar_cursos_material/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.Listar_cursos_material)), name='Listar_cursos_material'),

     #EDITAR
     path('editar_cursos/<int:curso_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_cursos)), name='editar_cursos'),
     path('editar_modulos/<int:modulo_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_modulos)), name='editar_modulos'),
     path('editar_clases/<int:clase_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_clases)), name='editar_clases'),
     path('editar_evaluacion/<int:evaluacion_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_evaluaciones)), name='editar_evaluacion'),
     path('editar_pregunta/<int:pregunta_id>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_preguntas)), name='editar_pregunta'),
     path('editar_material/<int:pk>/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.editar_material_apoyo)), name='editar_material'),

     #Certificados
     path('generar_certificacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(generar_certificacion.as_view())), name='generar_certificacion'),
     
     #Nofificiaicon por email
     path('generar_notificacion/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.certificados_notificacion_gmail)), name='genrar_notificacion'),
     path('notificacion_gmail/', login_required(user_passes_test(views.valida_administrativos, login_url='/acceso_denegado/')(views.notificacion_gmail)), name='notificacion_gmail'),

     ]



