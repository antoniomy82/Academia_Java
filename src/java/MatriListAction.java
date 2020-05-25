
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.util.List;
import java.util.Map;
import javax.swing.JOptionPane;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Antonio
 */
public class MatriListAction extends ActionSupport implements SessionAware {

    private MatriList ml;// Inyectado por Spring
    private List<Asignatura> asignaturas;
    private String miNif;
    private Map<String, Object> session;

    public MatriListAction() {
    }

    public MatriListAction(MatriList ml, List<Asignatura> asignaturas, String miNif, Map<String, Object> session) {
        this.ml = ml;
        this.asignaturas = asignaturas;
        this.miNif = miNif;
        this.session = session;
    }

    public String getMiNif() {
        return miNif;
    }

    public void setMiNif(String miNif) {
        this.miNif = miNif;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    public MatriList getMl() {
        return ml;
    }

    public void setMl(MatriList ml) {
        this.ml = ml;
    }

    public List<Asignatura> getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(List<Asignatura> asignaturas) {
        this.asignaturas = asignaturas;
    }

    /**
     *
     * @param l
     */
    public void setListadoDAO(MatriList l) {
        ml = l;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {

        if (session.get("usernif").toString() != null) {
            this.miNif = session.get("usernif").toString();
            System.out.println("NIF Sesion:" + miNif);

            asignaturas = ml.listado(miNif);
            return SUCCESS;
        } else {
            JOptionPane.showMessageDialog(null, "No existe el alumno con NIF: " + miNif, "Atención", JOptionPane.WARNING_MESSAGE);
            return ERROR;
        }

    }

}
