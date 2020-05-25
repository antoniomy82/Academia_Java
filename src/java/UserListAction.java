

import static com.opensymphony.xwork2.Action.SUCCESS;
    import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
    import java.util.List;

/**
 *
 * @author Antonio
 */
public class UserListAction extends ActionSupport {
           
    private UserListDAO userDAO;// Inyectado por Spring
    private List<Usuario> usuarios;

    public UserListAction() {
    }

    public UserListAction(UserListDAO userDAO, List<Usuario> usuarios) {
        this.userDAO = userDAO;
        this.usuarios = usuarios;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

    
    public UserListDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserListDAO userDAO) {
        this.userDAO = userDAO;
    }


 
    /**
     *
     * @return
     */
    public List<Usuario> getUsuarios() {
            return usuarios;
        }

    /**
     *
     * @param usuarios
     */
    public void setUsuarios(List<Usuario> usuarios) {
            this.usuarios = usuarios;
        }

    /**
     *
     * @param l
     */
    public void setListadoDAO(UserListDAO l) {
            userDAO = l;
        }

    /**
     *
     * @return
     * @throws Exception
     */
    @Override
	public String execute() throws Exception {
            usuarios = userDAO.listado();
            return SUCCESS;
	}
    }


