
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Antonio
 */
public class UsuarioDAO extends ActionSupport {

    private Usuario usuario;

    public UsuarioDAO() {
    }

    public UsuarioDAO(Usuario usuario) {
        this.usuario = usuario;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
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
    public Usuario getMiUser() {
        return usuario;
    }

    /**
     *
     * @param miUser
     */
    public void setMiUser(Usuario miUser) {
        this.usuario = miUser;
    }

    //Crea un nuevo usuario en MySql por medio de un Insert

    /**
     *
     * @param nif
     * @param nombre
     * @param apellidos
     * @param movil
     * @param email
     * @param fecha_nacimiento
     * @param tipo
     * @param nombre_usuario
     * @param password
     */
    public void crear(String nif, String nombre, String apellidos, String movil, String email, String fecha_nacimiento, String tipo, String nombre_usuario, String password) {

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();

            String sql = "INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password) "
                    + "                 VALUES ('" + nif + "','" + nombre + "','" + apellidos + "','" + movil + "','" + email + "','" + fecha_nacimiento + "','" + tipo + "','" + nombre_usuario + "','" + password + "')";

            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            JOptionPane.showMessageDialog(null, "Creación de Usuario [OK]");

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Insert Erroneo: " + e);

        }

    }

    //Actualiza los datos de un usuario en MySql por medio de un Update

    /**
     *
     * @param nif
     * @param nombre
     * @param apellidos
     * @param movil
     * @param email
     * @param fecha_nacimiento
     * @param tipo
     * @param password
     * @param id
     * @param nombre_usuario
     */
    public void editar(String nif, String nombre, String apellidos, String movil, String email, String fecha_nacimiento, String tipo, String password,int id, String nombre_usuario) {

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            String sql = "UPDATE usuarios SET nif='" + nif + "',nombre='" + nombre + "',apellidos='" + apellidos + "',movil='" + movil + "',email='" + email + "',fecha_nacimiento='" + fecha_nacimiento + "',tipo='"+ tipo +"',password='" + password +"'"+" WHERE id='"+id+"'";
        
        
            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            JOptionPane.showMessageDialog(null, "Datos Actualizados Correctamente");

        } catch (HeadlessException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Actualizar Erroneo: " + e);
        }

    }

    //Borra usuario en MySql por medio de un Delete

    /**
     *
     * @param nif
     */
    public void borrar(String nif) {
        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            String sql = "DELETE FROM usuarios WHERE nif='" + nif + "'";
            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            JOptionPane.showMessageDialog(null, "Usuario Borrado Correctamente");

        } catch (HeadlessException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Borrado Erroneo: " + e);
        }
    }

    //Devuelve un usuario con todos sus campos

    /**
     *
     * @param nif
     * @return
     */
    public Usuario buscar(String nif) {

        usuario = new Usuario();

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            Statement s = access.createStatement();

            String queryNif = "select * from usuarios where nif='" + nif + "'";
            ResultSet rs = s.executeQuery(queryNif);

            //Comprobamos si existe previamente el NIF introducido
            if (rs.next()) {

                //Cargamos el objecto con los datos de la busqueda.
                usuario.setId(rs.getInt("id"));
                usuario.setNif(rs.getString("nif"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setApellidos(rs.getString("apellidos"));
                usuario.setMovil(rs.getString("movil"));
                usuario.setEmail(rs.getString("email"));
                usuario.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                usuario.setNombre_usuario(rs.getString("nombre_usuario"));
                usuario.setPassword(rs.getString("password"));
          
                rs.close();
            } //Comprobamos si existe o no el nombre de usuario
            else {
                this.usuario=null;
                JOptionPane.showMessageDialog(null, "No existe el usuario con NIF: " + nif, "Atención", JOptionPane.WARNING_MESSAGE);
            }
            s.close();
            access.close();

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Error en la busqueda: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);

        }
     
         return usuario;
    }
}
