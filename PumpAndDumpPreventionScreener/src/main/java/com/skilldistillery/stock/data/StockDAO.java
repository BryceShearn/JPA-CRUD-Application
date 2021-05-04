package com.skilldistillery.stock.data;

import java.util.List;

import com.skilldistillery.stock.entities.stock.Stock;

public interface StockDAO {

	Stock searchStockByIdResult(Integer id);

	Stock generateStockResult(Stock stock);

	List<Stock> displayAllStock();

	Stock updateStock(Integer id, Stock stock);

	void destroyStock(Integer id);

}
