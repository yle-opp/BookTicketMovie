package com.bookingticketmovieapi.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity(name="ghengoi")
public class Ghengoi {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "id_phong")
	private Phong phong;
	
	@Column(name="loaighe")
	private String loaighe;
	
	@Column(name="hang")
	private String hang;
	
	@Column(name="soghe")
	private String soghe;
	
	@OneToMany(mappedBy ="ghengoi")
    private Set<Phongchuaghe> phongchuaghe;
	
}
