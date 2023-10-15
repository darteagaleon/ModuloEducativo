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
    apellido = forms.CharField(max_length=30, label='Apellido')
    email = forms.EmailField(label='Correo electrónico')
    estadousuario = forms.BooleanField(required=False, initial=True)
    ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'))
    role = forms.ChoiceField(choices=ROLES, label='Rol')
    cargo = forms.ModelChoiceField(queryset=Cargo.objects.all(), required=False, label='Cargo')

    class Meta:
        model = User  # Cambiar el modelo a User
        fields = ['username', 'apellido', 'email', 'estadousuario', 'role', 'cargo']
        help_texts = {k: "" for k in fields}