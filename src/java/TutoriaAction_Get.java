
/**
 *
 * @author Antonio
 */
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
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
public class TutoriaAction_Get extends ActionSupport {

 
    private int id_asignatura;
    private Asignatura masig; 
   // private TutoriasDAO tuto;
    private String nombre_asignatura;
    private String nif_profesor;
    private String nif_alumno;
    private String dias_tutorias;
    private String hora_inicioT;
    private String hora_finT;
    private String mistutos[];


    //Getter and Setters

    public TutoriaAction_Get() {
    }

    public TutoriaAction_Get(int id_asignatura, Asignatura masig, String nombre_asignatura, String nif_profesor, String nif_alumno, String dias_tutorias, String hora_inicioT, String hora_finT) {
        this.id_asignatura = id_asignatura;
        this.masig = masig;
        this.nombre_asignatura = nombre_asignatura;
        this.nif_profesor = nif_profesor;
        this.nif_alumno = nif_alumno;
        this.dias_tutorias = dias_tutorias;
        this.hora_inicioT = hora_inicioT;
        this.hora_finT = hora_finT;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }
    

    public int getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }


    public Asignatura getMasig() {
        return masig;
    }

    public void setMasig(Asignatura masig) {
        this.masig = masig;
    }

    public String getNombre_asignatura() {
        return nombre_asignatura;
    }

    public void setNombre_asignatura(String nombre_asignatura) {
        this.nombre_asignatura = nombre_asignatura;
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

    public void setDias_tutorias(String dias_tutorias) {
        this.dias_tutorias = dias_tutorias;
    }

    public String getHora_inicioT() {
        return hora_inicioT;
    }

    public void setHora_inicioT(String hora_inicioT) {
        this.hora_inicioT = hora_inicioT;
    }

    public String getHora_finT() {
        return hora_finT;
    }

    public void setHora_finT(String hora_finT) {
        this.hora_finT = hora_finT;
    }

    public String[] getMistutos() {
        return mistutos;
    }

    public void setMistutos(String[] mistutos) {
        this.mistutos = mistutos;
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

            String queryNif = "select * from asignaturas where id_asignatura='" + id_asignatura + "'";
            ResultSet rs = s.executeQuery(queryNif);

            //Comprobamos si existe previamente el NIF introducido
            if (rs.next()) {

                //Cargamos el objecto con los datos de la busqueda.
                masig.setId_asignatura(rs.getInt("id_asignatura"));
                masig.setNombre_asignatura(rs.getString("nombre_asignatura"));
                masig.setNif_profesor(rs.getString("nif_profesor"));
                masig.setDias_tutorias(rs.getString("dias_tutorias"));
                masig.setHora_inicioT(rs.getString("hora_inicioT"));
                masig.setHora_finT(rs.getString("hora_finT"));
                    
                rs.close();
                s.close();
                access.close();

              return SUCCESS;  
            } //Comprobamos si existe o no el nombre de usuario
            else {
                JOptionPane.showMessageDialog(null, "No existe el asignatura con ID: " + id_asignatura, "Atención", JOptionPane.WARNING_MESSAGE);
           
                 return ERROR;
            }

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Error en la busqueda: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);
             return ERROR;
        }        
       
    
    }
}
