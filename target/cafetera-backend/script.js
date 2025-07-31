// Formulario: validación de Productor
document.getElementById('formProductor').addEventListener('submit', function (e) {
  e.preventDefault();

  const nombre = document.getElementById('nombre').value.trim();
  const ubicacion = document.getElementById('ubicacion').value.trim();
  const tipoCafe = document.getElementById('tipoCafe').value.trim();
  const certificaciones = document.getElementById('certificaciones').value.trim();
  const mensaje = document.getElementById('mensaje');

  if (!nombre || !ubicacion || !tipoCafe || !certificaciones) {
    mensaje.innerHTML = '<p style="color:red;">Por favor complete todos los campos.</p>';
    return;
  }

  mensaje.innerHTML = '<p style="color:green;">¡Productor registrado exitosamente!</p>';
  this.reset();
});

// Navegación dinámica entre vistas
function mostrarVista(id) {
  const vistas = document.querySelectorAll('.vista');
  vistas.forEach(v => v.classList.remove('activa'));
  document.getElementById(id).classList.add('activa');
}