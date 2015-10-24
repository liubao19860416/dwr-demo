package com.accp.daoimpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.accp.dao.CityDao;
import com.entity.City;

public class CityDaoImpl extends HibernateDaoSupport implements CityDao {

    public List<City> findByPid(int pid) {
        String hql = "from City c where c.province.pid=" + pid;
        return super.getHibernateTemplate().find(hql);
    }

}
