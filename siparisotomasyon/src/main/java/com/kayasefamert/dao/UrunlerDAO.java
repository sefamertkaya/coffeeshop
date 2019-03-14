package com.kayasefamert.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kayasefamert.entity.Urunler;

@Repository
public class UrunlerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Urunler urun) {
		
		sessionFactory.getCurrentSession().save(urun);
		
	}
	
	public void update(Urunler urun) {
		
		sessionFactory.getCurrentSession().update(urun);
		
	}
	
	public void delete(Urunler urun) {
		
		sessionFactory.getCurrentSession().delete(urun);
		
	}
	
	public ArrayList<Urunler> getAll(){
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Urunler");
		
		return (ArrayList<Urunler>) query.getResultList();
		
	}
	
	public Urunler getFindById(Long urunId) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Urunler WHERE urunId=:urunId")
				.setLong("urunId", urunId);
		
		return (Urunler) query.getSingleResult();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
