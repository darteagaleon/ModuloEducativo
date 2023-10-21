from django import forms 
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User



#este código define un formulario de Django llamado CargoForm que se utiliza para interactuar con el modelo de crear_cargos.        
class CargoForm(forms.ModelForm):
    class Meta:
        model = Cargo
        fields = ['nombre_cargo', 'estado_cargo']


#este código define un formulario de Django llamado CrearUsuariosForm que se utiliza para interactuar con el modelo de crear_usuario.        
class CrearUsuariosForm(UserCreationForm):
    username = forms.CharField(label='Nombre de usuario', max_length=150)
    apellido = forms.CharField(max_length=30, label='Apellido', required=False)
    email = forms.EmailField(label='Correo electrónico', required=True, max_length=254)
    estadousuario = forms.BooleanField(required=False, initial=True)
    ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'))
    rol = forms.ChoiceField(choices=ROLES, label='Rol')
    cargo = forms.ModelChoiceField(queryset=Cargo.objects.all(), required=True, label='Cargo')


    class Meta:
        model = User  # Cambia el modelo a User
        fields = ['username', 'password1', 'password2', 'email', 'estadousuario', 'rol', 'cargo']

#este código define un formulario de Django llamado CrearUsuariosForm que se utiliza para interactuar con la edicion de usuarios        
class EditarUsuariosForm(forms.ModelForm):
    class Meta:
        model = User  # Utiliza el modelo User
        fields = ['username', 'email']

class EditarPerfilForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['apellido', 'estadousuario', 'rol', 'cargo']

#para llamar Curso_Usuarios
