package com.niit.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int citemid;
	
	@NotNull(message="CartId code can't be blank")
	private int cartid;
	
	@NotNull(message="ProductId code can't be blank")
	private int prodid;
	
	@NotNull(message="Quantity code can't be blank")
	private int quantity;
	
	@NotNull(message="Price code can't be blank")
	private int price;
	
	@NotNull(message="TotalCost code can't be blank")
	private int tcost;
	
	@NotBlank(message="UserName can't be blank")
	private String username;
	
	@NotBlank(message="ProductName can't be blank")
	private String prodname;
	
	@NotBlank(message="Status can't be blank")
	private String status;

	public int getCitemid() {
		return citemid;
	}

	public void setCitemid(int citemid) {
		this.citemid = citemid;
	}

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public int getProdid() {
		return prodid;
	}

	public void setProdid(int prodid) {
		this.prodid = prodid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTcost() {
		return tcost;
	}

	public void setTcost(int tcost) {
		this.tcost = tcost;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
