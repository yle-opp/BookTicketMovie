package com.bookingticketmovieapi.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "roleskh")
public class Roleskh {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	

	@Column(name="tenrole")
	private String tenrole;
	
	@OneToMany(mappedBy = "roleskh")
	private Set<RoleKhachhang> roleKhachhang;
	
	

}
