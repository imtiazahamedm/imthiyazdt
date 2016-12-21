package com.niit.dao;

import java.util.List;

import com.niit.Model.Product;

public interface ProductDao {

	public List<Product> showproducts(); 
	public void update(Product pid);
    public void insert(Product obj);
	public void delete(int pid);
	public Product getproductsbyid(int pid);
    public List<Product> prod (String category);
	 
}
