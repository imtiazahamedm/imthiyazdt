
package com.niit.appconfig;




import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.Model.Product;
import com.niit.Model.UserModel;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.dao.UserDao;
import com.niit.dao.UserDaoImpl;

@Configuration
@ComponentScan("com.backend.model")
@EnableTransactionManagement
public class Carmaxx 
{
	
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	 sessionBuilder.addProperties(getHibernateProperties());
	 System.out.println("before");
    sessionBuilder.addAnnotatedClasses(UserModel.class);
    System.out.println("after");
    sessionBuilder.addAnnotatedClasses(Product.class);
	 
	    return sessionBuilder.buildSessionFactory();
	}
	
	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("welcome1"); 
	BasicDataSource dataSource = new BasicDataSource();
	System.out.println("welcome2"); 
	dataSource.setDriverClassName("org.h2.Driver");
	System.out.println("welcome3"); 
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test3");
	System.out.println("welcome4"); 
	dataSource.setUsername("sa");
	System.out.println("welcome5"); 
	dataSource.setPassword("sa");
	return dataSource;
	}
	


@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
{
    HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
    return transactionManager;
}
	
	
	private Properties getHibernateProperties()
	{
	    Properties properties = new Properties();
	    System.out.println("inside getHibernate");
	    properties.put("hibernate.show_sql", "true");
	  
	    properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	  
	    properties.put("hibernate.hbm2ddl.auto", "update");
	  
	  
	   
	  	    return properties; 
	
	}

	@Bean(name = "udao")
	public UserDao getUserDao()
	{
		return new UserDaoImpl();
	}
	@Bean(name = "pdao")
	public ProductDao getProductDao()
	{
		return new ProductDaoImpl();
	}
	
	}	


	
	
	


