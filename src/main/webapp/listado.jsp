<%-- 
    Document   : listado
    Created on : 1 ago. 2022, 11:45:13
    Author     : imac
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="WEB-INF/pages/head.jsp"/>
    <title>ThunderStore-Tienda</title>
</head>
<body>
    <jsp:include page="WEB-INF/pages/navbar.jsp"/>
    <h1 class="text-center mt-5">Tienda</h1>
    <section class="container d-flex flex-column align-items-center">
        <Button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#modalAgregarProducto">Agregar Producto [+]</button>
        <c:choose>
            <c:when test="${listaProductos != null && !lista.isEmpty()}">
                <div class="row justify-content-center m-2 p-2">
                    <jsp:include page="WEB-INF/pages/cardProducto.jsp"/>
                </div>
            </c:when>
            <c:otherwise>
            <div class="row justify-content-center m-5 p-5">
                <h2 class="text-center">No hay productos disponibles...</h2>
            </div>
            </c:otherwise>
        </c:choose>
    </section>
    <jsp:include page="WEB-INF/pages/addForm.jsp"/>
    <jsp:include page="WEB-INF/pages/login.jsp"/>
    <script src="JS/fotobase64.js"></script>
    <jsp:include page="WEB-INF/pages/scripts.jsp"/>

