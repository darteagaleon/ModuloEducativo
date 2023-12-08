from django.contrib import admin
from .models import *
from django.contrib.auth.models import Group


# Register your models here.
class CargoAdmin(admin.ModelAdmin):
     list_display=['nombre_cargo', 'estado_cargo']
admin.site.register(Cargo, CargoAdmin)

class Usuario_CargoAdmin(admin.ModelAdmin):
     list_display=['id_usuario', 'id_cargo']
admin.site.register(Usuario_Cargo, Usuario_CargoAdmin)

class Clase_UsuarioAdmin(admin.ModelAdmin):
     list_display=['id_usuario_cargo', 'id_modulo', 'id_clase', 'visto', 'tipo']
admin.site.register(Clase_Usuario, Clase_UsuarioAdmin)


# PERFIL DETALLADO
class ProfileAdmin(admin.ModelAdmin):
     list_display = ('user', 'apellido', 'email','estadousuario', 'rol', 'cargo', 'user_group')
     list_filter = ( 'user__groups', 'user')  # Aquí he agregado 'username' a los campos a filtrar

     def user_group(self, obj):
          groups = obj.user.groups.all().values_list('name', flat=True)
          return " - ".join(sorted(groups))

     user_group.short_description = 'Grupo'

admin.site.register(Profile, ProfileAdmin)
