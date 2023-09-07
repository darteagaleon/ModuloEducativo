from django import forms 
from .models import Cursos, Modulos, Clases,Evaluaciones,Preguntas

class crear_cursos(forms.ModelForm):
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
        widgets = {
            
            'nombre_curso': forms.TextInput(attrs={'class':'form-control'}),
            'descripcion_curso': forms.TextInput(attrs={'class':'form-control'}),
            'estado_curso': forms.CheckboxInput(attrs={'class':'form-check-input value="False"'}),
            'duracion_curso': forms.NumberInput(attrs={'class':'form-control'}),
            'iconoCurso': forms.FileInput(attrs={'class':'form-control'}),
        }
#
class CursosForm(forms.ModelForm):
    class Meta:
        model = Cursos
        fields = '__all__'

class EvaluacionForm(forms.ModelForm):
    class Meta:
        model = Evaluaciones
        fields = '__all__'
        
class PreguntasForm(forms.ModelForm):
    class Meta:
        model= Preguntas
        fields = '__all__'

class ModulosForm(forms.ModelForm):
    class Meta:
        model = Modulos
        fields = '__all__'

class ClasesForm(forms.ModelForm):
    class Meta:
        model = Clases
        fields = '__all__'

        
        
