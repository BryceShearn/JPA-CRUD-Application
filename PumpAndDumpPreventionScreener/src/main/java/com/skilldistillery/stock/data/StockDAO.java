package com.skilldistillery.stock.data;

import java.util.List;

import com.skilldistillery.stock.entities.stock.Stock;

public interface StockDAO {

	Stock searchStockByIdResult(int id);

	Stock generateStockResult(Stock stock);

	List<Stock> displayAllStock();

}
