<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<!-- External bootstrap css imports -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
						<!--  Local imports -->
	<link rel="stylesheet" href="css/index.css">
<title>Search for stock by id Result</title>
</head>
<body>
<section>
  <!--for demo wrap-->
  <h1>Stock Analysis Tool Search By Id</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Stock Ticker: ${stock.tikr}</th>
          <th>Current Statistics</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       <tr>
					<td>Name of Stock:</td>
					<td>${stock.nameofstock}</td>
				</tr>
				<tr>
					<td>Current Daily Open Price of Stock:</td>
					<td>$${stock.open}</td>
				</tr>
				<tr>
					<td>Current Trading price Of Stock:</td>
					<td>$${stock.currentTradingPrice}</td>
				</tr>
				<tr>
					<td>Current Market Cap of Stock:</td>
					<td>${stock.marketCapInMil}M</td>
				</tr>
				<tr>
					<td>Current Shares Outstanding:</td>
					<td>${stock.sharesOutstandingInMil}M</td>
				</tr>
				<tr>
					<td>Current Public Float of Stock:</td>
					<td>${stock.publicFloatInMil}M</td>
				</tr>
				<tr>
					<td>Current Revenue Per Employee:</td>
					<td>${stock.revenuePerEmployeeInMil}M</td>
				</tr>
				<tr>
					<td>Current Price to earnings Ratio<br>*(updated every quarter with quarterly report)*:</td>
					<td>${stock.priceToEarningsRatio}%</td>
				</tr>
				<tr>
					<td>Short interest of the stock<br>*(updated on the 1st and 15th of every month)*:</td>
					<td>${stock.shortInterestInMil}M</td>
				</tr>
				<tr>
					<td>Percent of The Stock Float Shorted<br>*(updated on the 1st and 15th of every month)*:</td>
					<td>${stock.percentOfFloatShorted}%</td>
				</tr>
				<tr>
					<td>Average Daily volume of Stock:</td>
					<td>${stock.averageVolumeInMil}M</td>
				</tr>
      </tbody>
    </table>
  </div>
</section>
		<div>
		<a href="returntomain.do" class="button1">
			Return to Home Page 
		</a>
<img src="images/stock.jpg" alt="vector art displaying stock picture with coins">
		</div>

<script src="js/index.js"></script>
</body>
</html>
