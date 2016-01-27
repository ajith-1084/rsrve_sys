/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import static java.lang.System.out;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import pojo.User;
import security.UserData;
/**
 *
 * @author ajith
 */
public class userDaoImpl implements userDao{

    SessionFactory sessionfactory;
    private Object[] row;
    
    public void setsessionFactory(SessionFactory sessionfactory){
    this.sessionfactory = sessionfactory;
    }
    @Transactional
    @Override
    public UserData getUserdetails(String username) {
        UserData u = null;
        String sql ="SELECT * FROM user u where u.email=:username and u.type=4 and u.status=1";
        try{
        Session currentsession = sessionfactory.getCurrentSession();
        currentsession.beginTransaction();
        Query qry = currentsession.createSQLQuery(sql).addEntity(User.class).setParameter("username", username);
        List l = qry.list();
        try{
        Iterator it = l.iterator();
        while(it.hasNext()){
            User user = (User)it.next();             
            u = new UserData();
            u.setUsername(user.getUserName());
            u.setPassword(user.getPassword());
            u.setRole("ROLE_ADMIN");
        }
        }catch(Exception e){
         out.print(e);
        }
        }catch(HibernateException e){
            System.out.println(e);
        }
        return u;
    }

}
