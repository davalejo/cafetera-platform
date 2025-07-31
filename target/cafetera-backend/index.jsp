<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Plataforma Cafetera - Inicio</title>
  <link rel="stylesheet" href="styles.css" />
  <style>
    body {
      background: #f4e9d8;
      margin: 0;
      padding: 0;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    header {
      background: #6B4C3B;
      color: #fff;
      padding: 1.2rem 2rem 0.7rem 2rem;
      text-align: center;
      width: 100vw;
      margin: 0;
      border-radius: 0 0 0 0;
      box-sizing: border-box;
    }
    header h1 {
      margin: 0 0 0.5rem 0;
      font-size: 1.7rem;
      letter-spacing: 1px;
    }
    nav ul {
      list-style: none;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      gap: 1.2rem;
      flex-wrap: wrap;
    }
    nav a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
      font-size: 1rem;
    }
    nav a:hover {
      text-decoration: underline;
    }
    .main-login-content {
      flex: 1 1 auto;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 80vh;
      width: 100vw;
      box-sizing: border-box;
    }
    .login-grid {
      display: grid;
      grid-template-columns: 1.2fr 2.2fr 1.2fr;
      align-items: center;
      width: 100%;
      max-width: 1250px;
      min-height: 480px;
      margin: 0 auto;
    }
    .login-img-col {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
    }
    .login-img {
      width: 95px;
      height: 95px;
      object-fit: contain;
      border-radius: 50%;
      box-shadow: 0 2px 8px rgba(107,76,59,0.13);
      background: #fff;
      border: 2px solid #eee;
    }
    .form-login-block {
      display: flex;
      flex-direction: column;
      align-items: stretch;
      background-color: #fff;
      border-radius: 16px;
      box-shadow: 0 0 18px rgba(0, 0, 0, 0.13);
      max-width: 540px;
      min-width: 340px;
      width: 100%;
      padding: 0;
      margin: 0 auto;
    }
    .form-login {
      background: none;
      box-shadow: none;
      border-radius: 0;
      padding: 2.2rem 2.5rem 1.5rem 2.5rem;
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: stretch;
    }
    main {
      padding: 0 2rem 1.2rem 2rem;
      text-align: center;
      width: 100%;
      box-sizing: border-box;
    }
    .imagen-inicio {
      width: 100%;
      max-width: 320px;
      display: block;
      margin: 1rem auto 1.2rem auto;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.08);
    }
    .login-footer {
      background: #eee;
      color: #6B4C3B;
      width: 100vw;
      padding: 0.7rem 2rem;
      text-align: center;
      font-size: 1rem;
      font-weight: 500;
      letter-spacing: 0.5px;
      margin-top: 2rem;
      border-radius: 0 0 0 0;
      box-sizing: border-box;
    }
    @media (max-width: 1200px) {
      .login-grid {
        grid-template-columns: 0.7fr 2fr 0.7fr;
        max-width: 98vw;
      }
      .form-login-block {
        max-width: 98vw;
        min-width: unset;
      }
      .form-login {
        padding: 1.5rem 1rem 1rem 1rem;
      }
      .login-img {
        width: 70px;
        height: 70px;
      }
    }
    @media (max-width: 700px) {
      .main-login-content {
        align-items: flex-start;
        min-height: unset;
      }
      .login-grid {
        grid-template-columns: 1fr;
        grid-template-rows: auto auto auto;
        max-width: 100vw;
        gap: 1.2rem;
      }
      .login-img-col {
        justify-content: center;
        margin: 0.5rem 0;
      }
      .form-login-block {
        margin: 0 auto;
        max-width: 98vw;
      }
      .login-footer {
        font-size: 0.92rem;
        padding: 0.7rem 0.5rem;
      }
    }
  </style>
</head>
<body>
  
  <header>
    <h1>Plataforma Cafetera</h1>
    <nav>
      <ul>
        <li><a href="productores.html">Productores</a></li>
        <li><a href="pedidos.html">Pedidos</a></li>
        <li><a href="inventario.html">Inventario</a></li>
        <li><a href="analisis.html">Análisis de Datos</a></li>
        <li><a href="pagos.html">Pagos</a></li>
        <li><a href="carrito.html">Carrito</a></li>
        <li><a href="#" onclick="cerrarSesion()">Cerrar Sesión</a></li>
      </ul>
    </nav>
  </header>

  
  <div class="main-login-content">
    <div class="login-grid">
      
      <div class="login-img-col">
        <img src="img/coffee-cup-logo-coffee-shop-icon-design-free-vector.jpg" alt="Logo de café" class="login-img" />
      </div>
      
      <div class="form-login-block">
        
        <form id="formLogin" class="form-login" autocomplete="on">
          <h2>Iniciar Sesión</h2>
          <label for="usuario">Usuario:</label>
          <input type="text" id="usuario" required autocomplete="username" />
          <label for="password">Contraseña:</label>
          <input type="password" id="password" required autocomplete="current-password" />
          <button type="submit">Ingresar</button>
          <div id="mensajeLogin"></div>
        </form>

        <main>
          <section>
            <h2>Bienvenido a la Plataforma Cafetera</h2>
            <img src="img/8.-paisaje-cultural-cafetero.jpg" alt="Cultura cafetera colombiana" class="imagen-inicio" />
            <p>Seleccione una opción del menú para comenzar.</p>
          </section>
        </main>
      </div>

      <div class="login-img-col">
        <img src="img/coffee-cup-logo-coffee-shop-icon-design-free-vector.jpg" alt="Logo de café" class="login-img" />
      </div>
    </div>
  </div>

  <footer class="login-footer">
    &copy; 2025 Plataforma Cafetera Colombiana
  </footer>

  <script src="script.js"></script>
</body>
</html>