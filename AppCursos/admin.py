from django.contrib import admin
from .models import *
# Register your models here.
#Se crea el modelo de la tabla Cursos de la empresa
class regCursos(admin.ModelAdmin):
     list_display=['nombre_curso', 'descripcion_curso', 'estado_curso', 'duracion_curso','iconoCurso']
admin.site.register(Cursos,regCursos)

# Se crea el modelo de la tabla Modulos de la empresa
class regModulos(admin.ModelAdmin):
     list_display=['nombre_curso','nombre_modulo', 'estado_modulo']
admin.site.register(Modulos,regModulos)

# Se crea el modelo de la tabla Clases de la empresa
class regClases(admin.ModelAdmin):
     list_display=['nombre_modulo','nombre_clase','duracion_clase','contenido_clase','descripcion_clase', 'estado_clase']
admin.site.register(Clases,regClases)