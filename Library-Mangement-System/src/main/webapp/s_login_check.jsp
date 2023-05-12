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
String name = request.getParameter("username");
String pass = request.getParameter("pswrd");
int a=0;
/* out.print(name);
out.print(pass); */
ResultSet rs3 = null;
String[][] str3 = new String[100][5];
int l=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
  	Statement stmt = conn.createStatement();
      String sql3 = "SELECT * FROM Student ";
  	rs3 = stmt.executeQuery(sql3) ;
      while (rs3.next()) {
      	str3[l][0] = (String)rs3.getString("Student_ID");
      	str3[l][1] = (String)rs3.getString("S_Name");
      	str3[l][2] = (String)rs3.getString("Email_ID");
      	str3[l][3] = (String)rs3.getString("Contact_no");
      	str3[l][4] = (String)rs3.getString("BRANCH"); 
      	l++;
    }
      boolean flag = false;
    for(int j=0;j<l;j++){
    	if(str3[j][0].equals(name)){
    		if(str3[j][3].equals(pass)){
    			session.setAttribute("ID", name);
    			session.setAttribute("name", str3[j][1]);
    			flag = true;
    			%>
    			<jsp:forward page="Student.jsp"></jsp:forward>
    			<%
    			 out.print(name); 
    			out.print(str3[j][0]); 
    			
    		}
    		else{
    			flag = true;
    			out.print(str3[j][3]); 
    			%>
	<%-- <jsp:forward page="index.jsp">
	<jsp:param value="Incorrect  Password" name="msg"/></jsp:forward> --%>
	 <%
    		}
    	}
    }
    if(flag==false){
    	for(int j=0;j<l;l++){
    		out.print(str3[j][0] );
    		out.print(str3[j][0]);
    		
    	}
    	out.print("incorrect");
    	
		%> 
		<%-- <jsp:forward page="index.jsp">
		<jsp:param value="Incorrect User Name Password" name="msg"/></jsp:forward> --%>
		 <%
    }
 
} catch(Exception e) {
	e.printStackTrace();
}
%>
	
</body>
</html>