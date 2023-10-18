from django.db import models
from django.contrib.auth.models import User
from AppCursos.models import *
from django.db.models.signals import post_save

# Create your models here.
#CARGOS
class Cargo(models.Model):
     nombre_cargo=models.CharField(max_length=100)
     estado_cargo= models.BooleanField(default=False)
     
     def __str__(self):
          return self.nombre_cargo
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Cargos'

#USUARIO_CARGO
class Usuario_Cargo(models.Model):
     id_usuario = models.OneToOneField(User, on_delete=models.CASCADE, related_name='cargo_usuario', unique=True)
     id_cargo = models.ForeignKey(Cargo, on_delete=models.CASCADE)

     def __str__(self):
          return f"{self.id_usuario.username} - {self.id_cargo.nombre_cargo}"

     class Meta:
          verbose_name_plural = 'Usuario_Cargo'

#CLASE_USUARIO
class Clase_Usuario(models.Model):
     id_usuario_cargo=models.ForeignKey(Usuario_Cargo, on_delete=models.CASCADE, null=True)
     id_modulo=models.ForeignKey('AppCursos.Modulos', on_delete=models.CASCADE, null=True)
     id_clase=models.ForeignKey('AppCursos.Clases', on_delete=models.CASCADE, null=True)
     visto=models.BooleanField(default=False)
     def __str__(self):
          return self.id_usuario_cargo.id_usuario.username+" - "+self.id_modulo.nombre_modulo+" - "+self.id_clase.nombre_clase

     class Meta:
          verbose_name_plural = 'Clase_Usuario'


#********************************************************
# PERFIL DE USUARIO
class Profile(models.Model):
     user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='profile', verbose_name='Usuario')
     apellido = models.CharField(max_length=30, verbose_name='Apellido', blank=True, null=True)
     email = models.EmailField(verbose_name='Correo electrónico', blank=True, null=True)
     estadousuario = models.BooleanField(default=True, verbose_name='Estado de Usuario')
     ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'))
     role = models.CharField(max_length=15, choices=ROLES, verbose_name='Rol', blank=True, null=True)
     cargo = models.ForeignKey(Cargo, on_delete=models.SET_NULL, null=True, blank=True, verbose_name='Cargo')

class Meta:
     verbose_name = 'perfil'
     verbose_name_plural = 'perfiles'
     ordering = ['-id'] #para que muestre arriba el ultimo creado

def __str__(self):
     return self.user.username

def create_user_profile(sender, instance, created, **kwargs):
     if created:
          Profile.objects.create(user=instance)

def save_user_profile(sender, instance, **kwargs):
     instance.profile.save()

post_save.connect(create_user_profile, sender=User)
post_save.connect(save_user_profile, sender=User)


     