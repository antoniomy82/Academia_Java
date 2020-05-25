
/**
 *
 * @author Antonio
 */
public class Tutoria {
    
    private int id_tuto;
    private int id_asignatura;
    private String nif_profesor;
    private String nif_alumno;
    private String nombre_asignatura;
    private String dia_tutoria;
    private String mensaje;
    private int leido;

    public Tutoria() {
    }

    public Tutoria(int id_tuto, int id_asignatura, String nif_profesor, String nif_alumno, String dia_tutoria, String mensaje, int leido) {
        this.id_tuto = id_tuto;
        this.id_asignatura = id_asignatura;
        this.nif_profesor = nif_profesor;
        this.nif_alumno = nif_alumno;
        this.dia_tutoria = dia_tutoria;
        this.mensaje = mensaje;
        this.leido = leido;
    }

    public int getId_tuto() {
        return id_tuto;
    }

    public String getNombre_asignatura() {
        return nombre_asignatura;
    }

    public void setNombre_asignatura(String nombre_asignatura) {
        this.nombre_asignatura = nombre_asignatura;
    }

    public void setId_tuto(int id_tuto) {
        this.id_tuto = id_tuto;
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

    public String getDia_tutoria() {
        return dia_tutoria;
    }

    public void setDia_tutoria(String dia_tutoria) {
        this.dia_tutoria = dia_tutoria;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public int getLeido() {
        return leido;
    }

    public void setLeido(int leido) {
        this.leido = leido;
    }



}