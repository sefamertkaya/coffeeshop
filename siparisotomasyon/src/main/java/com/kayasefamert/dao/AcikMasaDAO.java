package com.kayasefamert.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kayasefamert.entity.AcikMasa;

@Repository
public class AcikMasaDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void create(AcikMasa acikMasa) {
		
		sessionFactory.getCurrentSession().save(acikMasa);
		
	}
	
	
	public void update(AcikMasa acikMasa) {
		
		sessionFactory.getCurrentSession().update(acikMasa);
		
	}
	
	public void delete(AcikMasa acikMasa) {
		
		sessionFactory.getCurrentSession().delete(acikMasa);
		
	}
	
	
	public ArrayList<AcikMasa> getAll(){
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM AcikMasa");
		return (ArrayList<AcikMasa>) query.getResultList();
	}
	
	public AcikMasa getFindById(Long id) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM AcikMasa WHERE acikId=:acikId")
				.setLong("acikId", id);
		
		return (AcikMasa) query.getSingleResult();

		
	}
	
	
	
	
	
}
