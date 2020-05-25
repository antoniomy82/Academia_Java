
import com.opensymphony.xwork2.ActionSupport;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Antonio
 */
public class AsignaturasDAO extends ActionSupport {

    private Asignatura asignatura;
    private int id_asignatura;

    
    public AsignaturasDAO() {
    }

    
    public int getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }

 
    public Asignatura getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(Asignatura Adao) {
        this.asignatura = Adao;
    }

    //Crea un nuevo usuario en MySql por medio de un Insert
    public void crearAsignatura(String nombre_asignatura, String nif_profesor, String dias_clases, String hora_inicioC, String hora_finC, String nif_alumno1, String nif_alumno2, String nif_alumno3, String nif_alumno4, String nif_alumno5, String dias_tutorias, String hora_inicioT, String hora_finT) {


       //String miCheck=createCheck(nif_profesor,nif_alumno1,nif_alumno2,nif_alumno3,nif_alumno4,nif_alumno5);
         
            
            try {
                ConexionUtil con = new ConexionUtil();
                Connection access = con.getConnection();

                String sql = "INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT ) "
                        + "                 VALUES ('" + nombre_asignatura + "','" + nif_profesor + "','" + dias_clases + "','" + hora_inicioC + "','" + hora_finC + "','" + nif_alumno1 + "','" + nif_alumno2 + "','" + nif_alumno3 + "','" + nif_alumno4 + "','" + nif_alumno5 + "','" + dias_tutorias + "','" + hora_inicioT + "','" + hora_finT + "')";

       
                PreparedStatement pstm = access.prepareStatement(sql);
                pstm.executeUpdate();
                JOptionPane.showMessageDialog(null, "Creación de Usuario [OK]");

            } catch (HeadlessException | SQLException e) {

                JOptionPane.showMessageDialog(null, "Insert Erroneo: " + e);

            }

    }

    //Actualiza los datos de un usuario en MySql por medio de un Update
    public void editar(int id_asignatura, String nombre_asignatura, String nif_profesor, String dias_clases, String hora_inicioC, String hora_finC, String nif_alumno1, String nif_alumno2, String nif_alumno3, String nif_alumno4, String nif_alumno5, String dias_tutorias, String hora_inicioT, String hora_finT) {

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            String sql = "UPDATE asignaturas SET nombre_asignatura='" + nombre_asignatura + "',nif_profesor='" + nif_profesor + "',dias_clases='" + dias_clases + "',hora_inicioC='" + hora_inicioC + "',hora_finC='" + hora_finC + "',nif_alumno1='" + nif_alumno1 + "',nif_alumno2='" + nif_alumno2 + "',nif_alumno3='" + nif_alumno3 + "',nif_alumno4='" + nif_alumno4 + "',nif_alumno5='" + nif_alumno5 + "',dias_tutorias='" + dias_tutorias + "',hora_inicioT='" + hora_inicioT + "',hora_finT='" + hora_finT + "'" +" WHERE id_asignatura='" + id_asignatura + "'";

            PreparedStatement pstm = access.prepareStatement(sql);
            pstm.executeUpdate();
            JOptionPane.showMessageDialog(null, "Datos Actualizados Correctamente");

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

    //Devuelve un usuario con todos sus campos
    /**
     *
     * @param id_asignatura
     * @return
     */
    public Asignatura buscar(int id_asignatura) {

        asignatura = new Asignatura();

        try {
            ConexionUtil con = new ConexionUtil();
            Connection access = con.getConnection();
            Statement s = access.createStatement();

            String queryNif = "select * from asignaturas where id='" + id_asignatura + "'";
            ResultSet rs = s.executeQuery(queryNif);

            //Comprobamos si existe previamente el NIF introducido
            if (rs.next()) {

                //Cargamos el objecto con los datos de la busqueda.
                asignatura.setId_asignatura(id_asignatura);
                asignatura.setNombre_asignatura(rs.getString("nombre_asignatura"));
                asignatura.setNif_profesor(rs.getString("nif_profesor"));
                asignatura.setDias_clases(rs.getString("dias_clases"));
                asignatura.setHora_inicioC(rs.getString("hora_inicioC"));
                asignatura.setHora_finC(rs.getString("hora_finC"));
                asignatura.setNif_alumno1(rs.getString("nif_alumno1"));
                asignatura.setNif_alumno2(rs.getString("nif_alumno2"));
                asignatura.setNif_alumno3(rs.getString("nif_alumno3"));
                asignatura.setNif_alumno4(rs.getString("nif_alumno4"));
                asignatura.setNif_alumno5(rs.getString("nif_alumno5"));
                asignatura.setDias_tutorias(rs.getString("dias_tutorias"));
                asignatura.setHora_inicioT(rs.getString("hora_inicioT"));
                asignatura.setHora_finT(rs.getString("hora_finT"));

                rs.close();
            } //Comprobamos si existe o no el nombre de usuario
            else {
                this.asignatura = null;
                JOptionPane.showMessageDialog(null, "No existe la clase con Nombre de Asignatura: " + id_asignatura, "Atención", JOptionPane.WARNING_MESSAGE);
            }
            s.close();
            access.close();

        } catch (HeadlessException | SQLException e) {

            JOptionPane.showMessageDialog(null, "Error en la busqueda: " + e, "ERROR", JOptionPane.ERROR_MESSAGE);

        }

        return asignatura;
    }
    


}
