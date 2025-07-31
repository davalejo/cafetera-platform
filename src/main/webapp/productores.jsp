<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <form method="post" action="productores">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required />
        <label for="ubicacion">Ubicación:</label>
        <input type="text" id="ubicacion" name="ubicacion" required />
        <label for="tipoCafe">Tipo de Café:</label>
        <input type="text" id="tipoCafe" name="tipoCafe" required />
        <label for="certificaciones">Certificaciones:</label>
        <textarea id="certificaciones" name="certificaciones" required></textarea>
        <button type="submit">Guardar</button>
      </form>
      <div id="mensaje">
        <% if (request.getAttribute("mensaje") != null) { %>
          <p><%= request.getAttribute("mensaje") %></p>
        <% } %>
      </div>
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
          <%
            java.util.List<com.cafetera.model.Productor> productores = (java.util.List<com.cafetera.model.Productor>) request.getAttribute("productores");
            if (productores != null) {
              for (com.cafetera.model.Productor p : productores) {
          %>
          <tr>
            <td><%= p.getNombre() %></td>
            <td><%= p.getUbicacion() %></td>
            <td><%= p.getTipoCafe() %></td>
            <td><%= p.getCertificaciones() %></td>
            <td>
              <form method="get" action="editarProductor" style="display:inline;">
                <input type="hidden" name="id" value="<%= p.getIdProductor() %>" />
                <button type="submit">Editar</button>
              </form>
              <form method="post" action="eliminarProductor" style="display:inline;" onsubmit="return confirm('¿Seguro que deseas eliminar este productor?');">
                <input type="hidden" name="id" value="<%= p.getIdProductor() %>" />
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