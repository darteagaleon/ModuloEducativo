# Generated by Django 4.1.7 on 2023-12-08 00:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppUsuarios', '0006_remove_clase_usuario_tipo'),
    ]

    operations = [
        migrations.AddField(
            model_name='clase_usuario',
            name='tipo',
            field=models.BooleanField(default=True),
        ),
    ]
