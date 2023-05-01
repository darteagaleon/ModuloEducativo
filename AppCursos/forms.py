from django import forms 
from .models import Cursos, Modulos, Clases

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