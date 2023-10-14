from django.apps import AppConfig


class AppusuariosConfig(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "AppUsuarios"

    def ready(self): #para que cargue el archivo signals
        import AppUsuarios.signals
