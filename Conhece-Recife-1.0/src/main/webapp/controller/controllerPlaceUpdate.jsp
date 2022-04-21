<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<%@page import="model.Place" %>

<%@page import="DAO.PlaceDAO" %>
<html>

<head>
<meta charset="ISO-8859-1">
<title> Update lugar</title>
</head>

<body>

<%

try {
	/*
	idPlace=26&
	namePlace=Museu+Cais+do+Sert%E3o&
	placeRoad=AV.+ALFREDO+LISBOA&
	numberPlace=0&
	cepPlace=50030150&
	complementPlace=teste&
	cityPlace=Recife&
	statePlace=Pernambuco&
	descriptionPlace=fdsfsdfsd
	
			descriptionPlace
			statePlace
			cityPlace
			complementPlace
			cepPlace
			numberPlace
			placeRoad
			namePlace
			idPlace
	*/
	//aqui recebe os inputs do formulario lugares
	String idPlace = request.getParameter("idPlace");
	String namePlace = request.getParameter("namePlace");
	String districtPlace = request.getParameter("districtPlace");
	String placeRoad = request.getParameter("placeRoad");
	String numberPlace = request.getParameter("numberPlace");
	String cepPlace = request.getParameter("cepPlace");
	String complementPlace = request.getParameter("complementPlace");
	String statePlace = request.getParameter("statePlace");
	String cityPlace = request.getParameter("cityPlace");
	String descriptionPlace = request.getParameter("descriptionPlace");
	//pega o parametro recebido acima e envia para o banco
	Place lugar = new Place();
	lugar.setId(Integer.parseInt(idPlace));
	lugar.setName(namePlace);
	lugar.setDescription(districtPlace);
	lugar.setCity(cityPlace);
	lugar.setRoad(placeRoad);
	lugar.setComplement(complementPlace);
	lugar.setCep(Integer.parseInt(cepPlace));
	lugar.setDistrict(districtPlace);
	lugar.setState(statePlace);
	lugar.setNumber(Integer.parseInt(numberPlace));
	
	PlaceDAO dados1 = new PlaceDAO();
	dados1.update(lugar);
	
	out.println("executado com sucesso");
	response.sendRedirect("../listagem-de-lugares-form.jsp");
}catch(Exception ex){
	out.println(ex .getMessage());
}
%>
</body>
</html>