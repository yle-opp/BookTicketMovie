package com.bookingticketmovieapi.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name="lichchieupphim")
public class Lichchieupphim {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name="id_phong")
	private Phong phong;

	@ManyToOne
	@JoinColumn(name="id_phim")
	private Phim phim;

	@ManyToOne
	@JoinColumn(name="id_lichchieu")
	private LichChieu lichchieu;

	@OneToMany(mappedBy = "lichchieupphim")
	private Set<Datve> datve;
}
