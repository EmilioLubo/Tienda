              <%-- 
    Document   : AddForm
    Created on : 28 jun. 2022, 14:21:09
    Author     : imac
--%>

<div class="modal fade" id="modalAgregarProducto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar Producto</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="addForm" action="${pageContext.request.contextPath}/app?accion=add"
                  method="post" class="was-validated">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6 mb-3">
                            <label for="nombreProducto" class="form-label">Nombre: </label>
                            <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" required>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label for="marcaProducto" class="form-label">Marca: </label>
                            <input type="text" class="form-control" id="marcaProducto" name="marcaProducto" required>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label for="precioProducto" class="form-label">Precio: $</label>
                            <input type="number" class="form-control" id="precioProducto" name="precioProducto" required>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label for="stockProducto" class="form-label">Stock: </label>
                            <input type="number" class="form-control" id="stockProducto" name="stockProducto" required>
                        </div>
                        <div class="col-12 mb-3">
                            <label for="foto" class="form-label">Cargar foto</label>
                            <input type="file" class="form-control" id="inputFoto" name="foto">
                            <input type="hidden" id="fotoBase64" name="fotoBase64">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <Button type="reset" class="btn btn-warning text-dark">Borrar</Button>
                    <button type="submit" class="btn btn-success">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>
