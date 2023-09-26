document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('editarForm').addEventListener('submit', function (event) {
        event.preventDefault(); // Evita que el formulario se envíe de inmediato
        editar(); // Llama a la función para mostrar SweetAlert
    });

    function editar() {
        Swal.fire({
            title: 'Editado con éxito',
            icon: 'success',
            confirmButtonText: 'Aceptar',
            customClass: {
                confirmButton: 'swal-button-custom'
            }
        });
    }
});
