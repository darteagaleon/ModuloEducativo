from django.db import models
from django.utils import timezone

# Se crea el modelo de la tabla Cursos de la empresa
class Cursos(models.Model):
     nombre_curso=models.CharField(max_length=100)
     descripcion_curso = models.CharField(max_length=500)
     estado_curso= models.BooleanField(default=False)
     duracion_curso = models.IntegerField(blank=True, null=True)
     iconoCurso = models.ImageField(upload_to='IconosCurso', null=True,blank=True) 
     #Se crea la relacion
     # nombre_usuario= models.ForeignKey(Curso_Usuario, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_curso
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Cursos'


# Se crea el modelo de la tabla Modulos de la empresa
class Modulos(models.Model):
     nombre_modulo=models.CharField(max_length=100)
     estado_modulo= models.BooleanField(default=False)
     #Se crea la relacion a cursos
     nombre_curso= models.ForeignKey(Cursos, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_modulo
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Modulos'

# Se crea el modelo de la tabla Clases de la empresa
class Clases(models.Model):
     nombre_clase=models.CharField(max_length=100)
     duracion_clase = models.IntegerField(blank=True, null=True)
     contenido_clase = models.URLField(max_length=200)
     descripcion_clase = models.TextField(max_length=500)
     estado_clase= models.BooleanField(default=False)
     #Se crea la relacion a modulos
     nombre_modulo= models.ForeignKey(Modulos, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_clase
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Clases'

class Evaluaciones(models.Model):
     nombre_evaluacion=models.CharField(max_length=100)
     numero_intentos = models.IntegerField(default=2)
     descripcion_evaluacion = models.CharField(max_length=500, null=True,blank=True)
     instrucciones_evaluacion = models.TextField(max_length=500, null=True,blank=True)
     duracion_evaluacion_admin = models.IntegerField(default=30)
     finalizada = models.BooleanField(default=False)
     #Se crea la relacion a modulos
     nombre_modulo= models.ForeignKey(Modulos, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_evaluacion
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Evaluaciones'

class Preguntas(models.Model):
     nombre_pregunta=models.TextField(max_length=100)
     opcion_a = models.CharField(max_length=100, null=True,blank=True)
     opcion_b = models.CharField(max_length=100, null=True,blank=True)
     opcion_c = models.CharField(max_length=100, null=True,blank=True)
     opcion_d = models.CharField(max_length=100, null=True,blank=True)
     respuesta_correcta = models.CharField(max_length=1, choices=[('a', 'A'), ('b', 'B'), ('c', 'C'), ('d', 'D'),], null=True,blank=True)

     #Se crea la relacion a modulos
     nombre_evaluacion= models.ForeignKey(Evaluaciones, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_pregunta
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Preguntas'
          
