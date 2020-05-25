
import java.util.List;

   

/**
 *
 * @author Antonio
 */
public class Asignatura {
    private int id_asignatura;
    private String nif_profesor;
    private String nombre_asignatura;
    private String dias_clases;
    private String hora_inicioC;
    private String hora_finC;
    private String nif_alumno1;
    private String nif_alumno2;
    private String nif_alumno3;
    private String nif_alumno4;
    private String nif_alumno5;
    private String dias_tutorias;
    private String hora_inicioT;
    private String hora_finT;
   
    
    /**
     *
     */
    public Asignatura() {
    }

    public Asignatura(int id_asignatura,String nif_profesor, String nombre_asignatura, String dias_clases, String hora_inicioC, String hora_finC, String nif_alumno1, String nif_alumno2, String nif_alumno3, String nif_alumno4, String nif_alumno5, String dias_tutorias, String hora_inicioT, String hora_finT) {
        this.id_asignatura=id_asignatura;
        this.nif_profesor = nif_profesor;
        this.nombre_asignatura = nombre_asignatura;
        this.dias_clases = dias_clases;
        this.hora_inicioC = hora_inicioC;
        this.hora_finC = hora_finC;
        this.nif_alumno1 = nif_alumno1;
        this.nif_alumno2 = nif_alumno2;
        this.nif_alumno3 = nif_alumno3;
        this.nif_alumno4 = nif_alumno4;
        this.nif_alumno5 = nif_alumno5;
        this.dias_tutorias = dias_tutorias;
        this.hora_inicioT = hora_inicioT;
        this.hora_finT = hora_finT;
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

    public String getNombre_asignatura() {
        return nombre_asignatura;
    }

    public void setNombre_asignatura(String nombre_asignatura) {
        this.nombre_asignatura = nombre_asignatura;
    }

    public String getDias_clases() {
        return dias_clases;
    }

    public void setDias_clases(String dias_clases) {
        this.dias_clases = dias_clases;
    }

    public String getHora_inicioC() {
        return hora_inicioC;
    }

    public void setHora_inicioC(String hora_inicioC) {
        this.hora_inicioC = hora_inicioC;
    }

    public String getHora_finC() {
        return hora_finC;
    }

    public void setHora_finC(String hora_finC) {
        this.hora_finC = hora_finC;
    }

    public String getNif_alumno1() {
        return nif_alumno1;
    }

    public void setNif_alumno1(String nif_alumno1) {
        this.nif_alumno1 = nif_alumno1;
    }

    public String getNif_alumno2() {
        return nif_alumno2;
    }

    public void setNif_alumno2(String nif_alumno2) {
        this.nif_alumno2 = nif_alumno2;
    }

    public String getNif_alumno3() {
        return nif_alumno3;
    }

    public void setNif_alumno3(String nif_alumno3) {
        this.nif_alumno3 = nif_alumno3;
    }

    public String getNif_alumno4() {
        return nif_alumno4;
    }

    public void setNif_alumno4(String nif_alumno4) {
        this.nif_alumno4 = nif_alumno4;
    }

    public String getNif_alumno5() {
        return nif_alumno5;
    }

    public void setNif_alumno5(String nif_alumno5) {
        this.nif_alumno5 = nif_alumno5;
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

    void setDias_clases(List<String> wordList) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }   
    
}

