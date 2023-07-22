from django.shortcuts import render,redirect
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.views.generic.edit import FormView
from .models import *
from django.urls import reverse_lazy
from .forms import crear_cursos,CursosForm
from django.contrib import messages
# Create your views here.

#vista para crear los cursos
class Crear_cursos (CreateView):
    model = Cursos
    form_class = crear_cursos
    template_name = 'Cursos/crear_cursos.html'
    success_url = reverse_lazy('appcursos:crear_cursos')

#Metodo para guardar los datos del formulario, se sobreescribe el metodo post
    def post(self, request, *args, **kwargs):
    #validando el estado del curso
        estatus=request.POST.get('estado_curso')
        #validando si el estado del curso esta activo o inactivo
        if estatus == 'on':
            estatus = True
        else:
            estatus = False
        #guardando los datos del formulario
        curso= Cursos.objects.create(nombre_curso=request.POST['nombre_curso'],descripcion_curso=request.POST['descripcion_curso'],estado_curso=estatus,duracion_curso=request.POST['duracion_curso'],iconoCurso=request.FILES['iconoCurso'])
        #super para llamar al metodo post de la clase padre
        return super().post(request, *args, **kwargs)


#vista para crear los modulos
class Crear_modulos (CreateView):
    model = Modulos
    fields = ['nombre_curso','nombre_modulo', 'estado_modulo']
    template_name = 'crear_modulos.html'
    success_url = '/modulos'

#vista para crear las clases
class Crear_clases (CreateView):
    model = Clases
    fields = ['nombre_modulo','nombre_clase', 'duracion_clase','contenido_clase','descripcion_clase','estado_clase']
    template_name = 'crear_clases.html'
    success_url = '/clases'

# class Listar_cursos (ListView):
#     model = Cursos
#     template_name = 'listar_cursos.html'


def Listar_cursos(request):
    listarc = Cursos.objects.all()
    context = {'listarc':listarc}
    return render(request,'Cursos/listar_cursos.html',context)
# def Listar_cursos(request):
#     search_query = request.GET.get('search', '')
#     if search_query:
#         cursos = Cursos.objects.filter(nombre_curso__contains=search_query)
#     else:
#         cursos = Cursos.objects.all()
#     context = {'listarc': cursos}
#     return render(request, 'Cursos/listar_cursos.html', context)


#vista para fitrar cursos 
def filtrar(request):
    filtro = Cursos.objects.filter(nombre_curso__contains=request.GET.get('search',''))
    context = {'filtro':filtro}
    return render(request, 'Cursos/listar_cursos.html', {'listarc': filtro})


#vista para editar un cursito

def update(request, curso_id):
    editar = Cursos.objects.get(id=curso_id)
    if request.method == "POST":
        form = CursosForm(request.POST, instance=editar)
        if form.is_valid():
            form.save()
            messages.success(request, 'Editado con éxito')
            return redirect("listar_cursos")
    else:
        form = CursosForm(instance=editar)
    
    context = {"form": form}
    return render(request, 'Cursos/editar_cursos.html', context)

