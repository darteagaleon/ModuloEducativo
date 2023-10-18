# se creo este archivo para que llame el grupo de usuario en el template mediante el request
from django.contrib.auth.models import Group

class GroupMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        user = request.user
        group_name = None
        if user.is_authenticated:
            group = Group.objects.filter(user=user).first()
            if group:
                group_name = group.name

        request.group_name = group_name
        response = self.get_response(request)
        return response
