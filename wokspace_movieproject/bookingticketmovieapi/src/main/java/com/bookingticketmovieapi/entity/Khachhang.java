package com.bookingticketmovieapi.entity;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="khachhang")
public class Khachhang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="hoten")
	private String hoten;
	
	@Column(name="matkhau")
	private String matkhau;
	
	@Column(name="taikhoan")
	private String taikhoan;
	
	@Column(name="hinhdaidien")
	private String hinhdaidien;
	
	@Column(name="email")
	private String email;
	
	@Column(name="diachi")
	private String diachi;
	
	@Column(name="dienthoai")
	private String dienthoai;
	
	@Column(name="gioitinh")
	private String gioitinh;
	
	@Column(name="ngaysinh")
	private Date ngaysinh;
	
	@OneToMany(mappedBy = "khachhang" ) // , fetch = FetchType.EAGER tức là khi bạn find, select đối tượng Khachhang từ database thì tất cả các đối tượng Roleskh liên quan sẽ được lấy ra và lưu vào Roleskh
	private Set<RoleKhachhang> roleKhachhang;
	
	@OneToMany(mappedBy = "khachhang")
    private Set<Datve> datve;
}
