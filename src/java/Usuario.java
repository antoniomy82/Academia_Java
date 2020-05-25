
/**
 *
 * @author Antonio
 */

public class Usuario {

    private int id;
    private String nif;
    private String nombre;
    private String apellidos;
    private String movil;
    private String email;
    private String fecha_nacimiento;
    private String tipo;
    private String nombre_usuario;
    private String password;

    /**
     *
     */
    public Usuario() {
    }

    /**
     *
     * @param id
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
    public Usuario(int id, String nif, String nombre, String apellidos, String movil, String email, String fecha_nacimiento, String tipo, String nombre_usuario, String password) {
        this.id = id;
        this.nif = nif;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.movil = movil;
        this.email = email;
        this.fecha_nacimiento = fecha_nacimiento;
        this.nombre_usuario = nombre_usuario;
        this.password = password;
        this.tipo = tipo;
    }

//Métodos Getter
    /**
     *
     * @return
     */
    public int getId() {
        return id;
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
     * @return
     */
    public String getNombre() {
        return nombre;
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
     * @return
     */
    public String getMovil() {
        return movil;
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
     * @return
     */
    public String getFecha_nacimiento() {
        return fecha_nacimiento;
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
     * @return
     */
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

//Métodos Setter        
    /**
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
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
     * @param nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
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
     * @param movil
     */
    public void setMovil(String movil) {
        this.movil = movil;
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
     * @param fecha_nacimiento
     */
    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
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
     * @param nombre_usuario
     */
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

}
