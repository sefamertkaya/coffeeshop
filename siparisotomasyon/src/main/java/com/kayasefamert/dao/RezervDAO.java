package com.kayasefamert.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kayasefamert.entity.Rezerv;

@Repository
public class RezervDAO {
	
	
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
public ArrayList<Rezerv> getAll(){
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Rezerv");
		
		return (ArrayList<Rezerv>) query.getResultList();
		
	}
	
	public Rezerv getFindById(Long rezervId) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Rezerv WHERE rezervId=:rezervId")
				.setLong("rezervId", rezervId);
		
		return (Rezerv) query.getSingleResult();
	}
	
	
}
