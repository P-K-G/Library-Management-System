<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String name =  request.getParameter("username"); 
String pass =  request.getParameter("pswrd");
if(name.equals("Admin") && pass.equals("Admin123")){
	 %>
	 <jsp:forward page="Admin.jsp"></jsp:forward>
	 <%
}
else{
	%>
	 <jsp:forward page="index.jsp">
	<jsp:param value="Incorrect User Name Password" name="msg"/></jsp:forward>
	 <%
	
	
}
%>
</body>
</html>