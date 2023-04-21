from django.contrib import admin
from .models import *
# Register your models here.
class regCursos(admin.ModelAdmin):
     list_display=['nombre_curso', 'descripcion', 'estado_curso', 'duracion_curso']
admin.site.register(Cursos,regCursos)

# admin.site.register(Curso_Usuario)