# Generated by Django 4.1.7 on 2023-04-22 00:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0002_alter_cursos_duracion_curso'),
    ]

    operations = [
        migrations.AddField(
            model_name='cursos',
            name='iconoCurso',
            field=models.ImageField(null=True, upload_to='IconosCurso'),
        ),
    ]
