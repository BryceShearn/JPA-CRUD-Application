package com.skilldistillery.stock.entities.stock;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class StockTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Stock stock;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("StockPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		stock = em.find(Stock.class, 10);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		stock = null;
	}

	@Test
	@DisplayName ("test if stock returns valid")
	void test1() {
		assertNotNull(stock);
		assertEquals("Second Sight Medical Products Inc", stock.getNameofstock());
		assertEquals("EYES", stock.getTikr());
		assertEquals("14.81", stock.getCurrentTradingPrice());
		assertEquals("10.27", stock.getOpen());
		assertEquals("352.85", stock.getMarketCapInMil());
		assertEquals("23.21", stock.getSharesOutstandingInMil());
		assertEquals("6.27", stock.getPublicFloatInMil());
		assertEquals("30.17", stock.getRevenuePerEmployeeInMil());
		assertEquals("1.21", stock.getPriceToEarningsRatio());
		assertEquals("150.29", stock.getShortInterestInMil());
		assertEquals("2.40", stock.getPercentOfFloatShorted());
		assertEquals("21.48", stock.getAverageVolumeInMil());
	}
}