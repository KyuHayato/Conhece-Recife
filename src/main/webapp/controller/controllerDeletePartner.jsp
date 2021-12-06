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
	
	String id = request.getParameter("id");
	
	//pega o parametro recebido acima e envia para o banco
	Partner partner = new Partner();
	partner.setId(Integer.parseInt(id));
	
	
	PartnerDAO dados1 = new PartnerDAO();
	dados1.removePartner(partner);
	
	System.out.println("executado com sucesso");
	response.sendRedirect("../listagem-de-parceiros-form.jsp");
	
}catch(Exception ex){
	System.out.println(ex .getMessage());
	
}
%>
</body>
</html>