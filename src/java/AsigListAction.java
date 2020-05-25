
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.util.List;

/**
 *
 * @author Antonio
 */
public class AsigListAction extends ActionSupport {

    private AsigListDAO asigDAO;// Inyectado por Spring
    private List<Asignatura> asignaturas;

    public AsigListAction(AsigListDAO asigDAO, List<Asignatura> asignaturas) {
        this.asigDAO = asigDAO;
        this.asignaturas = asignaturas;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    
    public AsigListAction() {
    }

    
    public AsigListDAO getAsigDAO() {
        return asigDAO;
    }

    public void setAsigDAO(AsigListDAO asigDAO) {
        this.asigDAO = asigDAO;
    }

    public List<Asignatura> getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(List<Asignatura> asignaturas) {
        this.asignaturas = asignaturas;
    }
    
    
    
    public void setListadoDAO(AsigListDAO l) {
            asigDAO = l;
        }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {
        asignaturas = asigDAO.listado();
        return SUCCESS;
    }
}
