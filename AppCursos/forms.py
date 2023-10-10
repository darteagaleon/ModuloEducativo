from django import forms 
from .models import *
from PIL import Image
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

#este código define un formulario de Django llamado crear_cursos que se utiliza para interactuar con el modelo de Cursos.
class crear_cursos(forms.ModelForm):
    #se utiliza para configurar un formulario en Django basado en el modelo Cursos. 
    class Meta:
        model = Cursos
        fields = ['nombre_curso', 'descripcion_curso', 'estado_curso','duracion_curso','iconoCurso' ]
        labels = {
            'nombre_curso': 'Nombre del curso',
            'descripcion_curso': 'Descripción del curso', 
            'estado_curso': 'Activo/Inactivo',
            'duracion_curso': 'Duración del curso',
            'iconoCurso': 'Iconos del curso',
        }
        #se utiliza para personalizar la apariencia y el comportamiento de los campos del formulario en una aplicación Django.
        widgets = {
            
            'nombre_curso': forms.TextInput(attrs={'class':'form-control'}),
            'descripcion_curso': forms.TextInput(attrs={'class':'form-control'}),
            'estado_curso': forms.CheckboxInput(attrs={'class':'form-check-input value="False"'}),
            'duracion_curso': forms.NumberInput(attrs={'class':'form-control'}),
            'iconoCurso': forms.FileInput(attrs={'class':'form-control'}),
        }
#este código define un formulario de Django llamado CursosForm que se utiliza para interactuar con el modelo Cursos. 
class CursosForm(forms.ModelForm):
    class Meta:
        model = Cursos
        fields = ['nombre_curso', 'descripcion_curso', 'estado_curso', 'duracion_curso', 'iconoCurso']
#este código define un formulario de Django llamado ModulosForm que se utiliza para interactuar con el modelo de modelos. 
class ModulosForm(forms.ModelForm):
    class Meta:
        model = Modulos
        fields = '__all__'
#este código define un formulario de Django llamado ClasesForm que se utiliza para interactuar con el modelo de clases. 
class ClasesForm(forms.ModelForm):
    class Meta:
        model = Clases
        fields = '__all__'
#este código define un formulario de Django llamado EvaluacionForm que se utiliza para interactuar con el modelo de Evaluciones. 
class EvaluacionForm(forms.ModelForm):
    class Meta:
        model = Evaluaciones
        fields = '__all__'
        
#este código define un formulario de Django llamado PreguntasForm que se utiliza para interactuar con el modelo de Preguntas.        
class PreguntasForm(forms.ModelForm):
    class Meta:
        model= Preguntas
        fields = '__all__'

#este código define un formulario de Django llamado MaterialApoyoForm que se utiliza para interactuar con el modelo de Material de apoyo.        
class MaterialApoyoForm(forms.ModelForm):
    class Meta:
        model = MaterialApoyo
        fields = ['NombreMaterialApoyo', 'DescripcionMaterialApoyo', 'Archivo', 'id_curso']

#este código define un formulario de Django llamado User que se utiliza para interactuar con el modelo de crear_usuario.        
class CrearUsuariosForm(UserCreationForm):
    #personalizar la apariencia y el comportamiento de los campos del formulario en una aplicación Django.
    username = forms.CharField(label='Nombre de usuario', max_length=150)
    nombre = forms.CharField(max_length=30)
    apellido = forms.CharField(max_length=30)
    cedula = forms.CharField(max_length=10)
    email = forms.EmailField()
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    estadousuario = forms.BooleanField(required=False, initial=True)

    class Meta:
        model = User
        fields = ['username', 'nombre', 'apellido', 'cedula', 'email', 'password1', 'password2', 'estadousuario']
        help_text = {k: "" for k in fields}






        
        
