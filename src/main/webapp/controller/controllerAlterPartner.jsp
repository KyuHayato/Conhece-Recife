<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="model.Partner" %>

<%@page import="DAO.PartnerDAO" %>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<%

try {	
	//aqui recebe os inputs do formulario lugares
	String namePartner = request.getParameter("partnerName");
	String categoryPartner = request.getParameter("categoryPartner");
	String roadPartner = request.getParameter("roadPartner");
	String numberPartner = request.getParameter("numberPartner");
	String cepPartner = request.getParameter("cepPartner");
	String complementPartner = request.getParameter("complementPartner");
	String statePartner = request.getParameter("statePartner");
	String cityPartner = request.getParameter("cityPartner");
	String districtPartner = request.getParameter("districtPartner");
	String phoneNumber = request.getParameter("phoneNumber");

	//pega o parametro recebido acima e envia para o banco
	Partner partner = new Partner();
	partner.setPartnerName(namePartner);
	partner.setCategory(categoryPartner);
	partner.setCity(cityPartner);
	partner.setRoad(roadPartner);
	partner.setComplement(complementPartner);
	partner.setCep(Integer.parseInt(cepPartner));
	partner.setDistrict(districtPartner);
	partner.setState(statePartner);
	partner.setNumber(Integer.parseInt(numberPartner));
	partner.setPhoneNumber(Integer.parseInt(phoneNumber));
	
	PartnerDAO dados1 = new PartnerDAO();
	dados1.addPartner(partner);
	
	System.out.println("executado com sucesso");
	response.sendRedirect("../listagem-de-parceiros-form.jsp");
	
}catch(Exception ex){
	System.out.println(ex .getMessage());
}
%>
</body>
</html>