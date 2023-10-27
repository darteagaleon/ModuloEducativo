

//Funcion para solicitar las preguntas de la evaluacion
function solicitarPreguntas(clase_id) {
    let url = "http://localhost:8000/usuario/ejecutar_evaluacion/";
    let datos = {
        'clase_id': clase_id,
    };
    
    mensajeAjax(url, datos, mostrarPreguntas);
}

//Funcion para mostrar las preguntas de la evaluacion

function mostrarPreguntas(data) {
    console.log(data);
    // Mostrar todas las preguntas de una en una
    let html = '<div class="tabla"><div class="titulo"><h1>'; 
    html += 'Evaluacion del Modulo ' +data.nombre + '</h1></div>';
    html += '<div class="descripcion"><p>'; 
    html += data.descripcion + '</p></div>';
    html += '<div class="instrucciones"><h2>Instrucciones</h2><div class="instrucciones2"><p id="parrafo">';
    html += data.instrucciones + '</p></div></div>';
    html += '<div class="duracion"><p>Duración: ' ;
    html += data.duracion +'  minutos</p></div>';
    html += '<div class="numIntentos"><p>Número de intentos: ';
    html += data.intentos + '</p></div>';
    html += '<div class="button"><button type="button" class="subir">Comenzar</button></div></div>';

    let contenedor=document.getElementsByClassName("text")[0];
    let contenido = document.createElement("div");
    contenido.innerHTML = html;
    contenedor.append(contenido);

    for(pregunta in data){
        // Se muestra pregunta, 
    }
        // Se espera que el usuario de click en siguiente
        // Se evalua la pregunta y se muestra la siguiente pregunta
    }




/**
 * Consulta AJAX al servidor por método POST
 * @param {*} urlserver :Direccion de envio
 * @param {*} datos     :Data en formato JavaScript object
 * @param {*} callBackFunction : Funcion de retorno
 */
function mensajeAjax(urlserver, datos, callBackFunction) {
    const csrftoken = getCookie('csrftoken');
    fetch(urlserver, {
        method: 'POST',
        credentials: 'same-origin',
        headers: {
            'Accept': 'application/json',
            'X-Requested-With': 'XMLHttpRequest',
            'X-CSRFToken': csrftoken,
    
        },
        body: JSON.stringify(datos) //JavaScript object of data to POST
    })
        .then(response => response.json())  //Convierte la respuesta JSON en data
        .then(data => {
            callBackFunction(data)
        })
        .catch((error) => {
            console.error('Error:', JSON.stringify(error));
        });
}


/**
 * Funcion para obtener el valor de una cookie
 * @param {*} name Nombre de la cookie
 * @returns el cvontenido de la cookie
 */

function getCookie(name) {
    let cookieValue = null;
    if (document.cookie && document.cookie !== "") {
        const cookies = document.cookie.split(";");
        for (let i = 0; i < cookies.length; i++) {
            const cookie = cookies[i].trim();
            // Does this cookie string begin with the name we want?
            if (cookie.substring(0, name.length + 1) === (name + "=")) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}

// 

