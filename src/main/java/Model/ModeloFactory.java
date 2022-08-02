
package Model;

/*@author imac*/
public class ModeloFactory {
    
    private ModeloFactory() {}
    
    private static ModeloFactory mf = null;
    
    public static ModeloFactory getInstance(){
        if(mf == null){
            mf = new ModeloFactory();
        }
        return mf;
    }
    
    public Modelo crearModelo(String nombreModelo){
        Modelo m = null;
        String nombreClase = mf.getClass().getPackage().getName() + ".Modelo" + nombreModelo;
        try{
            m = (Modelo) Class.forName(nombreClase).getDeclaredConstructor().newInstance();
        } catch(Exception exc){
            throw new RuntimeException("Ocurrió un error al instanciar un modelo tipo " + nombreClase, exc);
        }
        return m;
    }
}
