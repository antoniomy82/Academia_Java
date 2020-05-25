
import java.util.*;
import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Antonio
 */
public class MatriList {

    /*
    * Funcion que genera un listado de clases de cada alumno
     */
    public MatriList() {
    }

    public List<Asignatura> listado(String nif_alumno) throws Exception {
        /*
        
         */

        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());

        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();

        Transaction tx = null;

        List asignaturas = new ArrayList<>();
        try {
            tx = session.beginTransaction();
            //String query = "FROM Asignatura";
            String query = "FROM Asignatura WHERE nif_alumno1='" + nif_alumno + "' OR nif_alumno2='" + nif_alumno + "' OR nif_alumno3='" + nif_alumno + "' OR nif_alumno4='" + nif_alumno + "' OR nif_alumno5='" + nif_alumno + "' OR nif_profesor='" + nif_alumno + "'";
            asignaturas = session.createQuery(query).list();
            //.subList(0, 100); 
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        System.out.println(asignaturas.size());
        return asignaturas;
    }

}
