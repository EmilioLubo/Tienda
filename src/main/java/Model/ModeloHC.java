
package Model;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
/*@author imac*/
public class ModeloHC implements Modelo {
    
    private List<Producto> productosGuardados;

    public ModeloHC() {
        this.productosGuardados = new ArrayList<>();
        productosIniciales();
    }
    
    @Override
    public List<Producto> getProductos(){
        return new ArrayList(this.productosGuardados);
    };
    
    @Override
    public Producto getProducto(int code){
        int i= 0;
        Producto encontrado = null;
        while(i < this.productosGuardados.size() && encontrado == null){
            Producto p = this.productosGuardados.get(i);
            if(p.getCode() == code){
                encontrado = p;
            } else{
                i++;
            }
        }
        if(encontrado == null){
            throw new RuntimeException("No se encontraron productos con ID: " + code);
        }
        return encontrado;
    }
    
    @Override
    public int addProducto(Producto p){
        this.productosGuardados.add(p);
        return 0;
    }
    
    @Override
    public int updateProducto(Producto p){
        Producto target = getProducto(p.getCode());
        int i = this.productosGuardados.indexOf(target);
        this.productosGuardados.set(i, p);
        return 0;
    }
    
    @Override
    public int removeProducto(int code){
        Producto target = getProducto(code);
        this.productosGuardados.remove(target);
        return 0;
    }
    
    private void productosIniciales(){
        try(InputStream is = Thread.currentThread().getContextClassLoader().getResourceAsStream("productImages.properties")){
            Properties props = new Properties();
            props.load(is);
            this.productosGuardados.add(new Producto(1, (String) props.get("COCA"), "Six-Pack", "Coca-Cola", 500, 100, 1));
            this.productosGuardados.add(new Producto(2, (String) props.get("SPRITE"), "Six-Pack", "Sprite", 450, 80, 1));
            this.productosGuardados.add(new Producto(3, (String) props.get("FANTA"), "Six-Pack", "Fanta", 450, 80, 1));
            this.productosGuardados.add(new Producto(4, (String) props.get("PDLTOROS"), "Six-Pack", "Paso de los Toros", 420, 50, 1));
            this.productosGuardados.add(new Producto(5, (String) props.get("QUILMES"), "Six-Pack", "Quilmes", 600, 200, 2));
        } catch(IOException exc){
            throw new RuntimeException("No se pudieron cargar los productos");
        }
    }
}
