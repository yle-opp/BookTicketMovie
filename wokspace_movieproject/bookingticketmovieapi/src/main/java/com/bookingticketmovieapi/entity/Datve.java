package com.bookingticketmovieapi.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="datve")
public class Datve {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name ="id_makhachhang")
	private Khachhang khachhang;
	
	@ManyToOne
	@JoinColumn(name ="id_lichchieuphim")
	private Lichchieupphim lichchieupphim;
	
	@ManyToOne
	@JoinColumn(name ="id_phongchuaghe")
	private Phongchuaghe phongchuaghe;
	
	@Column(name="gia")
	private double gia;
	
	@Column(name="trangthai_ghe")
	private int trangthaighe;
}
