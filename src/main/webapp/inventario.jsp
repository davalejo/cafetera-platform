<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Control de Inventario</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Control de Inventario</h1>
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
      <h2>Registrar Producto</h2>
      <form id="formInventario">
        <label for="nombreProducto">Nombre del Producto:</label>
        <input type="text" id="nombreProducto" required />
        <label for="descripcion">Descripción:</label>
        <input type="text" id="descripcion" required />
        <label for="precio">Precio:</label>
        <input type="number" id="precio" min="0" step="0.01" required />
        <label for="cantidadInventario">Cantidad Disponible:</label>
        <input type="number" id="cantidadInventario" min="0" required />
        <button type="submit">Agregar Producto</button>
      </form>
      <div id="mensajeInventario"></div>
      <h3>Inventario Actual</h3>
      <table id="tablaInventario">
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th>Actualizar</th>
          </tr>
        </thead>
        <tbody>
          <!-- Productos agregados dinámicamente -->
        </tbody>
      </table>
    </section>
  </main>
  <script src="script.js"></script>
</body>
</html>