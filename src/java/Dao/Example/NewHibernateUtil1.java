/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.Example;

import entity.Web111;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.Scanner;


/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author Admin
 */
public class NewHibernateUtil1 {

    private static final SessionFactory sessionFactory;
    
    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public String savedate(String fn,String ln,String email,String pwd,String ct,String gn,String dt)
    {
        Session session=sessionFactory.openSession();
        Transaction trx=session.beginTransaction();
  
        Web111 w = new Web111();
        
        w.setFirstname(fn);
        w.setLastname(ln);
        w.setEmail(email);
        w.setPassword(pwd);
        w.setContact(ct);
        w.setGender(gn);
        w.setDoB(dt);
 
        session.save(w);
        trx.commit();
        session.close();

        return "data is saved";
    }
    
    public String deletedata(int id) 
    {
        Session session = sessionFactory.openSession();
        Transaction trx = session.beginTransaction();
        
        String msg1 ="";
        
        try{
        
            Query query=session.createQuery("delete from Web111 where id=:i");
            query.setParameter("i",id);
            int i=query.executeUpdate();
            if(i>0)
            {
                    msg1 = "Record Successfully deleted!";
            }

            trx.commit();  
        }
        catch (Exception e1)
        {
            trx.rollback();
            msg1 =  e1.toString();
        } 
        finally 
        {
            session.close();
        }
          return msg1;
    }
    
   public String updatedata(String fn,String ln,String email,String pwd,String ct,String gn,String dt)
    {
        Session session=sessionFactory.openSession();
        Transaction trx=session.beginTransaction();
       
        /*	Scanner sc =new Scanner(System.in);
		
		fn = sc.nextLine();
		ln = sc.nextLine();
		email = sc.nextLine();
		pwd = sc.nextLine();
                ct = sc.nextLine();
                gn = sc.nextLine();
                dt = sc.nextLine(); */
        
        try
        {
            Query query=session.createQuery("update Web111 set First name='"+fn+"',Last name='"+ln+"',Email='"+email+"',Password='"+pwd+"',Contact='"+ct+"',Gender='"+gn+"',Date='"+dt+"' where id='4'");
            query.executeUpdate();
            trx.commit();
        }
        catch(Exception e1)
        {
            trx.rollback();
        }
        finally 
        {
            session.close();
        }
          return("Data Successfully updated!");
    }
}
