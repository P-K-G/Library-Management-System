<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%// TODO Auto-generated method stub
		ResultSet rs = null;
		String[] str = new String[5];
	    try {
	    	String SID =  request.getParameter("s_id");
	    	int S_ID = Integer.parseInt(SID);
	    	String BID =  request.getParameter("b_id");
	    	int B_ID = Integer.parseInt(BID);
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
			Statement stmt = conn.createStatement();
			String sql = "DELETE FROM Issue WHERE S_ID ="+S_ID+" and Book_ID ="+B_ID;
			int x = stmt.executeUpdate(sql);
			if(x==1){
		        %>
		        <jsp:forward page="Admin.jsp">
				<jsp:param value="Returned Successfully" name="msg"/></jsp:forward>
		        <%}else{ %>
        <jsp:forward page="Admin.jsp">
		<jsp:param value="Error Found -->Book not Returned " name="msg"/></jsp:forward>
        <%} 
        } catch(Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			e.printStackTrace();
		}%>
</body>
</html>