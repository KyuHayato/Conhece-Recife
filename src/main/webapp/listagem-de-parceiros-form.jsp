<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="DAO.PartnerDAO"%>
<%@page import="model.Partner"%>
<%@page import="java.util.ArrayList"%>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<title>Conhece Recife - Listar Parceiros</title>
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
					style="font-family: Fjalla One; font-size: 75px;">PARCEIROS</h1>
				<h1 class="text-center"
					style="font-family: Fjalla One; font-size: 50px;">PARCEIROS</h1>
			</div>
		</div>
		<div class="container">
			<table width="1200" border="1px">
				<thead>
					<tr>
						<th width="330" height="40" bgcolor="#CCC">NOME DO PARCEIRO</th>
						<th width="200" height="40" bgcolor="#CCC">CATEGORIA</th>
						<th width="200" height="40" bgcolor="#CCC">CIDADE</th>
						<th width="200" height="40" bgcolor="#CCC">BAIRRO</th>
						<th width="200" height="40" bgcolor="#CCC">ESTADO</th>
						<th width="200" height="40" bgcolor="#CCC">...</th>
						<th width="200" height="40" bgcolor="#CCC">...</th>
					</tr>
				</thead>
				<tbody>
					<%
					
					PartnerDAO dados1 = new PartnerDAO();
					ArrayList<Partner> list = dados1.selectPartner();
				
					for (Partner partner : list) {
						out.print(" <tr>");
						out.print("<td>" + partner.getPartnerName() + "</td>");
						out.print("<td>" + partner.getCity() + "</td>");
						out.print("<td>" + partner.getState() + "</td>");
						out.print("<td>" + partner.getDistrict() + "</td>");
						out.print("<td>" + partner.getNumber() + "</td>");
						out.print("<td>");
						out.print(
						"<a class='btn button-home radius pt-2 text-light' style='background-color: green; height:40px;' href='atualiza-parceiros-form.jsp?id=" + partner.getId() + "'>");
						out.print("Atualizar</a>");
						out.print("</td>");
						out.print("<td>");
						out.print("<button type='button' class='btn button-home radius pt-2' style='background-color: red; height:40px;'>");
						out.print(
						"<a href='#' style='color: white; font-weight: strong; text-decoration: none;' onclick='abrirMensagemRemocao("
								+ partner.getId() + ")');>Excluir</a></button>");
						out.print("</td>");
						out.print(" </tr>");

					}
					%>

				</tbody>
			</table>
		</div>
		<div class="row justify-content-center">
			<div class="col-4">
				<button type="button" class="btn button-home radius mt-4">
					<a href="listagem-administrador.jsp"
						style="color: black; text-decoration: none;"> < Home</a>
				</button>
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

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Atenção</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">Deseja realmente remover o parceiro?</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						onclick="deletePartner();">Remover</button>
				</div>

			</div>
		</div>
	</div>

</body>
<script>
	$(document).ready(
			function() {
				let selectID;
				console.log(selectID);
				abrirMensagemRemocao = function(id) {
					console.log("entrou e esse", id);
					selectID = id;
					$("#myModal").modal();
				}
				deletePartner = function(id) {
					window.location.href = "controller/controllerDeletePartner.jsp?id="
							+ selectID;
				}

			});
</script>

</html>