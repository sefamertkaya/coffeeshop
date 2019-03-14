package com.kayasefamert.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rezerv {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long rezervId;
	
	private Long masaNo;
	
	private Date rezervSaat=new Date();

	public Long getRezervId() {
		return rezervId;
	}

	public void setRezervId(Long rezervId) {
		this.rezervId = rezervId;
	}

	public Long getMasaNo() {
		return masaNo;
	}

	public void setMasaNo(Long masaNo) {
		this.masaNo = masaNo;
	}

	public Date getRezervSaat() {
		return rezervSaat;
	}

	public void setRezervSaat(Date rezervSaat) {
		this.rezervSaat = rezervSaat;
	}
	
	
	
}
