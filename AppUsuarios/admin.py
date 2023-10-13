from django.contrib import admin
from .models import *


# Register your models here.
class CargoAdmin(admin.ModelAdmin):
     list_display=['nombre_cargo', 'estado_cargo']
admin.site.register(Cargo, CargoAdmin)

class Usuario_CargoAdmin(admin.ModelAdmin):
     list_display=['id_usuario', 'id_cargo']
admin.site.register(Usuario_Cargo, Usuario_CargoAdmin)

class Clase_UsuarioAdmin(admin.ModelAdmin):
     list_display=['id_usuario_cargo', 'id_modulo', 'id_clase', 'visto']
admin.site.register(Clase_Usuario, Clase_UsuarioAdmin)


# PERFIL DETALLADO
class ProfileAdmin(admin.ModelAdmin):
     list_display =('user', 'address', 'location', 'telephone', 'user_group')
     search_fields =('location', 'user__username', 'user__groups__name')
     list_filter = ('user__groups', 'location')

     def user_group(self, obj):
          return " - ".join([t.name for t in obj.user.groups.all().order_by('name')])

     user_group.short_description = 'Grupo'

admin.site.register(Profile, ProfileAdmin)