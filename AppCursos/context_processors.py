# se creo este archivo para que llame el grupo y verifique si es usuario o administrador y muestre el template correspondiente
# mediane la varieble group_name
from django.contrib.auth.models import Group

def group_name(request):
    group_name = None
    if request.user.is_authenticated:
        group = Group.objects.filter(user=request.user).first()
        if group:
            group_name = group.name
    return {'group_name': group_name}