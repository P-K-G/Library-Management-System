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
String SID =  request.getParameter("s_id");
int S_ID = Integer.parseInt(SID);
String BID =  request.getParameter("b_id");
int B_ID = Integer.parseInt(BID);
String B_NAME =  request.getParameter("b_name");
String idate =  request.getParameter("idate");
String rdate =  request.getParameter("rdate");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
	stmt = conn.createStatement();	

%>
<%
		PreparedStatement st=conn.prepareStatement("insert into Issue values(?,?,?,?,?)");
        st.setInt(1, S_ID);
        st.setInt(2, B_ID);
		st.setString(3, B_NAME);
		st.setString(4, idate);
		st.setString(5, rdate);
		x = st.executeUpdate();
		PreparedStatement st1=conn.prepareStatement("insert into History values(?,?,?,?,?)");
        st1.setInt(1, S_ID);
        st1.setInt(2, B_ID);
		st1.setString(3, B_NAME);
		st1.setString(4, idate);
		st1.setString(5, rdate);
		int y = st1.executeUpdate();
		if(x==1){
        %>
        <jsp:forward page="Admin.jsp">
		<jsp:param value="Book Issued Successful" name="msg"/></jsp:forward>
        <%}else{ %>
        <jsp:forward page="Admin.jsp">
		<jsp:param value="Error Found -->Book Issued not Issued " name="msg"/></jsp:forward>
        <%} 
        } catch(Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			e.printStackTrace();
		}%>

</body>
</html>