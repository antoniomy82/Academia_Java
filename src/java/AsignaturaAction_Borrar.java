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
public class AsignaturaAction_Borrar extends ActionSupport {

    private int id_asignatura;
    private AsignaturasDAO adao; //Inyectado por Spring (applicationContext.xml)

    public AsignaturaAction_Borrar() {
    }

    public int getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }

    public AsignaturasDAO getAdao() {
        return adao;
    }

    public void setAdao(AsignaturasDAO adao) {
        this.adao = adao;
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {

        //Llamamos a nuestro objeto inyectado DAO_del y realizamos el borrado
        adao.borrar(id_asignatura);
        return SUCCESS;
    }
}
