package com.kayasefamert.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kayasefamert.dao.UrunlerDAO;
import com.kayasefamert.entity.Urunler;

@Service
@Transactional
public class UrunService {
	
	@Autowired
	private UrunlerDAO urunDAO;


	public void urunEkle(Urunler urun) {
	
		urunDAO.insert(urun);
	}

	
	public void urunUpdate(Urunler urun) {
	
		urunDAO.update(urun);
	}

	
	public void urunDelete(Urunler urun) {
	
		urunDAO.delete(urun);
	}


	public ArrayList<Urunler> getAll() {
	
		return urunDAO.getAll();
	}


	public Urunler getFindById(Long id) {
	
		return urunDAO.getFindById(id);
	}
	

}
