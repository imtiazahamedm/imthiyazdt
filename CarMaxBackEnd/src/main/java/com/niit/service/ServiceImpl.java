package com.niit.service;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

public class ServiceImpl {
	@Repository
	public class ServiceInterface  {
	    @Autowired
	    private SessionFactory sessionFactory;
	 
	    public ServiceInterface() {
	         
	    }

		public void Update(ServiceInterface user) {
			// TODO Auto-generated method stub
			
		}
		
		@Transactional

	public void update(ServiceInterface user){
			sessionFactory.getCurrentSession().update(user);
		}
		}




}

