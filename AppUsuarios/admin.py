from django.contrib import admin
from .models import Cargo, Usuario_Cargo

# Register your models here.
class CargoAdmin(admin.ModelAdmin):
     list_display=['nombre_cargo', 'estado_cargo']
admin.site.register(Cargo, CargoAdmin)

class Usuario_CargoAdmin(admin.ModelAdmin):
     list_display=['id_usuario', 'id_cargo']
admin.site.register(Usuario_Cargo, Usuario_CargoAdmin)