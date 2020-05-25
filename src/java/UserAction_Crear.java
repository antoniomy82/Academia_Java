/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author Antonio
 */
public class UserAction_Crear extends ActionSupport {

    private String nif;
    private String nombre;
    private String apellidos;
    private String movil;
    private String email;
    private String fecha_nacimiento;
    private String tipo;
    private String nombre_usuario;
    private String password;

    private UsuarioDAO dao; //Inyectado por Spring (applicationContext.xml)

    public UserAction_Crear() {
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
    public String getNombre() {
        return nombre;
    }

    /**
     *
     * @param nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     *
     * @return
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     *
     * @param apellidos
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    /**
     *
     * @return
     */
    public String getMovil() {
        return movil;
    }

    /**
     *
     * @param movil
     */
    public void setMovil(String movil) {
        this.movil = movil;
    }

    /**
     *
     * @return
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     *
     * @return
     */
    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    /**
     *
     * @param fecha_nacimiento
     */
    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    /**
     *
     * @return
     */
    public String getNombreUsuario() {
        return nombre_usuario;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     *
     * @return
     */
    public String getTipo() {
        return tipo;
    }

    /**
     *
     * @param tipo
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     *
     * @return
     */
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     *
     * @param nombre_usuario
     */
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
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
     * @param dao
     */
    public void setDao(UsuarioDAO dao) {
        this.dao = dao;
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {

        if (checkInsert()) {

            try {
                //Quitamos las tildes y pasamos los datos a mayusculas
                nif = StringUtils.stripAccents(nif.toUpperCase());
                nombre = StringUtils.stripAccents(nombre.toUpperCase());
                apellidos = StringUtils.stripAccents(apellidos.toUpperCase());
                movil = StringUtils.stripAccents(movil.toUpperCase());

                //Llamamos a nuestro DAO y realizamos la creación
                dao.crear(nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password);
                return SUCCESS;
            } catch (Exception e) {
                return ERROR;
            }
        }
        return ERROR;
    }

    //Función para verificar que chequea que los datos a insertar son correctos
    /**
     *
     * @return @throws Exception
     */
    public Boolean checkInsert() throws Exception {

        boolean insertOk = false;

        //Creamos el password
        this.password = (nif.substring(2, 3) + movil.substring(2, 3) + nombre.substring(0, 1) + apellidos.substring(0, 1)).toLowerCase();

        //Pasamos a mayuscula NIF
        this.nif = this.getNif().toUpperCase();

        //Creamos el nombre de usuario con los 3 primeros caracteres del nombre + los 3 del apellido y en minusculas
        this.nombre_usuario = (this.getNombre().substring(0, 3) + this.getApellidos().substring(0, 3)).toLowerCase();

        try {

            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            Statement s = access.createStatement();

            String queryNif = "select * from usuarios where nif='" + this.getNif() + "'";
            ResultSet rs = s.executeQuery(queryNif);

            //Comprobamos si existe previamente el NIF introducido
            if (rs.next()) {
                insertOk = false;

                //Limpiamos el formulario
                this.nif = "";
                this.nombre = "";
                this.apellidos = "";
                this.movil = "";
                this.email = "";
                this.fecha_nacimiento = "";

                rs.close();

                JOptionPane.showMessageDialog(null, "El NIF ya existe en la BBDD [Usuario Existente]", "Atención", JOptionPane.WARNING_MESSAGE);

            } //Comprobamos si existe o no el nombre de usuario
            else {
                String userName = "select * from usuarios where " + "nombre_usuario='" + nombre_usuario + "'";
                ResultSet rs2 = s.executeQuery(userName);

                //Si existe ya un nombre de usuario igual, creamos otro nuevo (this.getNombreUsuario().equals(rs2.getString("nombre_usuario"))
                if (!rs2.next()) {
                    insertOk = true;
                } else {
                    this.nombre_usuario = nombre_usuario + nif.substring(2, 5);
                    insertOk = true;
                }
                rs2.close();

            }
            s.close();
            access.close();

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Check Erroneo: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);

        }
        return insertOk;
    }
}
