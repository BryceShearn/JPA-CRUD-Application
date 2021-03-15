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
	
		@RequestMapping(path= {"/", "returntomain.do"})
		public String index() {
			return "index";
		}

		@RequestMapping(path="searchStockByIdResult.do")
		public String searchStockByTikrResult(int id, Model model) {
		Stock searchStockByIdStock = dao.searchStockByIdResult(id);
		model.addAttribute("stock", searchStockByIdStock);
		return "searchStockByIdResult";
		}
		@RequestMapping(path="generateStockForm.do")
		public String generateStockForm() {
		return "generateStockForm";
		}
		@RequestMapping(path="generateStockResult.do")
		public String generateStockResult(Stock stock, Model model) {
			Stock generateStock = dao.generateStockResult(stock);
			model.addAttribute("stock", generateStock);
			return "generateStockResult";
		}
		@RequestMapping(path="displayAllStocks.do")
		public String results(Model model) {
			List<Stock> displayAllStocksList = dao.displayAllStock();
			model.addAttribute("stock", displayAllStocksList);
			return "displayAllStocks";
		}
}
