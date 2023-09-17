from django import forms 
from .models import Cursos, Modulos, Clases,Evaluaciones,Preguntas


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





        
        
