

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
    // Mostrar todas las preguntas de una en una
    let html = '<div class="contenedor"><div class="card"><div class="header"><h1>'; 
    html += 'Evaluación del Módulo ' +data.nombre + '</h1></div>';
    html += '<div class="body"><div class="content"><h2>Description</h2><p class="message">'; 
    html += data.descripcion + '</p></div>';
    html += '<h2>Instrucciones</h2><p class="message">';
    html += data.instrucciones + '</p>';
    html += '<h2>Duración</h2><p class="message"> ' ;
    html += data.duracion +'  minutos</p>';
    html += '<h2>Intentos</h2><p class="message"> ';
    html += data.intentos + '</p>';
    html += '<div class="button"><button type="button" class="subir">Comenzar</button></div></div>';

    let contenedor=document.getElementsByClassName("text")[0];
    // let contenido = document.createElement("div");
    contenedor.innerHTML = html;
    // contenedor.append(contenido);
    let botonComenzar = document.querySelector(".button .subir");
    botonComenzar.addEventListener("click", function() {
        comenzarEvaluacion(data);
    });

}

let preguntaActual = 0; // Variable para rastrear la pregunta actual
let respuestasCorrectas = 0; // Contador de respuestas correctas

function mostrarPreguntaActual(data) {
    
    if (data && Array.isArray(data.listaPreguntas) && preguntaActual < data.listaPreguntas.length) {
        let pregunta = data.listaPreguntas[preguntaActual];
        let html = '<div class="tabla"><div class="nombre_pregunta"><h1>';
        html += pregunta.nombre_pregunta + '</h1></div>';
        html += '<div class="opcion"><label><input type="radio" name="opcion" value="a">';
        html += 'A. ' + pregunta.opcion_a + '</label></div>';
        html += '<div class="opcion"><label><input type="radio" name="opcion" value="b">';
        html += 'B. ' + pregunta.opcion_b + '</label></div>';
        html += '<div class="opcion"><label><input type="radio" name="opcion" value="c">';
        html += 'C. ' + pregunta.opcion_c + '</label></div>';
        html += '<div class="opcion"><label><input type="radio" name="opcion" value="d">';
        html += 'D. ' + pregunta.opcion_d + '</label></div>';
        html += '</div>'; // Cierre del div de pregunta

        let contenedor = document.getElementsByClassName("text")[0];
        contenedor.innerHTML = html;

        // Agregar evento para el botón de siguiente
        let botonSiguiente = document.createElement("button");
        botonSiguiente.innerHTML = "Siguiente";
        botonSiguiente.addEventListener("click", function() {
            evaluarRespuesta(data, pregunta);
        });
        contenedor.appendChild(botonSiguiente);
    } else {
        // Mostrar resultados finales
        mostrarResultados(data);
    }
}
// let contenedor = document.getElementsByClassName("text")[0];
// contenedor.innerHTML = html;

// // Agregar evento para el botón de siguiente
// let botonSiguiente = document.createElement("button");
// botonSiguiente.innerHTML = "Siguiente";
// botonSiguiente.addEventListener("click", function() {
//     evaluarRespuesta(data, pregunta);
// });
// contenedor.appendChild(botonSiguiente);
// } else {
// // Mostrar resultados finales
// mostrarResultados(data);
// }
let respuestasUsuario = []; // Variable global para almacenar respuestas del usuario

function evaluarRespuesta(data, pregunta) {
    let opciones = document.getElementsByName("opcion");
    let respuestaUsuario = null;

    opciones.forEach(function(opcion) {
        if (opcion.checked) {
            respuestaUsuario = opcion.value;
        }
    });
    // Guardar la respuesta del usuario
    respuestasUsuario.push({ preguntaId: pregunta.id, respuesta: respuestaUsuario });

    if (respuestaUsuario === pregunta.respuesta_correcta.toString()) {
        respuestasCorrectas++;
    }

    // Incrementar el contador de pregunta actual
    preguntaActual++;

    // Mostrar la siguiente pregunta o los resultados finales
    mostrarPreguntaActual(data);
}

function mostrarResultados(data) {
    let contenedor = document.getElementsByClassName("text")[0];

    if (data && data.listaPreguntas) {
        // Calcular la puntuación mínima requerida
        let puntuacionMinimaRequerida = Math.ceil(data.listaPreguntas.length * 0.7);

        // Verificar si el usuario superó la puntuación mínima requerida
        if (respuestasCorrectas >= puntuacionMinimaRequerida) {
            contenedor.innerHTML += '<p>Felicidades, has superado la evaluación.</p>';
            contenedor.innerHTML += '<p>Respuestas correctas: ' + respuestasCorrectas + '</p>';
        } else {
            if (data.intentos > 0) {
                data.intentos--;
                contenedor.innerHTML += '<p>¡Ups! No has alcanzado la puntuación mínima. Tienes ' + data.intentos + ' intentos restantes.</p>';
                
                 // Agregar botón para intentar de nuevo solo si hay intentos disponibles
                 if (data.intentos > 0) {
                    let botonIntentarDeNuevo = document.createElement("button");
                    botonIntentarDeNuevo.innerHTML = "Intentar de nuevo";
                    botonIntentarDeNuevo.addEventListener("click", function() {
                        // Reiniciar la evaluación
                        respuestasUsuario = [];
                        comenzarEvaluacion(data);
                    });
                    contenedor.appendChild(botonIntentarDeNuevo);
                }
            } else {
                // Agregar mensaje de que se han agotado los intentos
                contenedor.innerHTML += '<p>Lo siento, has agotado todos tus intentos.</p>';
            }
        }
    } else {
        console.error("Los datos de la evaluación son incorrectos.");
    }
}
// Funcion para comenzar la evaluacion, activando el temporizador y mostrando la primera pregunta
function comenzarEvaluacion(listaPreguntas) {
    preguntaActual = 0;
    respuestasCorrectas = 0;
    respuestasUsuario = []; // Asegúrate de reiniciar respuestasUsuario
    mostrarPreguntaActual(listaPreguntas);
}
        // Se espera que el usuario de click en siguiente
        // Se evalua la pregunta y se muestra la siguiente pregunta
    




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



