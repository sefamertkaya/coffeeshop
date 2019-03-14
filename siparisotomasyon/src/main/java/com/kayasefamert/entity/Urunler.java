package com.kayasefamert.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Urunler {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long urunId;
	
	private String kategori;
	
	private String urunAdi;
	
	private int fiyat;

	public Long getUrunId() {
		return urunId;
	}

	public void setUrunId(Long urunId) {
		this.urunId = urunId;
	}

	public String getKategori() {
		return kategori;
	}

	public void setKategori(String kategori) {
		this.kategori = kategori;
	}

	public String getUrunAdi() {
		return urunAdi;
	}

	public void setUrunAdi(String urunAdi) {
		this.urunAdi = urunAdi;
	}

	public int getFiyat() {
		return fiyat;
	}

	public void setFiyat(int fiyat) {
		this.fiyat = fiyat;
	}
	
	
	
}
