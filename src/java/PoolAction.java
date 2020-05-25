
import java.util.Map;
import javax.naming.*;
import javax.sql.DataSource;
import org.apache.struts2.interceptor.SessionAware;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Antonio
 */
public class PoolAction extends ActionSupport implements SessionAware {

    private DataSource dataSource;
    private Connection conn;
    private String usuario;
    private String contrasena;
    private String usernif;
    private int userid;

    private Map<String, Object> sesion;

    public PoolAction() {
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public Map<String, Object> getSesion() {
        return sesion;
    }

    public void setSesion(Map<String, Object> sesion) {
        this.sesion = sesion;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    /**
     *
     * @return
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     *
     * @param usuario
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     *
     * @return
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     *
     * @param contrasena
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getUsernif() {
        return usernif;
    }

    public void setUsernif(String usernif) {
        this.usernif = usernif;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    /**
     *
     * @param map
     */
    @Override
    public void setSession(Map<String, Object> map) {
        sesion = map;
    }

    /**
     *
     * @return
     */
    public Map<String, Object> getSession() {
        return sesion;
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {
        boolean acceso = false;
        boolean esAdmin = false;
        boolean esAlumn = false;
        boolean esProfe = false;
        String miNif, nombre, apellidos;
        int myid;

        Context ctx = new InitialContext();
        if (ctx == null) {
            throw new Exception("Error en context");
        }
        dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/dbacademia");
        conn = dataSource.getConnection();
        Statement s = conn.createStatement();

        //Compruebo si el usuario existe
        String query = "select * from usuarios where " + "nombre_usuario='" + usuario + "' and password='" + contrasena + "'";

        ResultSet rs = s.executeQuery(query);
        if (rs.next()) {
            acceso = true;

            miNif = rs.getString("nif");
            myid = rs.getInt("id");
            nombre = rs.getString("nombre");
            apellidos = rs.getString("apellidos");

            if (null == rs.getString("tipo")) {
                acceso = false;
            } else //Si tipo es igual a Administrador
            {
                switch (rs.getString("tipo")) {
                    case "Administrador":
                        esAdmin = true;  //LOGIN
                        break;
                    case "Profesor":
                        esProfe = true; //SUCCESS
                        break;
                    case "Alumno":
                        esAlumn = true; //NONE
                        break;
                    default:
                        acceso = false;
                        break;
                }
            }

            //Cerramos el flujo
            rs.close();
            s.close();
            conn.close();

            if (acceso & esAdmin) {
                sesion.put("usuario", usuario);
                sesion.put("usernif", miNif);
                sesion.put("userid", myid);
                sesion.put("nombre", nombre);
                sesion.put("apellidos", apellidos);
                return LOGIN;
            } else if (acceso & esProfe) {
                sesion.put("usuario", usuario);
                sesion.put("usernif", miNif);
                sesion.put("userid", myid);
                sesion.put("nombre", nombre);
                sesion.put("apellidos", apellidos);
                return SUCCESS;
            } else if (acceso & esAlumn) {
                sesion.put("usuario", usuario);
                sesion.put("usernif", miNif);
                sesion.put("userid", myid);
                sesion.put("nombre", nombre);
                sesion.put("apellidos", apellidos);
                return NONE;
            }
        } else {
            //Cerramos el flujo
            rs.close();
            s.close();
            conn.close();
            usuario = "";
            contrasena = "";
            return INPUT;
        }
        return ERROR;
    }
}
