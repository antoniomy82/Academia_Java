
/**
 *
 * @author Antonio
 */
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Antonio
 */
public class UserAction_Buscar extends ActionSupport {

    private String nif;
    private UsuarioDAO dao; 
    private Usuario user; //Inyecto Spring

    public UserAction_Buscar() {
    }

   

    /**
     *
     * @return
     */
    public String getNif() {
        return nif;
    }

    /**
     *
     * @param nif
     */
    public void setNif(String nif) {
        this.nif = nif;
    }

    /**
     *
     * @return
     */
    public Usuario getUser() {
        return user;
    }

    /**
     *
     * @param user
     */
    public void setUser(Usuario user) {
        this.user = user;
    }

    /**
     *
     * @return
     */
    public UsuarioDAO getDao() {
        return dao;
    }

    /**
     *
     * @param dao_del
     */
    public void setDao(UsuarioDAO dao_del) {
        this.dao = dao_del;
    }

    /**
     *
     * @return
     */
    @Override
    public String execute() {

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            Statement s = access.createStatement();

            String queryNif = "select * from usuarios where nif='" + nif + "'";
            ResultSet rs = s.executeQuery(queryNif);

            //Comprobamos si existe previamente el NIF introducido
            if (rs.next()) {

                //Cargamos el objecto con los datos de la busqueda.
                user.setId(rs.getInt("id"));
                user.setNif(rs.getString("nif"));
                user.setNombre(rs.getString("nombre"));
                user.setApellidos(rs.getString("apellidos"));
                user.setMovil(rs.getString("movil"));
                user.setEmail(rs.getString("email"));
                user.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                user.setNombre_usuario(rs.getString("nombre_usuario"));
                user.setPassword(rs.getString("password"));
                user.setTipo(rs.getString("tipo"));

                rs.close();
                s.close();
                access.close();

                return SUCCESS;
            } //Comprobamos si existe o no el nombre de usuario
            else {
                JOptionPane.showMessageDialog(null, "No existe el usuario con NIF: " + nif, "Atención", JOptionPane.WARNING_MESSAGE);
                nif="";
                return ERROR;
            }

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Error en la busqueda: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);
            return ERROR;
        }
    }

    boolean equal(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
