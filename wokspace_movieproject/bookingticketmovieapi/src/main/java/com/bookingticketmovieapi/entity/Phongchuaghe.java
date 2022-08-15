

package com.bookingticketmovieapi.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name="phongchuaghe")
public class Phongchuaghe {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
    @JoinColumn(name = "id_ghe")
    private Ghengoi ghengoi;

    @ManyToOne
    @JoinColumn(name = "id_phong")
    private Phong phong;

    @OneToMany(mappedBy ="phongchuaghe")
    private Set<Datve> datve;
}
