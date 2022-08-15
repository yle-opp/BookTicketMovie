package com.bookingticketmovieapi.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="rap")
public class Rap {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="tenrap")
	private String tenrap;
	
	@Column(name="diachi")
	private String diachi;
	
	@OneToMany(mappedBy = "rap")
    private Set<Phong> phong;
}
