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
	
	String id = request.getParameter("id");
	
	//pega o parametro recebido acima e envia para o banco
	Place place = new Place();
	place.setId(Integer.parseInt(id));
	
	
	PlaceDAO dados1 = new PlaceDAO();
	dados1.removePlace(place);
	
	System.out.println("executado com sucesso");
	response.sendRedirect("../listagem-de-lugares-form.jsp");
	
}catch(Exception ex){
	System.out.println(ex .getMessage());
	
}
%>
</body>
</html>