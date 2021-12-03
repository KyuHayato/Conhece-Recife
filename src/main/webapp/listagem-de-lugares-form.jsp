<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="DAO.PlaceDAO"%>
<%@page import="model.Place"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<title>Conhece Recife - Exibir Lugares</title>
</head>

<body>
	<header>
		<div>
			<img src="images/rectangle_54.png" alt="retangulo2"
				style="position: absolute; width: 1035.33px; top: -26.21px;">
			<img src="images/rectangle_55.png" alt="retangulo2"
				style="position: relative; width: 670.42px; left: 751, 73px; height: 266px; top: -13px;">
			<img src="images/Conhece Recife Logo.png" alt="logo"
				style="position: absolute; width: 162px; height: 170px; left: 170px; top: 14px;">
		</div>
	</header>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col--lg-12 mb-4">
				<h1 class="label-disabled"
					style="font-family: Fjalla One; font-size: 75px;">LUGARES</h1>
				<h1 class="text-center"
					style="font-family: Fjalla One; font-size: 50px;">LUGARES</h1>
			</div>
		</div>

		<div class="container">
			<table width="1200" border="1px">
				<thead>
					<tr>
						<th width="330" height="40" bgcolor="#CCC">NOME DO LUGAR</th>
						<th width="200" height="40" bgcolor="#CCC">CIDADE</th>
						<th width="200" height="40" bgcolor="#CCC">ESTADO</th>
						<th width="200" height="40" bgcolor="#CCC">BAIRRO</th>
						<th width="200" height="40" bgcolor="#CCC">NUMERO</th>
					</tr>
				</thead>
				<tbody>
					<%
					PlaceDAO dados1 = new PlaceDAO();
					ArrayList<Place> lista = dados1.selectPlace();
					for (Place place : lista) {
						out.print(" <tr>");
						out.print("<td>" + place.getName() + "</td>");
						out.print("<td>" + place.getCity() + "</td>");
						out.print("<td>" + place.getState() + "</td>");
						out.print("<td>" + place.getDistrict() + "</td>");
						out.print("<td>" + place.getNumber() + "</td>");
						out.print("<td>");
						out.print("<button type='button' class='btn button-home radius pt-2' style='background-color: green; height:40px;'>");
						out.print("<a href='alterarLugares-form.jsp?Name="+place.getName()+"' style='color: white; font-weight: strong; text-decoration: none; '>Atualizar</a></button>");
						out.print("</td>");
						out.print("<td>");
						out.print("<button type='button' class='btn button-home radius pt-2' style='background-color: red; height:40px;'>");
						out.print("<a href='#' style='color: white; font-weight: strong; text-decoration: none; '>Excluir</a></button>");
						out.print("</td>");
						out.print(" </tr>");
					}
					%>
				</tbody>
			</table>
			
			<div class="row justify-content-center">
				<div class="col-4">
					<button type="button" class="btn button-home radius mt-4">
						<a href="listagem-administrador.jsp" style="color: black; text-decoration: none;">
							< Home</a>
					</button>
				</div>
			</div>
		</div>
		<footer>
			<div class="row justify-content-end">
				<div class="col-6">
					<figure class="ml-5">
						<img src="images/rectangle_56.png" alt="retangulo2"
							style="position: absolute; top: 170px; left: 80px;">
						<img src="images/rectangle_57.png" alt="retangulo2"
							style="position: relative; top: 205px; left: 270px;">
					</figure>
				</div>
			</div>
		</footer>
	</div>