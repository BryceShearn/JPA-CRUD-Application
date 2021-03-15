package com.skilldistillery.stock.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.stock.entities.stock.Stock;



@Service
@Transactional
public class StockDaoJpalmpl implements StockDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Stock searchStockByIdResult(int id) {
		return em.find(Stock.class, id);
	}

	@Override
	public Stock generateStockResult(Stock stock) {
		em.persist(stock);
		em.flush();
		return stock;
	}

	@Override
	public List<Stock> displayAllStock() {
		String jpql = "SELECT s FROM Stock s";
		return em.createQuery(jpql, Stock.class).getResultList();
	}
}