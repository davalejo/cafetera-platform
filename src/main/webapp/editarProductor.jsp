<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Editar Productor</title>
    <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
    <header>
        <h1>Editar Productor</h1>
        <nav>
        <ul>
            <li><a href="index">Inicio</a></li>
            <li><a href="productores">Productores</a></li>
        </ul>
        </nav>
    </header>
    <main>
        <section>
        <form method="post" action="editarProductor">
            <input type="hidden" name="id" value="<%= request.getAttribute("id") %>" />
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" value="<%= request.getAttribute("nombre") %>" required />
            <label for="ubicacion">Ubicación:</label>
            <input type="text" id="ubicacion" name="ubicacion" value="<%= request.getAttribute("ubicacion") %>" required />
            <label for="tipoCafe">Tipo de Café:</label>
            <input type="text" id="tipoCafe" name="tipoCafe" value="<%= request.getAttribute("tipoCafe") %>" required />
            <label for="certificaciones">Certificaciones:</label>
            <textarea id="certificaciones" name="certificaciones" required><%= request.getAttribute("certificaciones") %></textarea>
            <button type="submit">Actualizar</button>
        </form>
        </section>
    </main>
</body>
</html>