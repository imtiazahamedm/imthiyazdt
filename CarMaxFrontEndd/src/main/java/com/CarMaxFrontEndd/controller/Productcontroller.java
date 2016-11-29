package com.CarMaxFrontEndd.controller;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Model.Product;
import com.niit.dao.ProductDao;


@Controller
public class Productcontroller {

	private ProductDao pd;

	

	@SuppressWarnings("resource")
	public Productcontroller() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.appconfig");
		context.refresh();
		pd = ((ProductDao) context.getBean("pdao"));
	}
	
	@RequestMapping(value = "/adminAdd", method = RequestMethod.GET)
	
	public String gotoPro(Model model) {
    
		Product add1 = new Product();
		model.addAttribute("productformobj", add1);
		return "productform";

	}

	
	
	@RequestMapping(value = "/adminADDS", method = RequestMethod.POST)
	public String addregister(@ModelAttribute(value = "productformobj") Product add1, ModelMap model) {
		pd.insert(add1);
		return "redirect:/listproducts";
	}

	@RequestMapping("/listproducts")
	public ModelAndView gotolist() {
		List<Product> prod = pd.showproducts();
		return new ModelAndView("listpage", "lobj", prod);
	}

	@RequestMapping("/getProductsByid/{pid}")
	public ModelAndView getprodid(@PathVariable("pid") int pid) {
		Product ob=pd.getproductsbyid(pid);

		return new ModelAndView("productpage","showObj",ob);

	}

	

	
	@RequestMapping("/admin/product/editProduct/{pid}")
	public ModelAndView edit(@PathVariable(value = "pid") int pid) {
		Product product = this.pd.getproductsbyid(pid);
		return new ModelAndView("editproductform", "editProdObj", product);
	}

	@RequestMapping(value = "/admin/product/editProduct", method = RequestMethod.POST)
	public String edits(@ModelAttribute(value = "editProdObj") Product pid) {
		pd.update(pid);
		return ("redirect:/listproducts");
	}
	
	@RequestMapping("/admin/product/delete/{pid}")
	public String deleteProductbyid(@PathVariable(value="pid")int pid){
		pd.delete(pid);
		return "redirect:/listproducts";
	}

}
