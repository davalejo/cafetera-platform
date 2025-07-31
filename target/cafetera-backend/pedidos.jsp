<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Procesamiento de Pedidos</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header>
    <h1>Procesamiento de Pedidos</h1>
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
      <h2>Registrar Pedido</h2>
      <form id="formPedido">
        <label for="cliente">Cliente:</label>
        <input type="text" id="cliente" required />
        <label for="producto">Producto:</label>
        <input type="text" id="producto" required />
        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" min="1" required />
        <button type="submit">Registrar Pedido</button>
      </form>
      <div id="mensajePedido"></div>
      <h3>Lista de Pedidos</h3>
      <table id="tablaPedidos">
        <thead>
          <tr>
            <th>Cliente</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>Factura</th>
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