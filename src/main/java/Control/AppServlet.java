package Control;

import Model.Modelo;
import Model.ModeloFactory;
import Model.Producto;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@author imac*/
@WebServlet(name = "AppServlet", urlPatterns = {"/app"})
public class AppServlet extends HttpServlet {

    private Modelo model;
    private final String LIST = "listado.jsp";
    private final String EDIT = "WEB-INF/pages/editForm.jsp";
    private final String REMOVE = "WEB-INF/pages/deleteForm.jsp";

    @Override
    public void init() throws ServletException {
        this.model = getModelo();
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        accion = accion == null ? "" : accion;
        int id;
        Producto p;
        switch(accion){
            case "edit":
                id = Integer.parseInt(request.getParameter("id"));
                p = model.getProducto(id);
                request.setAttribute("tieneFoto", !p.getImage().contains("nophoto"));
                request.setAttribute("productEdit", p);
                request.getRequestDispatcher(EDIT).forward(request, response);
                break;
            case "remove":
                id = Integer.parseInt(request.getParameter("id"));
                p = model.getProducto(id);
                request.setAttribute("productDelete", p);
                request.getRequestDispatcher(REMOVE).forward(request, response);
                break;
            default:
                request.setAttribute("listaProductos", model.getProductos());
                request.getRequestDispatcher(LIST).forward(request, response);
        }
                
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto p;
        String accion = request.getParameter("accion");
        accion = accion == null ? "" : accion;
        int id;
        switch(accion){
            case "add":
                p = new Producto();
                cargarProducto(p, request);
                model.addProducto(p);
                break;
            case "update":
                id = Integer.parseInt(request.getParameter("id"));
                p = model.getProducto(id);
                cargarProducto(p, request);
                model.updateProducto(p);
                break;
            case "delete":
                id = Integer.parseInt(request.getParameter("id"));
                model.removeProducto(id);
                break;
        }
        doGet(request, response);
    }
    
    private void cargarProducto(Producto p, HttpServletRequest request){
        p.setImage(request.getParameter("fotoBase64"));
        p.setNombre(request.getParameter("nombreProducto"));
        p.setMarca(request.getParameter("marcaProducto"));
        p.setPrecio(Double.parseDouble(request.getParameter("precioProducto")));
        p.setStock(Integer.parseInt(request.getParameter("stockProducto")));
    }
    
    private Modelo getModelo() throws ServletException {
        Modelo m = null;
        try(InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream("config.properties")){
            Properties props = new Properties();
            props.load(is);
            String tipoModelo = props.getProperty("tipoModelo");
            m = ModeloFactory.getInstance().crearModelo(tipoModelo);
        } catch(IOException exc){
            throw new ServletException("Error al leer 'config para iniciar el Servlet.'", exc);
        }
        return m;
    }
}