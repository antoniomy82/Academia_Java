
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Antonio
 */
public class TutoriasDAO extends ActionSupport {
    
    private int id_tuto;
    private int id_asignatura;
    private String nif_profesor;
    private String nif_alumno;
    private String dias_tutorias;
    private String mensaje;
    private Boolean leido;

    public TutoriasDAO() {
    }

    public TutoriasDAO(int id_tuto, int id_asignatura, String nif_profesor, String nif_alumno, String dias_tutorias, String mensaje, Boolean leido) {
        this.id_tuto = id_tuto;
        this.id_asignatura = id_asignatura;
        this.nif_profesor = nif_profesor;
        this.nif_alumno = nif_alumno;
        this.dias_tutorias = dias_tutorias;
        this.mensaje = mensaje;
        this.leido = leido;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    
    public int getId_tuto() {
        return id_tuto;
    }

    public void setId_tuto(int id_tuto) {
        this.id_tuto = id_tuto;
    }

    public int getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }

    public String getNif_profesor() {
        return nif_profesor;
    }

    public void setNif_profesor(String nif_profesor) {
        this.nif_profesor = nif_profesor;
    }

    public String getNif_alumno() {
        return nif_alumno;
    }

    public void setNif_alumno(String nif_alumno) {
        this.nif_alumno = nif_alumno;
    }

    public String getDias_tutorias() {
        return dias_tutorias;
    }

    public void setDias_tutorias(String dia_tutoria) {
        this.dias_tutorias = dia_tutoria;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Boolean getLeido() {
        return leido;
    }

    public void setLeido(Boolean leido) {
        this.leido = leido;
    }

    //Crea un nuevo usuario en MySql por medio de un Insert
    public void crearTutoria(int id_asignatura, String nif_profesor, String nif_alumno, String dias_tutorias, String mensaje, Boolean leido, String nombre_asignatura) {


  
            
            try {
                ConexionUtil con = new ConexionUtil();
                Connection access = con.getConnection();

                String sql = "INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura) "
                        + "                 VALUES ('" + id_asignatura + "','" + nif_profesor + "','" + nif_alumno + "','" + dias_tutorias + "','" + mensaje + "','" + 0 +"','" + nombre_asignatura +"')";

                PreparedStatement pstm = access.prepareStatement(sql);
                pstm.executeUpdate();
                JOptionPane.showMessageDialog(null, "Creación de tutoria [OK]");

            } catch (HeadlessException | SQLException e) {

                JOptionPane.showMessageDialog(null, "Insert Erroneo: " + e);

            }

    }

    //Marca como leida una tutoría
    public void leido(int id_tuto) {

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            String sql = "UPDATE tutorias SET leido='1' WHERE id_tuto='" + id_tuto +"'"; 

            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            JOptionPane.showMessageDialog(null, "Tutoría marcada como Leida o confirmada");

        } catch (HeadlessException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Actualizar Erroneo: " + e);
        }

    }

    
    /**
     * Borra una asignatura de la BBDD
     * @param id_asignatura
     */
    public void borrar(int id_asignatura) {
        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            String sql = "DELETE FROM asignaturas WHERE id_asignatura='" + id_asignatura + "'";
            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Asignatura Borrada Correctamente");

        } catch (HeadlessException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Borrado Erroneo: " + e);
        }
    }   

}
