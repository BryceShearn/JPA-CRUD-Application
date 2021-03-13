package com.skilldistillery.stock.entities.stock;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Stock {
	@Id
	private int id;
	private String nameofstock;
	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}
		//METHODS
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNameofstock() {
		return nameofstock;
	}
	public void setNameofstock(String nameofstock) {
		this.nameofstock = nameofstock;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Stock [id=").append(id).append(", nameofstock=").append(nameofstock).append("]");
		return builder.toString();
	}


}