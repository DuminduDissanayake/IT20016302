<%@page import="com.Timetable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Power Interruption Timetable</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/product.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Timetable</h1>

				<form id="formProduct" name="formProduct" method="post" action="Timetable.jsp">


					Areacode: <input id="areacode" name="areacode" type="text"
						class="form-control form-control-sm"> 
						
						<br>Catagary: <input id="catagary" name="catagary" type="text"
						class="form-control form-control-sm"> 
						
						<br> Date: <input id="date" name="date" type="text"
						class="form-control form-control-sm"> 
						
						<br> Time: <input id="time" name="time" type="text"
						class="form-control form-control-sm">
						
						<br> Time: <input id="twon" name="twon" type="text"
						class="form-control form-control-sm">
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
						Timetable projectObj = new Timetable();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
