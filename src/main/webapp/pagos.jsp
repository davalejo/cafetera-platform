<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Integración de Pagos</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Integración de Pagos</h1>
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
      <h2>Configurar Pasarela de Pago</h2>
      <img src="img/Bulto-cafe.png" alt="Sector cafetero colombiano" style="width:100%;max-width:500px;display:block;margin:1.5rem auto 2rem auto;border-radius:12px;box-shadow:0 0 10px rgba(0,0,0,0.15);" />
      <form id="formPago">
        <label for="pasarela">Pasarela de Pago:</label>
        <input type="text" id="pasarela" required />
        <label for="notificacion">Notificación Email:</label>
        <input type="email" id="notificacion" required />
        <button type="submit">Configurar Pago</button>
      </form>
      <div id="mensajePago"></div>
      <h3>Historial de Pagos</h3>
      <table id="tablaPagos">
        <thead>
          <tr>
            <th>Pasarela</th>
            <th>Email</th>
            <th>Fecha</th>
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