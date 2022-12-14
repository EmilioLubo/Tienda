<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}">ThunderStore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}">Inicio</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="" data-bs-toggle="modal" data-bs-target="#modalLogIn">Tienda</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contacto</a>
        </li>
      </ul>
      <div class="d-flex">
        <button type="button" class="btn btn-outline-info me-2">Registrarse</button>
        <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#modalLogIn">Ingresar</button>
      </div>
    </div>
  </div>
</nav>