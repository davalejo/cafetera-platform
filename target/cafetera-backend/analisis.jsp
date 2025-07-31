<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Análisis de Datos</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Análisis de Datos</h1>
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
      <h2>Generar Reporte</h2>
      <form id="formReporte">
        <label for="tipoReporte">Tipo de Reporte:</label>
        <select id="tipoReporte" required>
          <option value="">Seleccione</option>
          <option value="produccion">Producción</option>
          <option value="ventas">Ventas</option>
          <option value="calidad">Calidad</option>
        </select>
        <label for="fechaInicio">Fecha Inicio:</label>
        <input type="date" id="fechaInicio" required />
        <label for="fechaFin">Fecha Fin:</label>
        <input type="date" id="fechaFin" required />
        <button type="submit">Generar Reporte</button>
      </form>
      <div id="resultadoReporte"></div>
    </section>
  </main>
  <script src="script.js"></script>
</body>
</html>