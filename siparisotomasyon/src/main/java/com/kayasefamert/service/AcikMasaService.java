package com.kayasefamert.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kayasefamert.dao.AcikMasaDAO;
import com.kayasefamert.entity.AcikMasa;

@Service
@Transactional
public class AcikMasaService  {

	@Autowired
	private AcikMasaDAO acikmasaDAO;
	


	public void create(AcikMasa acikMasa) {
	
		acikmasaDAO.create(acikMasa);
		
	}

	public void update(AcikMasa acikMasa) {
		acikmasaDAO.update(acikMasa);
		
	}


	public void delete(AcikMasa acikMasa) {
	acikmasaDAO.delete(acikMasa);
		
	}


	public ArrayList<AcikMasa> getAll() {

		return acikmasaDAO.getAll();
	}


	public AcikMasa getFindById(Long id) {

		return acikmasaDAO.getFindById(id);
	}
	
	

}
