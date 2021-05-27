package com.entities;

import java.util.Date;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="notes")
public class Notes {
	
	@Id
	private int id;
	
	private String title;
	@Column(length = 1500)  //content max length that can fit in the box.
	private String content;
	private Date addedDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Notes(String title, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000); //0-100000 //cause we dont want to set these values
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	public Notes() {
		super();
		
	}
	
	
}
