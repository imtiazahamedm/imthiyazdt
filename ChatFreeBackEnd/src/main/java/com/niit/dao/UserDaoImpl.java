package com.niit.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.Model.UserModel;
 

public class UserDaoImpl implements UserDao{
    @Autowired
    private SessionFactory sessionFactory;
 
    
	
    public SessionFactory getSessionFactory() {
		return sessionFactory;
	}



	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Transactional
    public void insert(UserModel user)
    {
		Session session=sessionFactory.getCurrentSession();
		session.save(user);
		session.flush();
		/*System.out.println("imtiaz  "+user.getFirstname());
		Session session=sessionFactory.getCurrentSession();
		user.setEnabled(true);
		user.setRoleid("ROLE_USER");
		session.save(user);
		session.flush();*/
    }
	/*@Transactional
	public List<UserModel> getuser(String username,String Password)
	{
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria =session.createCriteria(UserModel.class);
		criteria.add(Restrictions.eq("username",username));
		criteria.add(Restrictions.eq("Password", Password));
		List<UserModel>list=criteria.list();
		for(UserModel u:list)
			System.out.println(u.getUsername());
		return list;
	}*/

	
	
	/*@Transactional
    public void update(UserModel user)
    {
		Session session=sessionFactory.openSession();
		session.update(user);
		session.flush();
		session.close();
    }
	@Transactional
    public void delete(UserModel user)
    {
		Session session=sessionFactory.openSession();
		session.delete(user);
		session.flush();
		}*/}
	


	
	
	


