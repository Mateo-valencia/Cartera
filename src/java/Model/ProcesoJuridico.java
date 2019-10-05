package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ProcesoJuridico {
    String StringCausa,StringTipoProceso;
    int IntIdProceso;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringCausa(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CAUSA FROM PROCESO_JURIDICO WHERE INT_ID_PROCESO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_CAUSA");
    }
    
    private void setStringCausa(int IntId,String StringCausa,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE PROCESO_JURIDICO SET [NVARCHAR_CAUSA] = '"+StringCausa+"' WHERE [INT_ID_PROCESO] = '"+IntId+"'");
    }
    
    private String getStringTipoProceso(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPO_PROCESO FROM PROCESO_JURIDICO WHERE INT_ID_PROCESO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_TIPO_PROCESO");
    }
    
    private void setStringTipoProceso(int IntId,String StringCausa,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE PROCESO_JURIDICO SET [NVARCHAR_TIPO_PROCESO] = '"+StringCausa+"' WHERE [INT_ID_PROCESO] = '"+IntId+"'");
    }

    public void ProcesoJuridico(int IntIdProceso,String StringCausa,String StringTipoProceso,boolean Existe,int Idfactura ) throws SQLException{
        if (Existe) {
            this.setStringCausa(IntIdProceso,StringCausa,Existe);
            this.setStringCausa(IntIdProceso,StringTipoProceso,Existe);  
        }else{
            db.DB().executeQuery("INSERT INTO PROCESO_JURIDICO VALUES('"+StringCausa+"','"+StringTipoProceso+"')");
        }
    }
   
    
}
