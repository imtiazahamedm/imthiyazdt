package com.niit.app;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Model.Product;
import com.niit.Model.UserModel;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;

public class App 
{
  
	
	public static void main(String[] args)
	{
    @SuppressWarnings("resource")
	AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
	appobj.scan("com.niit.appconfig");
	appobj.refresh();
	appobj.getBean("udao");
	
	UserDao ud=(UserDao)appobj.getBean("udao");
    ProductDao pd=(ProductDao)appobj.getBean("pdao");
    
    UserModel add=new UserModel();
   
    //ud.update(add);
    //ud.delete(add);
     Product add1=new Product();
    // add1.setPid("imthi");
     //add1.setName("gayuuu");
     pd.insert(add1);
     pd.update(add1);
    pd.delete(1);
   
	}
}
