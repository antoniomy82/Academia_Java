
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
public class TutoriasListAction extends ActionSupport implements SessionAware {

    private TutoriasList mituto;// Inyectado por Spring
    private List<Tutoria> tutorias;
    private String miNif;
    private Map<String, Object> session;

    public TutoriasListAction() {
    }

    public TutoriasListAction(TutoriasList mituto, List<Tutoria> tutorias, String miNif, Map<String, Object> session) {
        this.mituto = mituto;
        this.tutorias = tutorias;
        this.miNif = miNif;
        this.session = session;
    }

    public TutoriasList getMituto() {
        return mituto;
    }

    public void setMituto(TutoriasList mituto) {
        this.mituto = mituto;
    }

    public List<Tutoria> getTutorias() {
        return tutorias;
    }

    public void setTutorias(List<Tutoria> tutorias) {
        this.tutorias = tutorias;
    }

    public String getMiNif() {
        return miNif;
    }

    public void setMiNif(String miNif) {
        this.miNif = miNif;
    }



    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    /**
     *
     * @param l
     */
    public void setMatriList(TutoriasList l) {
        mituto = l;
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

            tutorias = mituto.listado(miNif);
            return SUCCESS;
        } else {
            JOptionPane.showMessageDialog(null, "No existe el alumno con NIF: " + miNif, "Atención", JOptionPane.WARNING_MESSAGE);
            return ERROR;
        }

    }

}
