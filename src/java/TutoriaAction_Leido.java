
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;

/**
 *
 * @author Antonio
 */
public class TutoriaAction_Leido extends ActionSupport {

    private TutoriasDAO tutodao;
    private int id_asignatura;
    private int id_tuto;
    private String nif_profesor;
    private String nif_alumno;
    private String dias_tutorias;
    private String mensaje;
    private Boolean leido;
    private String nombre_asignatura;

    public TutoriaAction_Leido() {
    }

    public TutoriaAction_Leido(TutoriasDAO tutodao, int id_asignatura, String nif_profesor, String nif_alumno, String dias_tutorias, String mensaje, Boolean leido, String nombre_asignatura) {
        this.tutodao = tutodao;
        this.id_asignatura = id_asignatura;
        this.nif_profesor = nif_profesor;
        this.nif_alumno = nif_alumno;
        this.dias_tutorias = dias_tutorias;
        this.mensaje = mensaje;
        this.leido = leido;
        this.nombre_asignatura = nombre_asignatura;
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

    
    public TutoriasDAO getTutodao() {
        return tutodao;
    }

    public void setTutodao(TutoriasDAO tutodao) {
        this.tutodao = tutodao;
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

    public String getNombre_asignatura() {
        return nombre_asignatura;
    }

    public void setNombre_asignatura(String nombre_asignatura) {
        this.nombre_asignatura = nombre_asignatura;
    }

    @Override
    public String execute() throws Exception {

        tutodao.leido(id_tuto);
        return SUCCESS;
    }

}
