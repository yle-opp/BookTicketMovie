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


@Entity(name="phong")
public class Phong {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="id_rap")
	private Rap rap;
	
	@Column(name="tenphong")
	private String tenphong;
	
	
	@OneToMany(mappedBy = "phong")
    private Set<Phongchuaghe> phongchuaghe;
	
	@OneToMany(mappedBy = "phong")
    private Set<Lichchieupphim> lichchieupphim;
}
