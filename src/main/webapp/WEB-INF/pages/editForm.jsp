<%-- 
    Document   : EditForm
    Created on : 29 jun. 2022, 01:07:47
    Author     : imac
--%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="./head.jsp"/>
        <title>Editando ${productEdit.nombreMarca}</title>
    </head>
    <body>
        <jsp:include page="./navbar.jsp"/>
        <section class="py-3">
            <div class="container">
                <div class="row">
                    <h1 class="h3">Editando Producto</h1>
                    <p class="lead">Estás a punto de editar ${productEdit.nombreMarca}. Asegurate de hacer click en "Confirmar cambios".</p>
                </div>
            </div>
            <div class="container px-4 mt-3">
                <div class="row align-items-center">
                    <div class="col-md-5 col-lg-4" >
                        <div class="card border p-4 rounded-3 bg-light">
                            <img class="card-img-top" src="${productEdit.image}" alt="Foto de ${productEdit.nombreMarca}" />
                            <div class="card-body pb-0">
                                <div class="text-center">
                                    <h5 class="fw-bolder">${productEdit.nombreMarca}</h5>
                                    <p class="mb-1">Precio: $ ${productEdit.precio}</p>
                                    <ins>Stock: ${productEdit.stock}.</ins>                           
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8" >
                        <form id="addForm" action="${pageContext.request.contextPath}/app?accion=update&id=${productEdit.code}"
                              method="post" class="was-validated border p-4 rounded-3 bg-light">
                            <div class="row">
                                <div class="col-sm-6 mb-3">
                                    <label for="nombreProducto" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" value="${productEdit.nombre}" required>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <label for="marcaProducto" class="form-label">Marca</label>
                                    <input type="text" class="form-control" id="marcaProducto" name="marcaProducto" value="${productEdit.marca}" required>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <label for="precioProducto" class="form-label">Precio</label>
                                    <input type="number" class="form-control" id="precioProducto" name="precioProducto" value="${productEdit.precio}" required>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <label for="stockProducto" class="form-label">Stock</label>
                                    <input type="number" class="form-control" id="stockProducto" name="stockProducto" value="${productEdit.stock}" required>
                                </div>

                                <div class="col-12 mb-3">
                                    <label for="foto" class="form-label">
                                        <c:choose>
                                            <c:when test="${tieneFoto}">Modificar</c:when>
                                            <c:otherwise>Agregar</c:otherwise>
                                        </c:choose>
                                        foto
                                    </label>
                                    <input type="file" class="form-control" id="inputFoto" name="foto">
                                    <input type="hidden" id="fotoBase64" name="fotoBase64" value="${productEdit.image}}">
                                </div>
                            </div>
                            <div class="row justify-content-end mt-2">
                                <div class="col-12">
                                    <div class="float-end">
                                        <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary m-1">Volver atrás</a>
                                        <button type="reset" class="btn btn-danger m-1">Borrar campos</button>
                                        <button type="submit" class="btn btn-warning m-1">Confirmar cambios</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <script src="JS/fotobase64.js"></script>
    <jsp:include page="./scripts.jsp"/>