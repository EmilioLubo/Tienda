<%-- 
    Document   : deleteForm
    Created on : 29 jun. 2022, 10:08:13
    Author     : imac
--%>
<jsp:include page="./head.jsp"/>
        <title>Borrar ${productDelete.nombreMarca}</title>
    </head>
    <body>
        <jsp:include page="./navbar.jsp"/>
        <section class="py-3">
            <div class="container">
                <div class="row">
                    <h1 class="h3 text-center">Borrando Producto</h1>
                    <p class="lead text-center">Estás a punto de borrar ${productDelete.nombreMarca}.</p>
                </div>
            </div>
            <div class="container px-4 mt-3">
                <div class="row align-items-center">
                    <div class="col-md-5 col-lg-4" >
                        <div class="card border p-4 rounded-3 bg-light">
                            <img class="card-img-top" src="${productDelete.image}" alt="Imágen de ${prodtDelete.nombreMarca}" />
                            <div class="card-body pb-0">
                                <div class="text-center">
                                    <h5 class="fw-bolder">${productDelete.nombreMarca}</h5>
                                    <p class="mb-1">Precio: $ ${productDelete.precio}</p>
                                    <ins>Stock: ${productDelete.stock}.</ins>                           
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8" >
                        <form action="${pageContext.request.contextPath}/app?accion=delete&id=${productDelete.code}"
                      method="post" class="was-validated border p-2 rounded-3 bg-light">
                    <div class="row text-center">
                        <div class="col-12 mb-2">
                            <p class="lead m-0">¿Estás seguro?</p>
                        </div>
                        <div class="col-12">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Mejor no</a>
                            <button type="submit" class="btn btn-danger">Sí, borrar</button>
                        </div>
                    </div>
                </form>
                    </div>
                </div>
            </div>
        </section>

        <script src="JS/fotobase64.js"></script>
    <jsp:include page="./scripts.jsp"/>