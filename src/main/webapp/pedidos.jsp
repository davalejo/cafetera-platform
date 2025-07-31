<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <form method="post" action="pedidos">
        <label for="idProductor">ID Productor:</label>
        <input type="number" id="idProductor" name="idProductor" required />
        <label for="clienteNombre">Cliente:</label>
        <input type="text" id="clienteNombre" name="clienteNombre" required />
        <label for="productoCafe">Producto:</label>
        <input type="text" id="productoCafe" name="productoCafe" required />
        <label for="cantidadKg">Cantidad (kg):</label>
        <input type="number" step="0.01" id="cantidadKg" name="cantidadKg" min="1" required />
        <label for="precioUnitario">Precio Unitario:</label>
        <input type="number" step="0.01" id="precioUnitario" name="precioUnitario" required />
        <label for="estadoPedido">Estado:</label>
        <input type="text" id="estadoPedido" name="estadoPedido" required />
        <button type="submit">Registrar Pedido</button>
      </form>
      <div id="mensajePedido">
        <% if (request.getAttribute("mensajePedido") != null) { %>
          <p><%= request.getAttribute("mensajePedido") %></p>
        <% } %>
      </div>
      <h3>Lista de Pedidos</h3>
      <table id="tablaPedidos">
        <thead>
          <tr>
            <th>ID Productor</th>
            <th>Cliente</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>Precio Unitario</th>
            <th>Total Precio</th>
            <th>Estado</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <%
            java.util.List<com.cafetera.model.Pedido> pedidos = (java.util.List<com.cafetera.model.Pedido>) request.getAttribute("pedidos");
            if (pedidos != null) {
              for (com.cafetera.model.Pedido p : pedidos) {
          %>
          <tr>
            <td><%= p.getIdProductor() %></td>
            <td><%= p.getClienteNombre() %></td>
            <td><%= p.getProductoCafe() %></td>
            <td><%= p.getCantidadKg() %></td>
            <td><%= p.getPrecioUnitario() %></td>
            <td><%= p.getTotalPrecio() %></td>
            <td><%= p.getEstadoPedido() %></td>
            <td>
              <form method="get" action="editarPedido" style="display:inline;">
                <input type="hidden" name="id" value="<%= p.getIdPedido() %>" />
                <button type="submit">Editar</button>
              </form>
              <form method="post" action="eliminarPedido" style="display:inline;" onsubmit="return confirm('¿Seguro que deseas eliminar este pedido?');">
                <input type="hidden" name="id" value="<%= p.getIdPedido() %>" />
                <button type="submit">Eliminar</button>
              </form>
            </td>
          </tr>
          <%
              }
            }
          %>
        </tbody>
      </table>
    </section>
  </main>
  <script src="script.js"></script>
</body>
</html>