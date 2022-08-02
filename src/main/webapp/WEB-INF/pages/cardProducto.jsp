<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${listaProductos}" var="producto">
    <div class="card m-1" style="width: 18rem;">
        <img src="${producto.image}" class="card-img-top" alt="Imágen de ${producto.nombreMarca}">
        <div class="card-body d-flex flex-column align-items-center">
            <h5 class="text-center">${producto.nombreMarca}</h5>
            <p class="card-text">PRECIO: $ ${producto.precio}</p>
            <p class="card-text">STOCK: ${producto.stock}</p>
            <a type="button" href="${pageContext.request.contextPath}/app?accion=edit&id=${producto.code}" class="btn btn-outline-warning text-dark mb-2">Editar Producto</a>
            <a type="button" href="${pageContext.request.contextPath}/app?accion=remove&id=${producto.code}" class="btn btn-outline-danger">Eliminar Producto</a>
        </div>
    </div>
</c:forEach>