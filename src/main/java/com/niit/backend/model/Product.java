package com.niit.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int prodid;
	
	@NotBlank(message="Product Name can't be blank")
	private String prodname;
	
	@ManyToOne
	@JoinColumn(name="catid", insertable=false, updatable=false)
	private Category category;
	private String catid;
	
	@ManyToOne
	@JoinColumn(name="supid", insertable=false, updatable=false)
	private Supplier supplier;
	private String supid;
	
	@Min(1)
	private int quantity;
	
	@Min(1)
	private int price;
	
	@NotBlank(message="Product description can't be blank")
	private String proddesc;
	
	@Transient
	private MultipartFile img;

	public int getProdid() {
		return prodid;
	}

	public void setProdid(int prodid) {
		this.prodid = prodid;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getCatid() {
		return catid;
	}

	public void setCatid(String catid) {
		this.catid = catid;
	}

	public String getSupid() {
		return supid;
	}

	public void setSupid(String supid) {
		this.supid = supid;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
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

	public String getProddesc() {
		return proddesc;
	}

	public void setProddesc(String proddesc) {
		this.proddesc = proddesc;
	}

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}


}
