<%-- 
    Document   : index
    Created on : 23 jul. 2022, 22:40:06
    Author     : imac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/pages/head.jsp"/>
   <title>Tienda-Inicio</title>
    </head>
    <body class="d-flex flex-column justify-content-center">
        <jsp:include page="WEB-INF/pages/navbar.jsp"/>
        <main class="container d-flex flex-column justify-content-center align-items-center gap-5 m-5 p-5 align-self-center">
            <h1 class="text-center">¡Bienvenido!</h1>
            <a href="${pageContext.request.contextPath}/app" class="btn btn-success m-2">Ingresar</a>
        </main>
        <jsp:include page="WEB-INF/pages/login.jsp"/>
        <jsp:include page="WEB-INF/pages/scripts.jsp"/>