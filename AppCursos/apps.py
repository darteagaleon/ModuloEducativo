from django.apps import AppConfig

# Por que se crea esta clase?
# Porque se debe registrar la app en el archivo settings.py
class AppcursosConfig(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "AppCursos"
