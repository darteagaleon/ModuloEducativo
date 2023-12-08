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
            'nombre_curso': 'Nombre curso',
            'descripcion_curso': 'Descripción curso', 
            'estado_curso': 'Activo/Inactivo',
            'duracion_curso': 'Duración curso',
            'iconoCurso': 'Iconos curso',
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
        labels = {
            'nombre_curso': 'Nombre curso',
            'descripcion_curso': 'Descripción curso', 
            'estado_curso': 'Activo/Inactivo',
            'duracion_curso': 'Duración curso',
            'iconoCurso': 'Iconos curso',
            'id_cargo':'Cargo',
        }
        widgets = {
            'estado_curso': forms.CheckboxInput(attrs={'class': 'form-check-input value="False"'}),
        }  
#este código define un formulario de Django llamado ModulosForm que se utiliza para interactuar con el modelo de modelos. 
class ModulosForm(forms.ModelForm):
    class Meta:
        model = Modulos
        fields = '__all__'
        labels = {
            'nombre_modulo': 'Nombre módulo',
            'estado_modulo': 'Activo/Inactivo',
            'orden_modulo': 'Orden módulo',
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
        exclude = ['tipo']
        labels = {
            'nombre_clase': 'Nombre clase',
            'duracion_clase': 'Duración clase',
            'contenido_clase': 'Contenido clase',
            'descripcion_clase': 'Descripción clase',
            'estado_clase': 'Activo/Inactivo',
            'orden_clase': 'Orden clase',
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
            'nombre_evaluacion': 'Nombre evaluación',
            'numero_intentos': 'Número intentos',
            'descripcion_evaluacion': 'Descripción evaluación',
            'instrucciones_evaluacion': 'Instrucciones evaluación',
            'duracion_evaluacion_admin': 'Duración evaluación',
            'finalizada': 'Activo/Inactivo',
            'id_modulo': 'Módulo',
        }
        widgets = {
            'finalizada': forms.CheckboxInput(attrs={'class': 'form-check-input value="TRUE"' }),
        }
        
#este código define un formulario de Django llamado PreguntasForm que se utiliza para interactuar con el modelo de Preguntas.        
class PreguntasForm(forms.ModelForm):
    class Meta:
        model= Preguntas
        fields = '__all__'
        labels = {
            'nombre_pregunta': 'Nombre pregunta',
            'opcion_a': 'Opción A',
            'opcion_b': 'Opción B',
            'opcion_c': 'Opción C',
            'opcion_d': 'Opción D',
            'respuesta_correcta': 'Respuesta correcta',
            'id_evaluacion': 'Evaluación',
        }
  
#este código define un formulario de Django llamado MaterialApoyoForm que se utiliza para interactuar con el modelo de Material de apoyo.        
class MaterialApoyoForm(forms.ModelForm):
    class Meta:
        model = MaterialApoyo
        labels = {
            'NombreMaterialApoyo': 'Nombre material apoyo',
            'DescripcionMaterialApoyo': 'Descripción material apoyo',
            'Archivo': 'Archivo',
            'id_curso': 'Curso',
        }
        fields = ['NombreMaterialApoyo', 'DescripcionMaterialApoyo', 'Archivo', 'id_curso']





    






        
        
