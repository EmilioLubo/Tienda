
package Model;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

/*@author imac*/
public class Conexion {
    private static Connection con;
    private static BasicDataSource ds;
    
    private static DataSource getDs(){
        if(ds == null){
            try{
                String url = "jdbc:mysql://root:juajua873@localhost:3306/ThunderStore?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
                ds = new BasicDataSource();
                ds.setUrl(url);
                ds.setInitialSize(50);
            } catch(Exception e){
                throw new RuntimeException("Error al conectar con la base de datos", e);
            }
        }
        return ds;
    }
    
    public static Connection getConnection() throws SQLException{
        return getDs().getConnection();
    }
}
