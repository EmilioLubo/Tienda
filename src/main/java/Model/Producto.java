
package Model;

/*@author imac*/
public class Producto {
    private int code;
    private String image;
    private String nombre;
    private String marca;
    private double precio;
    private int stock;
    private int categoryId;

    public Producto() {
    }

    public Producto(int code, String image, String nombre, String marca, double precio, int stock, int categoryId) {
        setCode(code);
        setImage(image);
        setNombre(nombre);
        setMarca(marca);
        setPrecio(precio);
        setStock(stock);
        setCategoryId(categoryId);
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        if(code < 0){
            throw new RuntimeException("Valor inválido para 'code'");
        }
        this.code = code;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        if(image == null || image.trim().isEmpty()){
            image = "Assets/nophoto.png";
        }
        if(!image.contains("nophoto") || this.image == null || this.image.contains("nophoto")){
            this.image = image.trim();
        }
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        if(nombre == null || nombre.trim().isEmpty()){
            throw new RuntimeException("No se ha provisto un nombre.");
        }
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        if(marca == null || marca.trim().isEmpty()){
            throw new RuntimeException("No se ha provisto una marca.");
        }
        this.marca = marca;
    }
    
    public String getNombreMarca(){
        return this.nombre + " " + this.marca;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        if(precio < 1){
            throw new RuntimeException("Se ha provisto un precio inconsistente.");
        }
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        if(stock < 1){
            throw new RuntimeException("Se ha provisto un stock inconsistente.");
        }
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Producto{" + "code=" + code + ", image=" + image + ", nombre=" + nombre + ", marca=" + marca + ", precio=" + precio + ", stock=" + stock + ", categoría=" + categoryId + '}';
    }

    public void setCategoryId(int categoryId) {
        if(categoryId < 1){
            throw new RuntimeException("Se ha provisto un categoryId inconsistente.");
        }
        this.categoryId = categoryId;
    }
    
    
}
