package com.bookingticketmovieapi.entity;

import java.sql.Date;
import java.sql.Time;
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


@Entity(name="phim")
public class Phim {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="id_quocgia")
	private Quocgia quocgia;
	
	@Column(name="tenphim")
	private String tenphim;
	
	@Column(name="mota")
	private String mota;
	
	@Column(name="trailerphim")
	private String hinhanh;
	
	@Column(name="theloai")
	private String ngaytao;
	
	@Column(name="dienvien")
	private String dienvien;
	
	@Column(name="nhasanxuat")
	private String nhasansuat;
	
	@Column(name="ngaykhoichieu")
	private Date ngaykhoichieu;
	
	@Column(name="thoiluong")
	private String thoiluong;
	
	@Column(name="poster")
	private String poster;
	
	@Column(name="phimcens")
	private String  phimcens;
	
	@OneToMany(mappedBy = "phim")
	private Set<Lichchieupphim> lichchieuphim;
	
}
