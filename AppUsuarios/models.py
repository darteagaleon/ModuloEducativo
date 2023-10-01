from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Cargo(models.Model):
     nombre_cargo=models.CharField(max_length=100)
     estado_cargo= models.BooleanField(default=False)
     

     def __str__(self):
          return self.nombre_cargo
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Cargos'

class Usuario_Cargo(models.Model):
     id_usuario=models.ForeignKey(User, on_delete=models.CASCADE)
     id_cargo=models.ForeignKey(Cargo, on_delete=models.CASCADE)
     
     def __str__(self):
          return self.id_usuario.username+" - "+self.id_cargo.nombre_cargo #Para mostrar el nombre del usuario y el cargo
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Usuario_Cargo'

class Clase_Usuario(models.Model):
     id_usuario_cargo=models.ForeignKey(Usuario_Cargo, on_delete=models.CASCADE, null=True)
     id_modulo=models.ForeignKey('AppCursos.Modulos', on_delete=models.CASCADE, null=True)
     id_clase=models.ForeignKey('AppCursos.Clases', on_delete=models.CASCADE, null=True)
     visto=models.BooleanField(default=False)
     def __str__(self):
          return self.id_usuario_cargo.id_usuario.username+" - "+self.id_modulo.nombre_modulo+" - "+self.id_clase.nombre_clase

     class Meta:
          verbose_name_plural = 'Clase_Usuario'

