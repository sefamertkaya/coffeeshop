package com.kayasefamert.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Masa {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long masaId;
	
	private Long masaNo;
	
	private String siparis;
	
	private Long urunId;
	
	private int fiyat;

	
	
	public Long getMasaId() {
		return masaId;
	}

	public void setMasaId(Long masaId) {
		this.masaId = masaId;
	}

	public Long getMasaNo() {
		return masaNo;
	}

	public void setMasaNo(Long masaNo) {
		this.masaNo = masaNo;
	}

	public String getSiparis() {
		return siparis;
	}

	public void setSiparis(String siparis) {
		this.siparis = siparis;
	}

	public int getFiyat() {
		return fiyat;
	}

	public void setFiyat(int fiyat) {
		this.fiyat = fiyat;
	}

	public Long getUrunId() {
		return urunId;
	}

	public void setUrunId(Long urunId) {
		this.urunId = urunId;
	}

	@Override
	public String toString() {
		return "Masa [masaId=" + masaId + ", masaNo=" + masaNo + ", siparis=" + siparis + ", urunId=" + urunId
				+ ", fiyat=" + fiyat + "]";
	}
	
	
	
	
	
}
