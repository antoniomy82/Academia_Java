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

/**
 *
 * @author Antonio
 */
public class UserAction_Borrar extends ActionSupport{
    
    private String nif;
    
    private UsuarioDAO dao; //Inyecto

    public UserAction_Borrar() {
    }

 
    //Getter and Setters

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
     * @param dao_del
     */
    public void setDao(UsuarioDAO dao_del) {
        this.dao = dao_del;
    }
    
    /**
     *
     * @return
     * @throws Exception
     */
    @Override
    public String execute()throws Exception{    
          
          //Llamamos a nuestro objeto inyectado DAO_del y realizamos el borrado
          dao.borrar(nif);
          return SUCCESS;
    }
}
    

