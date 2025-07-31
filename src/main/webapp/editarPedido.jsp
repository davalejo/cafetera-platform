<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Editar Pedido</title>
    <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
    <header>
        <h1>Editar Pedido</h1>
        <nav>
        <ul>
            <li><a href="index">Inicio</a></li>
            <li><a href="pedidos">Pedidos</a></li>
        </ul>
        </nav>
    </header>
    <main>
        <section>
        <form method="post" action="editarPedido">
            <input type="hidden" name="id" value="<%= request.getAttribute("id") %>" />
            <label for="idProductor">ID Productor:</label>
            <input type="number" id="idProductor" name="idProductor" value="<%= request.getAttribute("idProductor") %>" required />
            <label for="clienteNombre">Cliente:</label>
            <input type="text" id="clienteNombre" name="clienteNombre" value="<%= request.getAttribute("clienteNombre") %>" required />
            <label for="productoCafe">Producto:</label>
            <input type="text" id="productoCafe" name="productoCafe" value="<%= request.getAttribute("productoCafe") %>" required />
            <label for="cantidadKg">Cantidad (kg):</label>
            <input type="number" step="0.01" id="cantidadKg" name="cantidadKg" value="<%= request.getAttribute("cantidadKg") %>" required />
            <label for="precioUnitario">Precio Unitario:</label>
            <input type="number" step="0.01" id="precioUnitario" name="precioUnitario" value="<%= request.getAttribute("precioUnitario") %>" required />
            <label for="estadoPedido">Estado:</label>
            <input type="text" id="estadoPedido" name="estadoPedido" value="<%= request.getAttribute("estadoPedido") %>" required />
            <button type="submit">Actualizar</button>
        </form>
        </section>
    </main>
</body>
</html>