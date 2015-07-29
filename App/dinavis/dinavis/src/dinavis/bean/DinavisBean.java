package dinavis.bean;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dinavis.persistence.DenavisPersistence;

@ManagedBean(name = "denavisBean")
@ApplicationScoped
public class DinavisBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3900786052540998001L;
	/**
	 * Atributo usuario
	 */
	private String usuario;
	/**
	 * Atributo contraseña
	 */
	private String contraseña;
	/**
	 * Archivo csv a subir
	 */
	private Part file;
	/**
	 * Campo para mensaje de notificación
	 */
	private String fileContent;
	/**
	 * Elemento de persistencia
	 */
	private DenavisPersistence persistencia;

	/**
	 * Constructor
	 */
	public DinavisBean() {
		persistencia = new DenavisPersistence();
		try {
			persistencia.conectarBD();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Salida de la aplicación
	 * @return
	 */
	public String logout() {
		HttpSession session=(HttpSession)FacesContext.getCurrentInstance().getExternalContext().getSession(true);
		session.invalidate();
		return "login";
	}
	
	/**
	 * Método que permite subir un nuevo archivo
	 * @return
	 */
	public String nuevoUpload() {
		fileContent="";
		return "archivo";
	}
	
	/**
	 * Metodo que permite subir un archivo csv y ejecutar los scripts sql correspondientes
	 * @return
	 */
	public String upload() {
		int resultados=0;
		int truncar=0;
		boolean funcionOk=false;
		ResultSet funcion=null;
		String nombreArchivo = file.getSubmittedFileName();	
		try {
			// Almacenando archivo en temporal
			writeDataToFile(file.getInputStream(), file.getSubmittedFileName());
		} catch (IOException e1) {
			return "error";
		}
		System.out.println("\nDone!");
		try {
			// Conectando a la base de datos
						
			System.out.println("resultados:"+resultados);
			if (nombreArchivo.equalsIgnoreCase("CITES.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalcites;");
				resultados=persistencia.subirArchivo(nombreArchivo);				
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(6);");		
			}
			if (nombreArchivo.equalsIgnoreCase("GEO.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalgeo;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(5);");
			}
			if (nombreArchivo.equalsIgnoreCase("GEO_USER.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalgeouser;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMasteruser(3);");
			}
			if (nombreArchivo.equalsIgnoreCase("MAP.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalmap;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(4);");
			}
			if (nombreArchivo.equalsIgnoreCase("MAP_USER.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalmapuser;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMasteruser(1);");
			}
			if (nombreArchivo.equalsIgnoreCase("MEA_USER.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalmeauser;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMasteruser(2);");
			}
			if (nombreArchivo.equalsIgnoreCase("MED.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporalmed;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(3);");
			}
			if (nombreArchivo.equalsIgnoreCase("TAX.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporaltax;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(2);");
			}	
			if (nombreArchivo.equalsIgnoreCase("TAX_USER.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporaltaxuser;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMasteruser(4);");
			}
			if (nombreArchivo.equalsIgnoreCase("UICN.csv")) {
				truncar=persistencia.ejecutarSentenciaUpdate("truncate temporaluicn;");
				resultados=persistencia.subirArchivo(nombreArchivo);
				funcion=persistencia.ejecutarSentencia("select insert_DinavisMaster(1);");
			}
			if(funcion.next()){				
				funcionOk=true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			fileContent="Se presentó un error al momento de subir el archivo "+nombreArchivo+" comuniquesé con el área de soporte";
			return "error";
		}		
		fileContent="Se agregaron "+resultados+" registros del archivo "+nombreArchivo+". ";
		if(funcionOk)
			fileContent+="La función de inserción funcionó correctamente.";
		return "archivo";
	}

	/**
	 * Metodo de validación para el tipo de archivo a subir
	 * @param ctx
	 * @param comp
	 * @param value
	 */
	public void validateFile(FacesContext ctx, UIComponent comp, Object value) {
		List<FacesMessage> msgs = new ArrayList<FacesMessage>();
		boolean noEsCsv=true;
		Part file = (Part) value;
		if (file.getSize() > 1024000000) {
			msgs.add(new FacesMessage("el archivo maximo del archivo es 10 Mb"));
		}
		if (file.getContentType().equalsIgnoreCase("text/csv") && noEsCsv) {
			noEsCsv=false;
		}
		if (file.getContentType().equalsIgnoreCase("application/vnd.ms-excel")&& noEsCsv) {
			noEsCsv=false;
		}
		if (noEsCsv) {
			msgs.add(new FacesMessage("el archivo debe ser csv"));
		}
		if (!msgs.isEmpty()) {
			throw new ValidatorException(msgs);
		}
	}

	/**
	 * Metodo qe permite almacenar en local (carpeta temporal)
	 * el archivo csv qe será procesado.
	 * @param inputStream
	 * @param name
	 */
	private void writeDataToFile(InputStream inputStream, String name) {
		OutputStream os = null;

		try {

			os = new FileOutputStream("/tmp/" + name);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				os.write(bytes, 0, read);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (os != null) {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * Metodo que retorna el mensaje de notificación
	 * @return
	 */
	public String getFileContent() {
		return fileContent;
	}

	/**
	 * Metodo que asignar el mensaje de notificación
	 * @param fileContent
	 */
	public void setFileContent(String fileContent) {
		this.fileContent = fileContent;
	}

	/**
	 * Metodo que obtiene el archivo
	 * @return
	 */
	public Part getFile() {
		return file;
	}

	/**
	 * Metodo que asigna el archivo
	 * @param file
	 */
	public void setFile(Part file) {
		this.file = file;
	}

	/**
	 * Metodo que retorna el nombre del usuario
	 * @return
	 */
	public String getUsuario() {
		return usuario;
	}

	/**
	 * Metodo que asigna el nombre de usuario.
	 * @param usuario
	 */
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	/**
	 * Metodo que obtiene la contraseña
	 * @return
	 */
	public String getContraseña() {
		return contraseña;
	}

	/**
	 * Metodo que asigna la contraseña
	 * @param contraseña
	 */
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	/**
	 * Metodo de validación de usuario y contraseña
	 * @return
	 */
	public String login() {		
		if (usuario.isEmpty() || contraseña.isEmpty()) {
			return "login";
		}
		try {
			if (persistencia.consultarUsuario(usuario, contraseña)) {
				return "menu";
			} else {
			    FacesContext.getCurrentInstance().addMessage(null,new FacesMessage("Nombre de usuario y contraseña incorrecto, por favor intente de nuevo."));
				return "login";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "login";
		}

	}
}
