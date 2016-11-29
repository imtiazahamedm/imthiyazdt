//package com.niit.dao;
package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Model.Product;
 
@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired


private SessionFactory sessionfactory;
	
	public SessionFactory getSessionfactory() {
	return sessionfactory;
}

public void setSessionfactory(SessionFactory sessionfactory) {
	this.sessionfactory = sessionfactory;
}

@Transactional
	public void insert(Product add1) 
{
    Session session=sessionfactory.openSession();
    session.save(add1);
    session.flush();
	session.close();	
	}


@Transactional

public List<Product> showproducts() {
	Session session=sessionfactory.openSession();
	@SuppressWarnings("unchecked")
	List<Product>product=session.createQuery("from Product").list();	
	return product;
}
@SuppressWarnings("unused")
@Transactional

public void delete(int pid) {
	// TODO Auto-generated method stub
	Session session=sessionfactory.getCurrentSession();
	Product product = (Product)session.get(Product.class,pid);
	session.delete(product);
	session.flush();
	//session.close();
}
@Transactional

public Product getproductsbyid(int pid) {
	// TODO Auto-generated method stub
	Session session=sessionfactory.openSession();
	Product product=(Product)session.get(Product.class, pid);
	session.close();
	return product;

}
@Transactional
public void update(Product pid)
{
	Session session=sessionfactory.openSession();
    session.update(pid);
    session.flush();
    session.close();
	
}

	
	
	}



