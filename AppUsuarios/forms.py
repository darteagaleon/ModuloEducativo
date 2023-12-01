from django import forms 
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User



#este código define un formulario de Django llamado CargoForm que se utiliza para interactuar con el modelo de crear_cargos.        
class CargoForm(forms.ModelForm):
    class Meta:
        model = Cargo
        fields = ['nombre_cargo', 'estado_cargo']
        labels = {
            'nombre_cargo': 'Nombre cargo',
            'estado_cargo': 'Estado cargo',
        }
        widgets = {
            'estado_cargo': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }  



#este código define un formulario de Django llamado CrearUsuariosForm que se utiliza para interactuar con el modelo de crear_usuario.        
class CrearUsuariosForm(UserCreationForm):
    username = forms.CharField(label='Nombre usuario', max_length=150)
    apellido = forms.CharField(max_length=30, label='Apellido', required=False)
    email = forms.EmailField(label='Correo electrónico', required=True, max_length=254)
    estadousuario = forms.BooleanField(
        required=False,
        initial=True,
<<<<<<< HEAD
        label='Estado Usuario',
        widget=forms.CheckboxInput(attrs={'class': 'form-check-input'})
    )   
=======
        label='Estado usuario',
        widget=forms.CheckboxInput(attrs={'class': 'form-check-input', 'value': 'False'})
    )    
>>>>>>> 13aaa334b00a67a2d5a42234dcb43f796fb66495
    ROLES = (('usuario', 'Usuario'), ('administrador', 'Administrador'))
    rol = forms.ChoiceField(choices=ROLES, label='Rol')
    cargo = forms.ModelChoiceField(queryset=Cargo.objects.all(), required=True, label='Cargo')


    class Meta:
        model = User  # Cambia el modelo a User
        fields = ['username','apellido','email', 'password1', 'password2',  'estadousuario', 'rol', 'cargo']
        
        

#este código define un formulario de Django llamado CrearUsuariosForm que se utiliza para interactuar con la edicion de usuarios        
class EditarUsuariosForm(forms.ModelForm):
    class Meta:
        model = User  # Utiliza el modelo User
        fields = ['username', 'email']
        labels = {
            'estado_usuario': 'Estado usuario',
            'email': 'Correo electrónico',
        }
        
        

class EditarPerfilForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['apellido', 'estadousuario', 'rol', 'cargo']
        labels = {
            'nombre': 'Nombre',
            'apellido': 'Apellido',
            'estadousuario': 'Estado usuario',
            'rol': 'Rol',
            'cargo': 'Cargo',
        }
        
        

#para llamar Curso_Usuarios
