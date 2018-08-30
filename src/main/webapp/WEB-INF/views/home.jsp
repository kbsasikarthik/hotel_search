<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta charset="ISO-8859-1">
<title>Welcome to Hotel Search</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body >
 <h1>Welcome to Hotel Search!</h1>
 <form class="form-inline"  action="/hotels" autocomplete="off">
 <div class="wrapper">
		  <label class="sr-only" for="city">City</label>
		  <select class="form-control mb-2 mr-sm-2" id="city" name="city">
		  	<option value="">City</option>
		  	<c:forEach items="${ cities }" var="ci">
		  		<option <c:if test="${ ci eq param.city }">selected</c:if>>${ ci }</option>
		  	</c:forEach>
		  </select>
	<br>
	<p><button type="submit" class="btn btn-primary mb-2 mr-2">Search</button></p>
</div>	
</form>
</body>
</html>