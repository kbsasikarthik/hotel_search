<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
		<table class="table">
			<thead>
			<tr>
				<th>ID</th><th>Hotel Name</th><th>City</th><th>Price</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${hotels}" var="hotel">
				<tr>
					<td>${hotel.id}</td><td>${hotel.name}</td><td>${hotel.city}</td><td>$${hotel.pricePerNight}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
<p><a href="/" class="btn btn-secondary mb-2 mr-2">Home</a></p>
	
</body>
</html>