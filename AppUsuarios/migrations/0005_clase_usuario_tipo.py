# Generated by Django 4.1.7 on 2023-12-07 23:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppUsuarios', '0004_remove_usuario_cargo_clases_usuario_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='clase_usuario',
            name='tipo',
            field=models.BooleanField(default=True),
        ),
    ]
