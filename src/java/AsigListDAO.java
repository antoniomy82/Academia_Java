

    import java.util.*;
    import org.hibernate.*;
    import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
    import org.hibernate.cfg.Configuration;

/**
 *
 * @author Antonio
 */
public class AsigListDAO {

    
    public AsigListDAO() {
    }
    
    
    /**
     *
     * @return
     * @throws Exception
     */
    @Override    
    public int hashCode() {
        return super.hashCode(); //To change body of generated methods, choose Tools | Templates.
    }
    
        @Override
    protected void finalize() throws Throwable {
        super.finalize(); //To change body of generated methods, choose Tools | Templates.
        }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj); //To change body of generated methods, choose Tools | Templates.
    }




    public List<Asignatura> listado() throws Exception {
        Configuration conf = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
        
        SessionFactory factory = conf.buildSessionFactory(builder.build());
        Session session = factory.openSession();
        Transaction tx = null;
        
        List asignaturas = new ArrayList<>();
        try{
            tx = session.beginTransaction();
            String query = "FROM Asignatura";
            asignaturas = session.createQuery(query).list();
            //.subList(0, 100);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }
        finally { session.close(); }
        System.out.println(asignaturas.size());
        return asignaturas;
    }
    }

