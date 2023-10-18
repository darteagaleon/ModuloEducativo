#Crear los grupos-----------------------------
#---------------------------------------------
from django.contrib.auth.models import Group
from django.dispatch import receiver #para manejar señales, eventos
from django.db.models.signals import post_save
from .models import Profile

@receiver(post_save, sender=Profile) #escucha la señal de guardar
def add_user_to_user_group(sender, instance, created, **kwargs):
    if created:
        try:
            group1 = Group.objects.get(name='usuarios')
        except Group.DoesNotExist:  #si el grupo no existe, crea el grupo
            group1= Group.objects.create(name='usuarios')
            group2= Group.objects.create(name='administrativos')
        instance.user.groups.add(group1) #lo agrega al grupo 1