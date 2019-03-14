package com.kayasefamert.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kayasefamert.dao.MasaDAO;
import com.kayasefamert.entity.Masa;

@Service
@Transactional
public class MasaService {

	@Autowired
	private MasaDAO masaDAO;
	

	public void masaAc(Masa masa) {
		
		masaDAO.insert(masa);
	}


	public void masaUpdate(Masa masa) {
	
		masaDAO.update(masa);
	}

	public void masaSil(Masa masa) {
		
		masaDAO.delete(masa);
	}


	public ArrayList<Masa> getAll() {
		
		return masaDAO.getAll();
	}


	public Masa getFindById(Long id) {

		return masaDAO.getFindById(id);
	}
	
	
	public Masa getFindByIdURUN(Long urunId) {

		return masaDAO.getFindByIdURUN(urunId);
	}
	
	public ArrayList<Masa> getHesap(Long masaNo){
		
		return masaDAO.getHesap(masaNo);
	}
	
public ArrayList<Masa> disnict(){
		
		return masaDAO.disnict();
	}
	
	public int getFatura(Long masaNo) {
		
		return masaDAO.getFatura(masaNo);
	}
	
	
	

}
