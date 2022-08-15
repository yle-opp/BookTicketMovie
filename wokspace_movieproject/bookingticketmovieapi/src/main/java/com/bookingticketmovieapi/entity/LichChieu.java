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
import javax.persistence.OneToMany;



@Entity(name="lichchieu")
public class LichChieu {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="lichchieu")
	private Date lichchieu;
	
	@Column(name="thoigianbatdau")
	private Time thoigianbatdau;
	
	@Column(name="thoigianketthuc")
	private Time thoigianketthuc;
	
	
	@OneToMany(mappedBy = "lichchieu")
    private Set<Lichchieupphim> lichchieuphim;
}
