# Generated by Django 4.1.7 on 2023-10-01 00:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppCursos', '0006_materialapoyo'),
        ('AppUsuarios', '0003_alter_clase_usuario_options_clase_usuario_id_clase_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='usuario_cargo',
            name='id_cursos',
            field=models.ManyToManyField(blank=True, to='AppCursos.cursos'),
        ),
    ]