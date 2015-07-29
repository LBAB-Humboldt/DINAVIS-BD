package dinavis.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.faces.context.FacesContext;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException;


public class DenavisPersistence{


	private DataSource ds = null;
	private Connection conn = null;
	private InitialContext ic;
	private String sentencia="";
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private boolean conectado;
	
	/**
	 * Constructor por defecto
	 */
	public DenavisPersistence(){
		conectado=false;
	}
	
	/**
	 * Metodo que permite conectar a la base de datos.
	 * @throws NamingException
	 * @throws SQLException
	 */
	public void conectarBD() throws NamingException, SQLException{
		ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/dinavisDB"); 
	    conn = ds.getConnection(); 
	    conectado=true;
	}
	
	/**
	 * Metodo que permite subir un archivo mediante la carga de datos por csv de MySQL
	 * @param nombreArchivo nombre del archivo csv a subir
	 * @return numero de registros subidos
	 * @throws SQLException
	 */
	public int subirArchivo(String nombreArchivo) throws SQLException{
		stmt = conn.createStatement();
		if(nombreArchivo.equalsIgnoreCase("CITES.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalcites"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("GEO.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalgeo"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("GEO_USER.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalgeouser"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("MAP.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalmap"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("MAP_USER.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalmapuser"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("MEA_USER.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalmeauser"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("MED.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporalmed"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("TAX.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporaltax"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("TAX_USER.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporaltaxuser"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }
		if(nombreArchivo.equalsIgnoreCase("UICN.csv")){
	    	sentencia="load data local infile '/tmp/"+nombreArchivo+"'"+
	    	" into table temporaluicn"+ 
	    	" fields terminated by ',' optionally enclosed by '\"'"+
	    	" lines terminated by '\\n'"+ 
	    	" ignore 1 lines;"; 
	    }		
		int val = stmt.executeUpdate(sentencia);
		return val;
	}
	
	/**
	 * Metodo que permite ejecutar una sentencia SQL
	 * @param sql sentencia a ejecutar
	 * @return retorna el resulset con los datos de la consulta
	 * @throws SQLException
	 */
	public ResultSet ejecutarSentencia(String sql) throws SQLException{
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		return rs;
	}
	
	/**
	 * Metodo que permite ejecutar una sentencia SQL
	 * @param sql sentencia a ejecutar
	 * @return retorna el resulset con los datos de la consulta
	 * @throws SQLException
	 */
	public Boolean consultarUsuario(String usuario, String password) throws SQLException{
		String query="SELECT * FROM seguser WHERE segUse_Login=? AND segUse_Password=?";		
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1,usuario);
		pstmt.setString(2,password);
		rs = pstmt.executeQuery();		
		if(rs.next()){
			return true;
		}
		return false;
	}
	
	/**
	 * Metodo que permite ejecutar una sentencia SQL
	 * @param sql sentencia a ejecutar
	 * @return retorna el resulset con los datos de la consulta
	 * @throws SQLException
	 */
	public int ejecutarSentenciaUpdate(String sql) throws SQLException, MySQLSyntaxErrorException{
		stmt = conn.createStatement();
		return stmt.executeUpdate(sql);
	}
	
	
	/**
	 * Metodo que permite desconectar la conexión al jdbc de mysql
	 * @throws SQLException 
	 */
	public void desconectarBD() throws SQLException{
	    conn.close();
	    conectado=false;
	}
	
	public String logout() {
		HttpSession session=(HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(true);
		session.invalidate();
	     return "homePage";
	}

	/**
	 * Get ResultSet
	 * @return
	 */
	public ResultSet getRs() {
		return rs;
	}

	/**
	 * Set ResultSet
	 * @param rs
	 */
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	/**
	 * Get bandera conexion
	 * @return
	 */
	public boolean isConectado() {
		return conectado;
	}

	/**
	 * Set bandera de conexion
	 * @param conectado
	 */
	public void setConectado(boolean conectado) {
		this.conectado = conectado;
	}
	
	
	

}
