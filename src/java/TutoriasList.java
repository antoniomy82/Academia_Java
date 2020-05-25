

import java.util.*;
import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Antonio
 */
public class TutoriasList  {

    /*
    * Funcion que genera un listado de turorias solicitadas
     */

    
    
    public TutoriasList() {
    }


    public List<Tutoria> listado(String miNif) throws Exception {
 
        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());

        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();

        Transaction tx = null;

          
        
            List tutorias = new ArrayList<>();
        try {
            
                    
            tx = session.beginTransaction();
            //String query = "FROM Tutoria";
            String query = "FROM Tutoria WHERE nif_alumno='" + miNif + "' OR nif_profesor='" + miNif + "'";
            tutorias = session.createQuery(query).list();
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
      
        return tutorias;
    }

}
