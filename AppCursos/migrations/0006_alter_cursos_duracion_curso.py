# Generated by Django 4.1.7 on 2023-04-22 00:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0005_alter_cursos_duracion_curso'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cursos',
            name='duracion_curso',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
