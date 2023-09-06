//Temporizador para la evaluacion
document.getElementById("iniciar").addEventListener("click", function () {
});

function iniciar() {
    var tiempo = 0;
    var intervalo = setInterval(function () {
        tiempo++;
        var minutos = Math.floor(tiempo / 60);
        var segundos = tiempo % 60;
        if (minutos < 10) {
            minutos = "0" + minutos;
        }
        if (segundos < 10) {
            segundos = "0" + segundos;
        }

        document.getElementById("cronometro").innerHTML = minutos + ":" + segundos;

        if (tiempo == 1800) {
            alert("Se acabo el tiempo");
            clearInterval(intervalo);
            document.getElementById("formulario").submit();
        }
    }, 1000);
}
document.getElementById("terminar").addEventListener("click", function() {
     clearInterval(intervalo);
});

iniciar();

