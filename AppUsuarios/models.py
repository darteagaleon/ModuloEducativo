from django.db import models
from django.contrib.auth.models import User
from AppCursos.models import *
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth.models import Group

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
     tipo=models.BooleanField(default=True)#Verdadero:Clase, Falso:Evaluacion
     #Visto=True, cuando el usuario aprueba la evaluacion
     visto=models.BooleanField(default=False)
     def __str__(self):
          return self.id_usuario_cargo.id_usuario.username+" - "+self.id_modulo.nombre_modulo+" - "+self.id_clase.nombre_clase

     class Meta:
          verbose_name_plural = 'Clase_Usuario'


#********************************************************
# PERFIL DE USUARIO
class Profile(models.Model):
     apellido = models.CharField(max_length=30, verbose_name='Apellido', blank=True, null=True)
     email = models.EmailField(verbose_name='Correo electrónico', blank=True, max_length=254)
     estadousuario = models.BooleanField(default=True, verbose_name='Estado de Usuario')
     ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'))
     rol = models.CharField(max_length=15, choices=ROLES, verbose_name='Rol', blank=True, null=True)
     #Relacion a User
     user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='profile', verbose_name='Usuario')
     #Relacion a Cargo
     cargo = models.ForeignKey(Cargo, on_delete=models.SET_NULL, null=True, verbose_name='Cargo')

     
     class Meta:
          verbose_name = 'perfil'
          verbose_name_plural = 'perfiles'
          ordering = ['-id'] #para que muestre arriba el ultimo creado

@property
def last_login(self):
     return self.user.last_login

def __str__(self):
     return self.user.username

def create_user_profile(sender, instance, created, **kwargs):
     if created:
          Profile.objects.create(user=instance)

def save_user_profile(sender, instance, **kwargs):
     instance.profile.save()

post_save.connect(create_user_profile, sender=User)
post_save.connect(save_user_profile, sender=User)

#asignacion de grupo segun rol 
@receiver(post_save, sender=Profile)
def assign_user_to_group(sender, instance, created, **kwargs):
     if created:
          user = instance.user
          rol = instance.rol
          if rol == 'administrador':
               group = Group.objects.get(name='administrativos')
          else:
               group = Group.objects.get(name='usuarios')
          user.groups.add(group)
     