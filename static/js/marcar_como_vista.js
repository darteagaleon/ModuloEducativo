//Funcion para validar que una clase ya fue vista con AJAX

function marcarClaseComoVista(clase_id, user_id, url) {
     // Envía una solicitud AJAX para marcar la clase como vista
     alert(clase_id+'--'+ user_id +url)
     //Pasar parametros por GET
     fetch('http://localhost:8000/usuario/marcar_clase_como_vista/?clase_id=' + clase_id + '&user_id=' + user_id + '&url='+ url)
         .then(response => {
             if (response.ok) {
                 // Actualiza la interfaz o realiza otras acciones necesarias
                 console.log('Clase marcada como vista');
                 
             } else {
                 console.error('Error al marcar la clase como vista. Detalles:', response.status, response.statusText);
             }
         })
         .catch(error => {
             console.error('Error en la solicitud AJAX:', error);
         });
}