package com.kayasefamert.dao;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kayasefamert.entity.Masa;


@Repository
public class MasaDAO {

		@Autowired
		private SessionFactory sessionFactory;
		
		public void insert(Masa masa) {
			
			sessionFactory.getCurrentSession().save(masa);
			
		}
		
		public void update(Masa masa) {
			
			sessionFactory.getCurrentSession().update(masa);
			
		}
		
		public void delete(Masa masa) {
			
			sessionFactory.getCurrentSession().delete(masa);
			
		}
		
		public ArrayList<Masa> getAll(){
			
			Query query=sessionFactory.getCurrentSession().createQuery("FROM Masa");
			
			return (ArrayList<Masa>) query.getResultList();
			
		}
		
		public ArrayList<Masa> getHesap(Long masaNo){
			
			Query query=sessionFactory.getCurrentSession().createQuery("FROM Masa WHERE masaNo=:masaNo")
					.setLong("masaNo", masaNo);
			
				return (ArrayList<Masa>) query.getResultList();

		}
		
			public ArrayList<Masa> disnict(){
			
			Query query=sessionFactory.getCurrentSession().createSQLQuery("SELECT DISTINCT masaNo FROM Masa");
					
				return (ArrayList<Masa>) query.getResultList();

		}
		
		
		public Masa getFindById(Long masaId) {
			
			Query query=sessionFactory.getCurrentSession().createQuery("FROM Masa WHERE masaId=:masaId")
					.setLong("masaId", masaId);
			
			return (Masa) query.getSingleResult();
		}
		
		public Masa getFindByIdURUN(Long urunId) {
			
			Query query=sessionFactory.getCurrentSession().createQuery("FROM Masa WHERE urunId=:urunId")
					.setLong("urunId", urunId);
			
			return (Masa) query.getSingleResult();
		}
		
				
	public int getFatura(Long masaNo) {
			
			int sayi=((Long) sessionFactory.getCurrentSession().createQuery("SELECT SUM(fiyat) as fiyat FROM Masa WHERE masaNo=:masaNo")
					.setLong("masaNo", masaNo).uniqueResult()).intValue();
			
			return sayi;
		}
}
