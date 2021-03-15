<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
						<!--  Local imports -->
	<link rel="stylesheet" href="css/index.css">
		<title>Stock Screener</title>
	</head>
	<body>
	<section class = sectionIndex>
		<h1>Welcome to The One Stop Stock Analysis Tool</h1>
	  	<br>	
  			<form action="searchStockByIdResult.do" method="GET">
    			Stock Ticker:
    			<input type="text" name="id" size="10"/> 
    			<input type="submit" value="Search stock by Id"/>
  			</form>
				<a href="displayAllStocks.do" class="button1">Click here to list all stocks</a>

				<a href="generateStockForm.do" class="button1">Click here to add a stock</a>
 </section>
  	<div class = imgIndex>
  	<img src="images/stock.jpg" alt="vector art displaying stock picture with coins">
	</div>
	</body>
</html>
