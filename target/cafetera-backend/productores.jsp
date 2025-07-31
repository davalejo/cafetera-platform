<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Gestión de Productores</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Gestión de Productores</h1>
    <nav>
      <ul>
        <li><a href="index">Inicio</a></li>
        <li><a href="analisis">Análisis</a></li>
        <li><a href="carrito">Carrito</a></li>
        <li><a href="inventario">Inventario</a></li>
        <li><a href="pagos">Pagos</a></li>
        <li><a href="pedidos">Pedidos</a></li>
        <li><a href="productores">Productores</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <section>
      <h2>Registrar Productor</h2>
      <form id="formProductor">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" required />
        <label for="ubicacion">Ubicación:</label>
        <input type="text" id="ubicacion" required />
        <label for="tipoCafe">Tipo de Café:</label>
        <input type="text" id="tipoCafe" required />
        <label for="certificaciones">Certificaciones:</label>
        <textarea id="certificaciones" required></textarea>
        <button type="submit">Guardar</button>
      </form>
      <div id="mensaje"></div>
      <h3>Lista de Productores</h3>
      <table id="tablaProductores">
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Ubicación</th>
            <th>Tipo de Café</th>
            <th>Certificaciones</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          
        </tbody>
      </table>
    </section>
  </main>
  <script src="script.js"></script>
</body>
</html>