package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Seguimiento {
    String StringFecha,StringResultado,StringDescripcion;
    int IntSeguimiento;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private int getIntSeguimiento(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_ID_SEGUIMIENTO FROM SEGUIMIENTO WHERE INT_ID_SEGUIMIENTO='"+IntId+"'");
        return Resultado.getInt("INT_ID_SEGUIMIENTO");
    }
    
    private String getStringFecha(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT FECHA FROM SEGUIMIENTO WHERE INT_ID_SEGUIMIENTO='"+IntId+"'");
        return Resultado.getString("FECHA");
    }
    
    private String getStringDescripcion(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_DESCRIPCION FROM SEGUIMIENTO WHERE INT_ID_SEGUIMIENTO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_DESCRIPCION");
    }
    
    private void setStringDescripcion(int IntId,String StringDescripcion,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE SEGUIMIENTO SET [NVARCHAR_DESCRIPCION] = '"+StringDescripcion+"' WHERE [INT_ID_SEGUIMIENTO] = '"+IntId+"'");
    }
    
    private String getStringResultado(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_RESULTADO FROM SEGUIMIENTO WHERE INT_ID_SEGUIMIENTO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_RESULTADO");
    }
    
    private void setStringResultado(int IntId,String StringResultado,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE SEGUIMIENTO SET [NVARCHAR_RESULTADO] = '"+StringResultado+"' WHERE [INT_ID_SEGUIMIENTO] = '"+IntId+"'");
    }
    
    
    public void Seguimiento( int IntSeguimiento, String StringFecha,String StringResultado,String StringDescripcion,boolean Existe) throws SQLException{
        if (Existe) {
            this.setStringDescripcion(IntSeguimiento,StringDescripcion,Existe);
            this.setStringResultado(IntSeguimiento,StringResultado,Existe);
           
        }else{
            db.DB().executeQuery("INSERT INTO SEGUIMIENTO VALUES('"+StringDescripcion+"','"+StringResultado+"')");
        }
    }  
}
