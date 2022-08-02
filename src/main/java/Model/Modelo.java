
package Model;

import java.util.List;
/*@author imac*/
public interface Modelo {
    
    public List<Producto> getProductos();
    
    public Producto getProducto(int code);
    
    public int addProducto(Producto p);
    
    public int updateProducto(Producto p);

    public int removeProducto(int code);
}
