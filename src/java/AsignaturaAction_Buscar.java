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
public class AsignaturaAction_Buscar extends ActionSupport {

    private int id_asignatura;
    private AsignaturasDAO adao; 
    private Asignatura asig; //Inyecto Spring

    //Getter and Setters

    public AsignaturaAction_Buscar() {
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

    public Asignatura getAsig() {
        return asig;
    }

    public void setAsig(Asignatura asig) {
        this.asig = asig;
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
                asig.setId_asignatura(rs.getInt(id_asignatura));
                asig.setNif_profesor(rs.getString("nif_profesor"));
                asig.setNombre_asignatura(rs.getString("nombre_asignatura"));
                asig.setDias_clases(rs.getString("dias_clases"));
                asig.setHora_inicioC(rs.getString("hora_inicioC"));
                asig.setHora_finC(rs.getString("hora_finC"));
                asig.setNif_alumno1(rs.getString("nif_alumno1"));
                asig.setNif_alumno2(rs.getString("nif_alumno2"));
                asig.setNif_alumno3(rs.getString("nif_alumno3"));
                asig.setNif_alumno4(rs.getString("nif_alumno4"));
                asig.setNif_alumno5(rs.getString("nif_alumno5"));
                asig.setDias_tutorias(rs.getString("dias_tutorias"));
                asig.setHora_inicioT(rs.getString("hora_inicioT"));
                asig.setHora_finT(rs.getString("hora_finT"));
                rs.close();
                s.close();
                access.close();

                return SUCCESS;
            } //Comprobamos si existe o no el nombre de usuario
            else {
                JOptionPane.showMessageDialog(null, "No existe Asignatura con ID: " + id_asignatura, "Atención", JOptionPane.WARNING_MESSAGE);
                id_asignatura=0;
                return ERROR;
            }

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Error en la busqueda: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);
            return ERROR;
        }
    }

    boolean equal(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
