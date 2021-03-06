package com.ccniit.graduation.pojo.db;

import java.io.Serializable;
import java.util.Date;

public class VoterGroup implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5989253753703403027L;
	private long id;
	private long author;
	private int quantity;
	private String description;
	private Date inDate;

	public VoterGroup() {
		super();
	}

	public VoterGroup(long authorId, String description) {
		this.inDate = new Date();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getAuthor() {
		return author;
	}

	public void setAuthor(long author) {
		this.author = author;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}

}
