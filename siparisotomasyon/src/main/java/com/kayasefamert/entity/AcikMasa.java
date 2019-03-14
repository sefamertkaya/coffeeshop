package com.kayasefamert.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AcikMasa {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long acikId;
	
	private Long masaNo;

	public Long getAcikId() {
		return acikId;
	}

	public void setAcikId(Long acikId) {
		this.acikId = acikId;
	}

	public Long getMasaNo() {
		return masaNo;
	}

	public void setMasaNo(Long masaNo) {
		this.masaNo = masaNo;
	}
	
	
	
}
