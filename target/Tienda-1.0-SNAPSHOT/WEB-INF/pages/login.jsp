<div class="modal fade" id="modalLogIn" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Inicio de Sesión</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="LogInForm" action="LogInServlet" method="post" class="was-validated">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6 mb-3">
                            <label for="nombreUs" class="form-label">Nombre: </label>
                            <input type="text" class="form-control" id="nombreUs" name="nombreUs" required>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label for="password" class="form-label">Contraseña: </label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <Button type="reset" class="btn btn-warning text-dark">Borrar</Button>
                    <button type="submit" name="log_btn" class="btn btn-success">Iniciar Sesión</button>
                </div>
            </form>
        </div>
    </div>
</div>