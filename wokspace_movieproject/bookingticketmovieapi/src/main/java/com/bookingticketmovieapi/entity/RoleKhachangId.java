package com.bookingticketmovieapi.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class RoleKhachangId implements Serializable{
	
	@Column(name = "role_id")
	private long roleId;
	
	@Column(name = "user_id")
	private long userId;
	
	public RoleKhachangId(long roleid, long userid) {
		// TODO Auto-generated constructor stub
		this.roleId = roleid;
		this.userId = userid;
	}
	
	public RoleKhachangId() {
		
	}
}
