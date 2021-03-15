package com.skilldistillery.stock.entities.stock;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Stock {
	@Id
	private int id;
	private String nameofstock;
	private String tikr;
	private String open;

	@Column(name = "current_trading_price")
	private String currentTradingPrice;

	@Column(name = "market_cap_in_mil")
	private String marketCapInMil;

	@Column(name = "shares_outstanding_in_mil")
	private String sharesOutstandingInMil;

	@Column(name = "public_float_in_mil")
	private String publicFloatInMil;

	@Column(name = "revenue_per_employee_in_mil")
	private String revenuePerEmployeeInMil;

	@Column(name = "price_to_earnings_ratio")
	private String priceToEarningsRatio;

	@Column(name = "short_interest_in_mil")
	private String shortInterestInMil;

	@Column(name = "percent_of_float_shorted")
	private String percentOfFloatShorted;

	@Column(name = "average_volume_in_mil")
	private String averageVolumeInMil;

	public Stock() {
		super();
	}

	public Stock(int id, String nameofstock, String tikr, String open, String currentTradingPrice,
			String marketCapInMil, String sharesOutstandingInMil, String publicFloatInMil,
			String revenuePerEmployeeInMil, String priceToEarningsRatio, String shortInterestInMil,
			String percentOfFloatShorted, String averageVolumeInMil) {
		super();
		this.id = id;
		this.nameofstock = nameofstock;
		this.tikr = tikr;
		this.open = open;
		this.currentTradingPrice = currentTradingPrice;
		this.marketCapInMil = marketCapInMil;
		this.sharesOutstandingInMil = sharesOutstandingInMil;
		this.publicFloatInMil = publicFloatInMil;
		this.revenuePerEmployeeInMil = revenuePerEmployeeInMil;
		this.priceToEarningsRatio = priceToEarningsRatio;
		this.shortInterestInMil = shortInterestInMil;
		this.percentOfFloatShorted = percentOfFloatShorted;
		this.averageVolumeInMil = averageVolumeInMil;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameofstock() {
		return nameofstock;
	}

	public void setNameofstock(String nameofstock) {
		this.nameofstock = nameofstock;
	}

	public String getTikr() {
		return tikr;
	}

	public void setTikr(String tikr) {
		this.tikr = tikr;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getCurrentTradingPrice() {
		return currentTradingPrice;
	}

	public void setCurrentTradingPrice(String currentTradingPrice) {
		this.currentTradingPrice = currentTradingPrice;
	}

	public String getMarketCapInMil() {
		return marketCapInMil;
	}

	public void setMarketCapInMil(String marketCapInMil) {
		this.marketCapInMil = marketCapInMil;
	}

	public String getSharesOutstandingInMil() {
		return sharesOutstandingInMil;
	}

	public void setSharesOutstandingInMil(String sharesOutstandingInMil) {
		this.sharesOutstandingInMil = sharesOutstandingInMil;
	}

	public String getPublicFloatInMil() {
		return publicFloatInMil;
	}

	public void setPublicFloatInMil(String publicFloatInMil) {
		this.publicFloatInMil = publicFloatInMil;
	}

	public String getRevenuePerEmployeeInMil() {
		return revenuePerEmployeeInMil;
	}

	public void setRevenuePerEmployeeInMil(String revenuePerEmployeeInMil) {
		this.revenuePerEmployeeInMil = revenuePerEmployeeInMil;
	}

	public String getPriceToEarningsRatio() {
		return priceToEarningsRatio;
	}

	public void setPriceToEarningsRatio(String priceToEarningsRatio) {
		this.priceToEarningsRatio = priceToEarningsRatio;
	}

	public String getShortInterestInMil() {
		return shortInterestInMil;
	}

	public void setShortInterestInMIl(String shortInterestInMIl) {
		this.shortInterestInMil = shortInterestInMIl;
	}

	public String getPercentOfFloatShorted() {
		return percentOfFloatShorted;
	}

	public void setPercentOfFloatShorted(String percentOfFloatShorted) {
		this.percentOfFloatShorted = percentOfFloatShorted;
	}

	public String getAverageVolumeInMil() {
		return averageVolumeInMil;
	}

	public void setAverageVolumeInMil(String averageVolumeInMil) {
		this.averageVolumeInMil = averageVolumeInMil;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((averageVolumeInMil == null) ? 0 : averageVolumeInMil.hashCode());
		result = prime * result + ((currentTradingPrice == null) ? 0 : currentTradingPrice.hashCode());
		result = prime * result + id;
		result = prime * result + ((marketCapInMil == null) ? 0 : marketCapInMil.hashCode());
		result = prime * result + ((nameofstock == null) ? 0 : nameofstock.hashCode());
		result = prime * result + ((open == null) ? 0 : open.hashCode());
		result = prime * result + ((percentOfFloatShorted == null) ? 0 : percentOfFloatShorted.hashCode());
		result = prime * result + ((priceToEarningsRatio == null) ? 0 : priceToEarningsRatio.hashCode());
		result = prime * result + ((publicFloatInMil == null) ? 0 : publicFloatInMil.hashCode());
		result = prime * result + ((revenuePerEmployeeInMil == null) ? 0 : revenuePerEmployeeInMil.hashCode());
		result = prime * result + ((sharesOutstandingInMil == null) ? 0 : sharesOutstandingInMil.hashCode());
		result = prime * result + ((shortInterestInMil == null) ? 0 : shortInterestInMil.hashCode());
		result = prime * result + ((tikr == null) ? 0 : tikr.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Stock other = (Stock) obj;
		if (averageVolumeInMil == null) {
			if (other.averageVolumeInMil != null)
				return false;
		} else if (!averageVolumeInMil.equals(other.averageVolumeInMil))
			return false;
		if (currentTradingPrice == null) {
			if (other.currentTradingPrice != null)
				return false;
		} else if (!currentTradingPrice.equals(other.currentTradingPrice))
			return false;
		if (id != other.id)
			return false;
		if (marketCapInMil == null) {
			if (other.marketCapInMil != null)
				return false;
		} else if (!marketCapInMil.equals(other.marketCapInMil))
			return false;
		if (nameofstock == null) {
			if (other.nameofstock != null)
				return false;
		} else if (!nameofstock.equals(other.nameofstock))
			return false;
		if (open == null) {
			if (other.open != null)
				return false;
		} else if (!open.equals(other.open))
			return false;
		if (percentOfFloatShorted == null) {
			if (other.percentOfFloatShorted != null)
				return false;
		} else if (!percentOfFloatShorted.equals(other.percentOfFloatShorted))
			return false;
		if (priceToEarningsRatio == null) {
			if (other.priceToEarningsRatio != null)
				return false;
		} else if (!priceToEarningsRatio.equals(other.priceToEarningsRatio))
			return false;
		if (publicFloatInMil == null) {
			if (other.publicFloatInMil != null)
				return false;
		} else if (!publicFloatInMil.equals(other.publicFloatInMil))
			return false;
		if (revenuePerEmployeeInMil == null) {
			if (other.revenuePerEmployeeInMil != null)
				return false;
		} else if (!revenuePerEmployeeInMil.equals(other.revenuePerEmployeeInMil))
			return false;
		if (sharesOutstandingInMil == null) {
			if (other.sharesOutstandingInMil != null)
				return false;
		} else if (!sharesOutstandingInMil.equals(other.sharesOutstandingInMil))
			return false;
		if (shortInterestInMil == null) {
			if (other.shortInterestInMil != null)
				return false;
		} else if (!shortInterestInMil.equals(other.shortInterestInMil))
			return false;
		if (tikr == null) {
			if (other.tikr != null)
				return false;
		} else if (!tikr.equals(other.tikr))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Stock [id=").append(id).append(", nameofstock=").append(nameofstock).append(", tikr=")
				.append(tikr).append(", open=").append(open).append(", currentTradingPrice=")
				.append(currentTradingPrice).append(", marketCapInMil=").append(marketCapInMil)
				.append(", sharesOutstandingInMil=").append(sharesOutstandingInMil).append(", publicFloatInMil=")
				.append(publicFloatInMil).append(", revenuePerEmployeeInMil=").append(revenuePerEmployeeInMil)
				.append(", priceToEarningsRatio=").append(priceToEarningsRatio).append(", shortInterestInMIl=")
				.append(shortInterestInMil).append(", percentOfFloatShorted=").append(percentOfFloatShorted)
				.append(", averageVolumeInMil=").append(averageVolumeInMil).append("]");
		return builder.toString();
	}
}
