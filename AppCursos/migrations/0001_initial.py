
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Cursos",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("nombre_curso", models.CharField(max_length=100)),
                ("descripcion_curso", models.CharField(max_length=500)),
                ("estado_curso", models.BooleanField(default=False)),
                ("duracion_curso", models.IntegerField(blank=True, null=True)),
                (
                    "iconoCurso",
                    models.ImageField(blank=True, null=True, upload_to="IconosCurso"),
                ),
            ],
            options={
                "verbose_name_plural": "Cursos",
            },
        ),
        migrations.CreateModel(
            name="Evaluaciones",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("nombre_evaluacion", models.CharField(max_length=100)),
                ("numero_intentos", models.IntegerField(default=2)),
                (
                    "descripcion_evaluacion",
                    models.CharField(blank=True, max_length=300, null=True),
                ),
                (
                    "instrucciones_evaluacion",
                    models.TextField(blank=True, max_length=300, null=True),
                ),
                ("duracion_evaluacion_admin", models.IntegerField(default=30)),
                ("finalizada", models.BooleanField(default=False)),
            ],
            options={
                "verbose_name_plural": "Evaluaciones",
            },
        ),
        migrations.CreateModel(
            name="Preguntas",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("nombre_pregunta", models.TextField(max_length=100)),
                ("opcion_a", models.CharField(blank=True, max_length=100, null=True)),
                ("opcion_b", models.CharField(blank=True, max_length=100, null=True)),
                ("opcion_c", models.CharField(blank=True, max_length=100, null=True)),
                ("opcion_d", models.CharField(blank=True, max_length=100, null=True)),
                (
                    "respuesta_correcta",
                    models.CharField(
                        blank=True,
                        choices=[("a", "A"), ("b", "B"), ("c", "C"), ("d", "D")],
                        max_length=1,
                        null=True,
                    ),
                ),
                (
                    "nombre_evaluacion",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="AppCursos.evaluaciones",
                    ),
                ),
            ],
            options={
                "verbose_name_plural": "Preguntas",
            },
        ),
        migrations.CreateModel(
            name="Modulos",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("nombre_modulo", models.CharField(max_length=100)),
                ("estado_modulo", models.BooleanField(default=False)),
                (
                    "nombre_curso",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="AppCursos.cursos",
                    ),
                ),
            ],
            options={
                "verbose_name_plural": "Modulos",
            },
        ),
        migrations.AddField(
            model_name="evaluaciones",
            name="nombre_modulo",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE, to="AppCursos.modulos"
            ),
        ),
        migrations.CreateModel(
            name="Clases",
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_clase', models.CharField(max_length=100)),
                ('duracion_clase', models.IntegerField(blank=True, null=True)),
                ('contenido_clase', models.URLField()),
                ('descripcion_clase', models.TextField(max_length=300)),
                ('estado_clase', models.BooleanField(default=False)),
                ('nombre_modulo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='AppCursos.modulos')),
            ],
            options={
                "verbose_name_plural": "Clases",
            },
        ),
    ]
