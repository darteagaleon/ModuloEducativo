from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy

@login_required

def login(request):
    
    return render (request,'login.html',{})


# Create your views here.
