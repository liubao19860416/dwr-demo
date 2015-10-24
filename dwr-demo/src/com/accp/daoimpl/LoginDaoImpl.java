package com.accp.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.accp.dao.LoginDao;
import com.accp.util.HibernateSessionFactory;
import com.entity.Accpusers;

public class LoginDaoImpl implements LoginDao {

    public boolean checkLogin(Accpusers user) {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from Accpusers u where u.username=? and u.password=?";
        Query query = session.createQuery(hql);
        query.setParameter(0, user.getUsername());
        query.setParameter(1, user.getPassword());
        List list = query.list();
        if (list != null && list.size() > 0) {
            return true;
        }
        return false;
    }

    public boolean checkName(String name) {
        return name.equals("accp");

    }

    public long addUser(Accpusers user) {
        Session session = HibernateSessionFactory.getSession();
        Transaction tran = session.beginTransaction();
        session.save(user);
        tran.commit();
        session.close();
        return user.getId();
    }

}
