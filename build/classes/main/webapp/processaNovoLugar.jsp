<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<%@page import="model.Place" %>
<%@page import="main.webapp.processaNovoLugar.jsp" %>
<%@page import="DAO.PlacesDAO" %>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert Lugar</title>
</head>

<body>

<%
try {
	String namePlace=request.getParameter("namePlace");
	String districtPlace=request.getParameter("districtPlace");
	String placeRoad=request.getParameter("placeRoad");
	String numberPlace=request.getParameter("numberPlace");
	String cepPlace=request.getParameter("cepPlace");
	String Complemento=request.getParameter("complementPlace");
	String statePlace=request.getParameter("statePlace");
	String cityPlace=request.getParameter("cityPlace");

	
	Place lugar = new Place();
	lugar.setName("namePlace");
	lugar.setDescription(" districtPlace");
	lugar.setCity("cityPlace");
	lugar.setRoad("placeRoad");
	lugar.setComplement("complementPlace");
	lugar.setCep(Integer.parseInt(cepPlace));
	lugar.setDistrict(" districtPlace");
	lugar.setState("statePlace");
	lugar.setNumber(Integer.parseInt(numberPlace));
	
	PlacesDAO dados1 = new PlacesDAO();
	dados1.addPlace(lugar);
	
	System.out.println("executado com sucesso");
}catch(Exception ex){
	System.out.println(ex .getMessage());
}
%>
</body>
</html>