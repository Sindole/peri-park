package com.niit.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table
public class Cart {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartid;
	
	@ManyToOne
	@JoinColumn(name="prodid",insertable=false,updatable=false)
	private Product cartproduct;
	private int prodid;
	
	@NotNull(message="Quantity code can't be blank")
	private int quantity;
	
	@NotNull(message="Price code can't be blank")
	private int price;
	
	@NotNull(message="TotalCost code can't be blank")
	private int tcost;
	
	@ManyToOne
	@JoinColumn(name="userid",insertable=false,updatable=false)
	private User cartuser;
	private Integer userid;

	@NotBlank(message="ProductName can't be blank")
	private String prodname;

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public Product getCartproduct() {
		return cartproduct;
	}

	public void setCartproduct(Product cartproduct) {
		this.cartproduct = cartproduct;
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

	public User getCartuser() {
		return cartuser;
	}

	public void setCartuser(User cartuser) {
		this.cartuser = cartuser;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	
}
