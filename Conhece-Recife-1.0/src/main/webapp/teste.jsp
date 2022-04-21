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
						"<button type='button' class='btn button-home radius pt-2 text-light' style='background-color: green; height:40px;' data-toggle='modal' data-target='#alterPartnerModal'>");
						out.print("Atualizar</button>");
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

	<!-- Modal -->
	<div class="modal fade" id="alterPartnerModal" tabindex="-1"
		role="dialog" aria-labelledby="alterModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content color-background">
				<div class="modal-header">
					<h5 class="modal-title" id="alterModalLabel">Atualizar dados</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="p-5 radius color-background">
					<form action="controller/controllerPartner.jsp" class="form">
						<div class="row justify-content-center">

							<div class="row">
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											name="partnerName" id="partnerName"
											placeholder="Nome do Parceiro">
										<div>
											<span class="style-error" id="errorPartnerName"
												style="display: none;">Nome invalido, insira os dados
												de forma correta</span>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="form-group radius">
										<input type="text" class="form-control radius input-form p-2"
											placeholder="Categoria" name="categoryPartner"
											id="categoryPartner">
										<div>
											<span class="style-error" id="errorCategoryPartner"
												style="display: none;">Digite uma categoria</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											placeholder="Rua" name="roadPartner" id="roadPartner">
										<div>
											<span class="style-error" id="errorPartnerRoad"
												style="display: none;">Rua invalida, insira os dados
												de forma correta</span>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<input type="number" class="form-control radius input-form"
											placeholder="Número" name="numberPartner" id="numberPartner">
										<div>
											<span class="style-error" id="errorNumberPartner"
												style="display: none;">Numero invalido, insira os
												dados de forma correta</span>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col">
									<div class="form-group">
										<input type="number" class="form-control radius input-form"
											placeholder="Cep" name="cepPartner" id="cepPartner">
										<div>
											<span class="style-error" id="errorCepPartner"
												style="display: none;">CEP invalido, insira os dados
												de forma correta</span>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											placeholder="Complemento" name="complementPartner"
											id="complementPartner">
										<div>
											<span class="style-error" id="errorComplementPartner"
												style="display: none;">Complemento invalido, insira
												os dados de forma correta</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											placeholder="Cidade" name="cityPartner" id="cityPartner">
										<div>
											<span class="style-error" id="errorCityPartner"
												style="display: none;">Cidade invalido, insira os
												dados de forma correta</span>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											placeholder="Estado" name="statePartner" id="statePartner">
										<div>
											<span class="style-error" id="errorStatePartner"
												style="display: none;">Estado invalido, insira os
												dados de forma correta</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<input type="text" class="form-control radius input-form"
											placeholder="Bairro" name="districtPartner"
											id="districtPartner">
										<div>
											<span class="style-error" id="errorDistrictPartner"
												style="display: none;">Bairro invalido, insira os
												dados de forma correta</span>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<input type="number" class="form-control radius input-form"
											placeholder="Telefone" name="phoneNumber" id="phoneNumber">
										<div>
											<span class="style-error" id="errorPhoneNumber"
												style="display: none;">Numero de telefone invalido
												invalido</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row justify-content-end">
                            <button type="button" class="btn btn-secondary radius mr-2 mt-3" data-dismiss="modal">Sair</button>
                            <button type="submit" class="btn btn-dark radius mt-3"
                                onclick="validateFormRegisterPartner(this)">Atualizar</button>
                        </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</html>