# Generated by Django 4.1.7 on 2023-04-21 23:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cursos',
            name='duracion_curso',
            field=models.IntegerField(max_length=2),
        ),
    ]
