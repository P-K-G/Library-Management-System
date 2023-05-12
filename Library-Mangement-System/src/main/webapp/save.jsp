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
<%
		ResultSet rs = null;
		Statement stmt =null;
		Connection conn =null;
		int x;
		String[][] str = new String[18][4];
	    try {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
			stmt = conn.createStatement();	
		
%>
<%
        String id =  request.getParameter("sid"); 
        int ID = Integer.parseInt(id);
        String name =  request.getParameter("sname");
        String email =  request.getParameter("smail");
        String contact =  request.getParameter("scont");
        String branch =  request.getParameter("branch");
        PreparedStatement st=conn.prepareStatement("insert into Student values(?,?,?,?,?)");
        st.setInt(1, ID);
		st.setString(2, name);
		st.setString(3, email);
		st.setString(4, contact);
		st.setString(5, branch);
		x = st.executeUpdate();
		if(x==1){
        %>
        <jsp:forward page="Admin.jsp">
		<jsp:param value="Student Added Successful" name="msg"/></jsp:forward>
        <%}else{ %>
        <jsp:forward page="Admin.jsp">
		<jsp:param value="Student not Added" name="msg"/></jsp:forward>
        <%} 
        } catch(Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			e.printStackTrace();
		}%>

</body>
</html>