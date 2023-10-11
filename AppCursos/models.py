from django.db import models
from django.utils import timezone
from AppUsuarios.models import *



# Se crea el modelo de la tabla Cursos de la empresa
class Cursos(models.Model):
     nombre_curso=models.CharField(max_length=100)
     descripcion_curso = models.CharField(max_length=500)
     estado_curso= models.BooleanField(default=False)
     duracion_curso = models.IntegerField(blank=True, null=True)
     iconoCurso = models.ImageField(upload_to='IconosCurso', null=True,blank=True) 
     #Se crea la relacion a Cargos
     id_cargo=models.ForeignKey(Cargo, on_delete=models.CASCADE,null=True)

     def __str__(self):
          return self.nombre_curso
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Cursos'


# Se crea el modelo de la tabla Modulos de la empresa
class Modulos(models.Model):
     nombre_modulo=models.CharField(max_length=100)
     estado_modulo= models.BooleanField(default=False)
     orden_modulo = models.IntegerField(blank=True, null=True)
     #Se crea la relacion a cursos
     id_curso= models.ForeignKey(Cursos, on_delete=models.CASCADE,null=False)
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
     descripcion_clase = models.TextField(max_length=300)
     estado_clase= models.BooleanField(default=False)
     orden_clase = models.IntegerField(blank=True, null=True)
     #Se crea la relacion a modulos
     id_modulo= models.ForeignKey(Modulos, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_clase
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Clases'

#Se crea el modelo de la tabla Evaluaciones de la empresa
class Evaluaciones(models.Model):
     nombre_evaluacion=models.CharField(max_length=100)
     numero_intentos = models.IntegerField(default=2)
     descripcion_evaluacion = models.CharField(max_length=300, null=True,blank=True)
     instrucciones_evaluacion = models.TextField(max_length=300, null=True,blank=True)
     duracion_evaluacion_admin = models.IntegerField(default=30)
     finalizada = models.BooleanField(default=False)
     #Se crea la relacion a modulos
     id_modulo= models.ForeignKey(Modulos, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_evaluacion
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Evaluaciones'

#Se crea el modelo de la tabla Preguntas de la empresa
class Preguntas(models.Model):
     nombre_pregunta=models.TextField(max_length=100)
     opcion_a = models.CharField(max_length=100, null=True,blank=True)
     opcion_b = models.CharField(max_length=100, null=True,blank=True)
     opcion_c = models.CharField(max_length=100, null=True,blank=True)
     opcion_d = models.CharField(max_length=100, null=True,blank=True)
     respuesta_correcta = models.CharField(max_length=1, choices=[('a', 'A'), ('b', 'B'), ('c', 'C'), ('d', 'D'),], null=True,blank=True)

     #Se crea la relacion a modulos
     id_evaluacion= models.ForeignKey(Evaluaciones, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_pregunta
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Preguntas'


#Modelo de material de apoyo
class MaterialApoyo(models.Model):
     #idmaterial = models.IntegerField()
     NombreMaterialApoyo = models.CharField(max_length=255)
     DescripcionMaterialApoyo = models.TextField()
     Archivo = models.URLField()  # Para almacenar la URL del archivo en Google Drive
     #Se crea la relacion a cursos
     id_curso= models.ForeignKey(Cursos, on_delete=models.CASCADE,null=True) #Se crea la relacion a cursos
     def __str__(self):
          return self.NombreMaterialApoyo