<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<%@page import="model.Place" %>

<%@page import="DAO.PlaceDAO" %>
<html>

<head>
<meta charset="ISO-8859-1">

</head>

<body>

<%

try {
	//aqui recebe os inputs do formulario lugares
	String namePlace = request.getParameter("namePlace");
	String districtPlace = request.getParameter("districtPlace");
	String placeRoad = request.getParameter("placeRoad");
	String numberPlace = request.getParameter("numberPlace");
	String cepPlace = request.getParameter("cepPlace");
	String complementPlace = request.getParameter("complementPlace");
	String statePlace = request.getParameter("statePlace");
	String cityPlace = request.getParameter("cityPlace");

	//pega o parametro recebido acima e envia para o banco
	Place lugar = new Place();
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
	dados1.addPlace(lugar);
	
	System.out.println("executado com sucesso");
	response.sendRedirect("../listagem-de-lugares-form.jsp");
}catch(Exception ex){
	System.out.println(ex .getMessage());
}
%>
</body>
</html>