package com.skilldistillery.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.stock.data.StockDAO;
import com.skilldistillery.stock.entities.stock.Stock;

@Controller
public class StockController {

	@Autowired
	private StockDAO dao;

	@RequestMapping(path = { "/", "returntomain.do" })
	public String index() {
		return "index";
	}
	
	@RequestMapping(path = "generateStockForm.do")
	public String generateStockForm() {
		return "generateStockForm";
	}

	@RequestMapping(path = "generateStockResult.do")
	public String generateStockResultString(Stock stock, Model model) {
		Stock generateStock = dao.generateStockResult(stock);
		model.addAttribute("stock", generateStock);
		return "generateStockResult";
	}
	
	@RequestMapping(path = "searchStockByIdResult.do")
	public String searchByIdResultString(Integer id, Model model) {
		Stock searchStockById = dao.searchStockByIdResult(id);
		model.addAttribute("stock", searchStockById);
		return "searchStockByIdResult";
	}

	@RequestMapping(path = "displayAllStocks.do")
	public String displayAllStocksResultString(Model model) {
		List<Stock> displayAllStocksList = dao.displayAllStock();
		model.addAttribute("stock", displayAllStocksList);
		return "displayAllStocks";
	}

	@RequestMapping(path = "updateStockResult.do")
	public String updateStockResultString(Integer id, Stock stock, Model model) {
		Stock updatedStock = dao.updateStock(id, stock);
		model.addAttribute("stock", updatedStock);
		return "updateStockResult";
	}

	@RequestMapping(path = "removeStockResult.do")
	public String removeStockResultString(Integer id) {
		dao.destroyStock(id);
		return "removeStockResult";
	}

}
