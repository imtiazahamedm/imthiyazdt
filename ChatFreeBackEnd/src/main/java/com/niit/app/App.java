package com.niit.app;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Model.UserModel;
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
   
    UserModel add=new UserModel();
    
    add.setEmailid("bbdcb");
    add.setFirstname("dec");
    add.setLastname("wsccc");
    add.setPassword("cscec");
    add.setEnabled(true);
    add.setRoleid("mfvm");
    add.setUsername("fhjfs");
      ud.insert(add);
    
   
	}
}
