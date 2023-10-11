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
    #personalizar la apariencia y el comportamiento de los campos del formulario en una aplicación Django.
    username = forms.CharField(label='Nombre de usuario', max_length=150)
    nombre = forms.CharField(max_length=30)
    apellido = forms.CharField(max_length=30)
    cedula = forms.CharField(max_length=10)
    email = forms.EmailField()
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirmar contraseña', widget=forms.PasswordInput)
    estadousuario = forms.BooleanField(required=False, initial=True)
    ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'),)
    rol = forms.ChoiceField(choices=ROLES, label='Rol')
    cargo = forms.ModelChoiceField(queryset=Cargo.objects.all(), required=False, label='Cargo')

    class Meta:
        model = User
        fields = ['username', 'nombre', 'apellido', 'cedula', 'email', 'password1', 'password2', 'estadousuario', 'rol', 'cargo']
        help_text = {k: "" for k in fields}