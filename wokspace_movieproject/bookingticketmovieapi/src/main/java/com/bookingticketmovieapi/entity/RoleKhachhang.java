package com.bookingticketmovieapi.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;


@Entity(name = "role_khachhang")
public class RoleKhachhang {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne()
	//@MapsId("user_id")
	@JoinColumn(name = "user_id")
	private Khachhang khachhang;
	
	@ManyToOne()
	//@MapsId("role_id")
	@JoinColumn(name = "role_id")
	private Roleskh roleskh;
}
