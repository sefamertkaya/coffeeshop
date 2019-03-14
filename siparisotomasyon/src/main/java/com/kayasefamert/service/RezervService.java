package com.kayasefamert.service;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kayasefamert.entity.Rezerv;

@Service
public class RezervService {

	@Autowired
	private SessionFactory sessionFactory;
	

	public void insert(Rezerv rez) {

		sessionFactory.getCurrentSession().save(rez);
	}


	public void update(Rezerv rez) {
	
		sessionFactory.getCurrentSession().update(rez);
	}


	public void delete(Rezerv rez) {
	
		sessionFactory.getCurrentSession().delete(rez);
	}


	public ArrayList<Rezerv> getAll() {
	
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Rezerv");
		
		return (ArrayList<Rezerv>) query.getResultList();
	}


	public Rezerv getFindById(Long id) {

		Query query=sessionFactory.getCurrentSession().createQuery("FROM Rezerv Where rezervId=:rezervId")
				.setLong("rezervId", id);
		
		return (Rezerv) query.getSingleResult();
	}

}
