package com.bookingticketmovieapi.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="quocgia")
public class Quocgia {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="ten_quocgia")
	private String tenquocgia;
	
	@OneToMany(mappedBy ="quocgia")
	private Set<Phim> phim;
}
