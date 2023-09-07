# Generated by Django 4.1.7 on 2023-07-22 12:12

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0008_evaluaciones_alter_cursos_iconocurso_preguntas'),
    ]

    operations = [
        migrations.AddField(
            model_name='evaluaciones',
            name='descripcion_evaluacion',
            field=models.CharField(blank=True, max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='evaluaciones',
            name='instrucciones_evaluacion',
            field=models.CharField(blank=True, max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='evaluaciones',
            name='numero_intentos',
            field=models.IntegerField(default=2),
        ),
        migrations.AlterField(
            model_name='evaluaciones',
            name='duracion_evaluacion',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]