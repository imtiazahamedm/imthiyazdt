package com.CarMaxFrontEndd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Model.Product;
import com.niit.Model.UserModel;
//import com.niit.Model.UserModel;
import com.niit.dao.UserDao;

@Controller
public class Carcontroller {
	HttpSession session;
	private UserDao ud;
	public Carcontroller()
	{
		AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
		appobj.scan("com.niit.appconfig");
		appobj.refresh();
		ud=(UserDao) appobj.getBean("udao");
	}
	    
	
	@RequestMapping("/")
    public ModelAndView helloworld() {
	    return new ModelAndView("home");  
	  }
	@RequestMapping("/home")
    public ModelAndView home() {
	    return new ModelAndView("home");
	}

	@RequestMapping("/signin")
    public String register() {
	    return "signin";
	}
	@RequestMapping("/admin")
    public String admin() {
	    return "admin";
	}
	@RequestMapping("/login")
    public ModelAndView login() {
	    return new ModelAndView("log");
	}
	@RequestMapping("/aboutus")
    public ModelAndView about() {
	    return new ModelAndView("aboutus");
	} 
	@RequestMapping("/logout")
    public ModelAndView logout() {
		session.invalidate();
	    return new ModelAndView("home");
	} 
	
	
	   @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public String getregister(Model model){
		UserModel user=new UserModel();
     	model.addAttribute("mishadha", user);
		return "signin"; 
	   }
	   
	   @RequestMapping(value = "/registering", method = RequestMethod.POST)
	   public String addregistering(@ModelAttribute(value="mishadha")UserModel user ,ModelMap model)
	   {
	      System.out.println("imtiaz");
		  ud.insert(user);
	      return "log";
	   }

		@ModelAttribute("productformobj")
		public  Product product(){
			return new Product();
		}
	   
	      @RequestMapping(value = "/loginenter", method = RequestMethod.POST)
	      public String print(HttpServletRequest req)throws ServletException,IOException
		   {
	    		session=req.getSession();
	    	  String dis = "";
	    	  List<UserModel> list =ud.getuser(req.getParameter ("usr"),req.getParameter ("pwd"));
	    	  System.out.println(list);
	    	  
	    	  if(!list.isEmpty()){ 
	    		  for(UserModel u:list){
	    			  if(u.getRoleid().equals("ROLE_ADMIN"))
	    			  {
	    					dis= "admin";
	    					 session.setAttribute("username", u.getUsername());
	    					}
	    					
	    					else if(u.getRoleid().equals("ROLE_USER")){
	    			        session.setAttribute("username", u.getUsername());
	    	
	    						dis = "home";
	    					}
	    		  }
	    	  }
	    	  else {
					
					dis = "log";
				}		
	    					
                        return dis;
	      
		   }
	      
	   }
	
	
	
	
	
	
	
	
	
	
	
	    
	
	


	


