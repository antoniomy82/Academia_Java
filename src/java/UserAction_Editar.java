/**
 *
 * @author Antonio
 */


import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Antonio
 */
public class UserAction_Editar extends ActionSupport{
    
    private String nif;
    private String nombre;
    private String apellidos; 
    private String movil; 
    private String email; 
    private String fecha_nacimiento; 
    private String tipo; 
    private String password;
    private String nombre_usuario;
    private int id;
    
    private UsuarioDAO dao; //Inyecto

    public UserAction_Editar() {
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
    public int getId() {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }
    
    /**
     *
     * @return
     * @throws Exception
     */
    @Override
    public String execute()throws Exception{    
          
          //Llamamos a nuestro objeto inyectado DAO_del y realizamos el borrado
          dao.editar(nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, password, id,nombre_usuario);
          return SUCCESS;
    }
}
    

