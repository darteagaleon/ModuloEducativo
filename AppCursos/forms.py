from django import forms 
from .models import *
from PIL import Image
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from AppUsuarios.models import Cargo

#este código define un formulario de Django llamado crear_cursos que se utiliza para interactuar con el modelo de Cursos.
class crear_cursos(forms.ModelForm):
    #se utiliza para configurar un formulario en Django basado en el modelo Cursos. 
    class Meta:
        model = Cursos
        fields = ['nombre_curso', 'descripcion_curso', 'estado_curso','duracion_curso','iconoCurso' ,'id_cargo']
        labels = {
            'nombre_curso': 'Nombre Curso',
            'descripcion_curso': 'Descripción Curso', 
            'estado_curso': 'Activo/Inactivo',
            'duracion_curso': 'Duración Curso',
            'iconoCurso': 'Iconos Curso',
            'id_cargo':'Cargo',
        }
        #se utiliza para personalizar la apariencia y el comportamiento de los campos del formulario en una aplicación Django.
        widgets = {
            
            'nombre_curso': forms.TextInput(attrs={'class':'form-control'}),
            'descripcion_curso': forms.TextInput(attrs={'class':'form-control'}),
            'estado_curso': forms.CheckboxInput(attrs={'class':'form-check-input value="False"'}),
            'duracion_curso': forms.NumberInput(attrs={'class':'form-control'}),
            'iconoCurso': forms.FileInput(attrs={'class':'form-control'}),
            'id_cargo': forms.Select(attrs={'class':'form-control'}),
        }
#este código define un formulario de Django llamado CursosForm que se utiliza para interactuar con el modelo Cursos. 
class CursosForm(forms.ModelForm):
    class Meta:
        model = Cursos
        fields = ['nombre_curso', 'descripcion_curso', 'estado_curso', 'duracion_curso', 'iconoCurso','id_cargo']
        widgets = {
            'estado_curso': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }  
#este código define un formulario de Django llamado ModulosForm que se utiliza para interactuar con el modelo de modelos. 
class ModulosForm(forms.ModelForm):
    class Meta:
        model = Modulos
        fields = '__all__'
        labels = {
            'nombre_modulo': 'Nombre Módulo',
            'estado_modulo': 'Activo/Inactivo',
            'orden_modulo': 'Orden Módulo',
            'id_curso': 'Curso',
        }
        widgets = {
            'estado_modulo': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }   
#este código define un formulario de Django llamado ClasesForm que se utiliza para interactuar con el modelo de clases. 
class ClasesForm(forms.ModelForm):
    class Meta:
        model = Clases
        fields = '__all__'
        labels = {
            'nombre_clase': 'Nombre Clase',
            'duracion_clase': 'Duración Clase',
            'contenido_clase': 'Contenido Clase',
            'descripcion_clase': 'Descripción Clase',
            'estado_clase': 'Activo/Inactivo',
            'orden_clase': 'Orden Clase',
            'id_modulo': 'Módulo',
        }
        widgets = {
            'estado_clase': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }
#este código define un formulario de Django llamado EvaluacionForm que se utiliza para interactuar con el modelo de Evaluciones. 
class EvaluacionForm(forms.ModelForm):
    class Meta:
        model = Evaluaciones
        fields = '__all__'
        labels = {
            'nombre_evaluacion': 'Nombre Evaluación',
            'numero_intentos': 'Número Intentos',
            'descripcion_evaluacion': 'Descripción Evaluación',
            'instrucciones_evaluacion': 'Instrucciones Evaluación',
            'duracion_evaluacion_admin': 'Duración Evaluación',
            'estado_evaluacion': 'Activo/Inactivo',
            'id_modulo': 'Módulo',
        }
        widgets = {
            'finalizada': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }
        
#este código define un formulario de Django llamado PreguntasForm que se utiliza para interactuar con el modelo de Preguntas.        
class PreguntasForm(forms.ModelForm):
    class Meta:
        model= Preguntas
        fields = '__all__'
        labels = {
            'nombre_pregunta': 'Nombre Pregunta',
            'opcion_a': 'Opción A',
            'opcion_b': 'Opción B',
            'opcion_c': 'Opción C',
            'opcion_d': 'Opción D',
            'respuesta_correcta': 'Respuesta Correcta',
            'id_evaluacion': 'Evaluación',
        }

#este código define un formulario de Django llamado MaterialApoyoForm que se utiliza para interactuar con el modelo de Material de apoyo.        
class MaterialApoyoForm(forms.ModelForm):
    class Meta:
        model = MaterialApoyo
        labels = {
            'NombreMaterialApoyo': 'Nombre Material Apoyo',
            'DescripcionMaterialApoyo': 'Descripción Material Apoyo',
            'Archivo': 'Archivo',
            'id_curso': 'Curso',
        }
        fields = ['NombreMaterialApoyo', 'DescripcionMaterialApoyo', 'Archivo', 'id_curso']





    






        
        
