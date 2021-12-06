<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="DAO.PartnerDAO"%>
<%@page import="model.Partner"%>
<%@page import="java.util.ArrayList"%>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Conhece Recife - Contato</title>
</head>

<body>

<%
PartnerDAO dados = new PartnerDAO();
String id=request.getParameter("id");
Partner partner2 = dados.getPartner(Integer.parseInt(id));


%>
    <header>
        <div>
            <img src="images/rectangle_54.png" alt="retangulo2"
                style="position: absolute; width: 1035.33px;top: -26.21px;">
            <img src="images/rectangle_55.png" alt="retangulo2"
                style="position: relative;width: 670.42px;left:751,73px;height: 266px;top: -13px;">
            <img src="images/Conhece Recife Logo.png" alt="logo"
                style="position: absolute;width: 162px;height: 170px;left: 170px;top: 14px;">
        </div>
    </header>
    <section>

        <!-- Colocar dentro de um form que tenha um metodo POST para enviar a requisição  -->
        <div class="container">
            <div class="row mt-5">
                <div class="col-lg-12">
                    <div class="mb-4">
                        <h1 class="text-center label-disabled" style="font-family: Fjalla One;"> Alterar PARCEIROS</h1>
                        <h1 class="text-center" style="font-family: Fjalla One;"> Alterar PARCEIROS</h1>
                    </div>
                </div>
            </div>
            <div>
                <img src=images/bolas-design.png
                    style="position: absolute;width: 133.5px;height: 135px;top: 260px;right:330px;left:0,8px;">
            </div>
            <form action="controller/controllerPartner.jsp" class="form">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class=" border border-dark p-4 radius" style="background: rgba(255, 247, 206, 0.33);">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form" name="partnerName"
                                            id="partnerName" placeholder="Nome do Parceiro" value="<%=partner2.getPartnerName() %> ">
                                        <div>
                                            <span class="style-error" id="errorPartnerName" style="display: none;">Nome
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group radius">
                                           <input type="text" class="form-control radius input-form p-2"
                                            placeholder="Categoria" name="categoryPartner" id="categoryPartner" value="<%=partner2.getCategory() %> ">
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
                                        <input type="text" class="form-control radius input-form" placeholder="Rua"
                                            name="roadPartner" id="roadPartner" value="<%=partner2.getRoad() %> ">
                                        <div>
                                            <span class="style-error" id="errorPartnerRoad" style="display: none;">Rua
                                                invalida, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <input type="number" class="form-control radius input-form" placeholder="Número"
                                            name="numberPartner" id="numberPartner" value="<%=partner2.getNumber() %> ">
                                        <div>
                                            <span class="style-error" id="errorNumberPartner"
                                                style="display: none;">Numero
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <input type="number" class="form-control radius input-form" placeholder="Cep"
                                            name="cepPartner" id="cepPartner" value="<%=partner2.getCep() %> ">
                                        <div>
                                            <span class="style-error" id="errorCepPartner" style="display: none;">CEP
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form"
                                            placeholder="Complemento" name="complementPartner" id="complementPartner" value="<%=partner2.getComplement() %> ">
                                        <div>
                                            <span class="style-error" id="errorComplementPartner"
                                                style="display: none;">Complemento
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form" placeholder="Cidade"
                                            name="cityPartner" id="cityPartner" value="<%=partner2.getCity() %> ">
                                        <div>
                                            <span class="style-error" id="errorCityPartner"
                                                style="display: none;">Cidade
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form" placeholder="Estado"
                                            name="statePartner" id="statePartner" value="<%=partner2.getState() %> ">
                                        <div>
                                            <span class="style-error" id="errorStatePartner"
                                                style="display: none;">Estado
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <input type="text" class="form-control radius input-form" placeholder="Bairro"
                                            name="districtPartner" id="districtPartner" value="<%=partner2.getDistrict() %> ">
                                        <div>
                                            <span class="style-error" id="errorDistrictPartner"
                                                style="display: none;">Bairro
                                                invalido, insira os dados de forma correta</span>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col">
                                    <div class="form-group">
                                        <input type="number" class="form-control radius input-form" placeholder="Telefone"
                                            name="phoneNumber" id="phoneNumber" value="<%=partner2.getPhoneNumber() %> ">
                                        <div>
                                            <span class="style-error" id="errorPhoneNumber"
                                                style="display: none;">Numero de telefone invalido
                                                invalido</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <button type="submit" class="btn btn-dark btn-block radius mt-4"
                            onclick="validateFormRegisterPartner(this)">Enviar</button>
                        <div class="row justify-content-center">
                            <div class="col-4">
                                <button type="button" class="btn button-home radius mt-4 ml-5">
                                    <a href="listagem-administrador.jsp" style="color: black; text-decoration: none;">
                                        < Home</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>


    </section>
    <footer>
        <div class="row justify-content-end">
            <div class="col-6">
                <figure class="ml-5">
                    <img src="images/rectangle_56.png" alt="retangulo2" style="position: absolute;top:170px;left:80px;">
                    <img src="images/rectangle_57.png" alt="retangulo2"
                        style="position: relative;top:205px;left:270px;">
                </figure>
            </div>
        </div>
    </footer>
</body>
<script src="js/validacoes.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>

</html>