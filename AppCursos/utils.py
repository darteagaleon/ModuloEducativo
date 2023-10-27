# libreriua permite manejar datos binarios
from io import BytesIO
#el http sirve para obtener una plantilla html
from django.http import HttpResponse
from django.template.loader import get_template
#___________ libreria que renderiza el html a pdf------------------------------

from xhtml2pdf import pisa


# los atributos que toman son la ruta de la plantilla y el contexto
def render_to_pdf(template_src,context_dict={}):
    #la plantilla se obtiene usando el get_template y luego se renderiza el contexto proporcionado
    template = get_template(template_src)
    html=template.render(context_dict)
    # el resultado de esto se almacena en un objeto de BytesIO
    result=BytesIO()
#se crea una variable para coonverit el htl renderizado en un pdf y almacena el result
    pdf=pisa.pisaDocument(BytesIO(html.encode("UTF-8")),result)


    if not pdf.err:
        #valida que no alla errores
        response = HttpResponse(result.getvalue(), content_type='application/pdf')
        response['Content-Disposition'] = 'filename.pdf'  # Puedes cambiar el nombre del archivo PDF aquí
        return response
    return None