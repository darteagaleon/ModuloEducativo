# Generated by Django 4.1.7 on 2023-10-10 18:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0010_cargos'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cargos',
            old_name='activo',
            new_name='estado_cargo',
        ),
        migrations.RenameField(
            model_name='cargos',
            old_name='nombre',
            new_name='nombre_cargo',
        ),
    ]
