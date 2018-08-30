<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hotel Search</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />
</head>
<body>
<h1 style="text-align: left; color:blue; padding-top:50px; padding-left: 150px">Hotels in ${city }</h1>
	<div class="container" style="padding:30px;">
	<table class="table table-hover" >
		<c:forEach var="item" items="${hotels}">
			<tr class="table-info"><td><strong>${item.name}</strong></td></tr>
			<tr class="table-success"><td>Price per night: $${item.pricePerNight}</td></tr>
		</c:forEach>
	</table>
	<p><a href="/" >Start a new search</a></p>
	<p> <a href="/api/hotels/city=${city}" class="btn btn-primary">Use Restful</a></p>
	
	</div>
</body>
</html>