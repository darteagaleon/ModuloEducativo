from django.db import models

# Create your models here.
#Se crea el modelo de la tabla intermedia Curso-Usuario de la empresa
# class Curso_Usuario(models.Model):
#      nombre_usuario=models.CharField(max_length=100)
#      apellido_usuario=models.CharField(max_length=100)

#      def __str__(self):
#           return self.nombre_usuario


# Se crea el modelo de la tabla Cursos de la empresa
class Cursos(models.Model):
     nombre_curso=models.CharField(max_length=100)
     descripcion = models.CharField(max_length=500)
     estado_curso= models.BooleanField(default=False)
     duracion_curso = models.IntegerField( default=0)
     #Se crea la relacion
     # nombre_usuario= models.ForeignKey(Curso_Usuario, on_delete=models.CASCADE,null=False)
     def __str__(self):
          return self.nombre_curso
     #Sirve para mostrar el nombre de la tabla en el admin sin la palabra "s"
     class Meta:
          verbose_name_plural = 'Cursos'


          
