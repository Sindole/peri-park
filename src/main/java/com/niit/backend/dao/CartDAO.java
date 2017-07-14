package com.niit.backend.dao;

import java.util.List;

import com.niit.backend.model.Cart;

public interface CartDAO {

public void AddToCart(Cart cart);

public void DeleteCartItem(Cart cart);

public void getCartItem(int id);

public List<Cart> list();

public Cart getById(Integer id);
	
}
