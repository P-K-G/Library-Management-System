<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<%
String SID = (String)session.getAttribute("ID");
String S_name = (String)session.getAttribute("name");
int S_ID = Integer.parseInt(SID);
%>

<%// TODO Auto-generated method stub
		ResultSet rs = null;
		String[][] str = new String[18][4];
	    try {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
			Statement stmt = conn.createStatement();
			String sql = "SELECT * from books ";
			int i=0;
			rs = stmt.executeQuery(sql) ;
	        while (rs.next()) {
	        	str[i][0] = rs.getString("Book_ID");
	        	str[i][1] = rs.getString("Book_Name");
	        	str[i][2] = rs.getString("Author_Name");
	        	str[i][3] = rs.getString("Price");
	        	i++;
	        }
	     } catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document</title>
    <link rel="stylesheet" href="index1.css">
    <link rel="stylesheet" href="index.css">
    <style>
        body {
 
 background-color: whitesmoke;
   /* Full height */
   
background-image: url("image/back.jpeg");background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;

/* Center and scale the image nicely */

font-family: Arial, Helvetica, sans-serif;
}
.pkkk {
 
 background-color: whitesmoke;
   /* Full height */
   
background-image: url("image/back.jpeg");background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;

/* Center and scale the image nicely */

font-family: Arial, Helvetica, sans-serif;
}
    
button{
    height: 40px;width: 150px;background-color: aliceblue;
}
/* Extra styles for the cancel button */
input[type=text], input[type=password]{
    
    margin: 10px 0;
    border-radius: 5px;
    padding: 15px 18px;
    box-sizing: border-box;
  }
  .th{
  background-color:yellow;
    border:2px black;
  }
</style>
</head>
<body>

<div style="height:20%;width:100%;position:relative;">
    
    <nav class="topnav"><span class="book1" >
        <a style="padding: 24px 65px;"><button onclick="fnc(1)" id="btn1" style="height: 80px;width: 150px;background-color: aliceblue;background-image: url('image/Logout_inc.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 50%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 55px;"><button onclick="fnc(2)" id="btn2" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/History.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 55px;"><button onclick="fnc(3)" id="btn3" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/ISSUED_Icon.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 55px;"><button onclick="fnc(4)" id="btn4" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/Books.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a>
        <a style="padding: 24px 55px;"><button onclick="fnc(5)" id="btn5" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/profile.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
     </span></nav>
</div>
<div style="height:40%;width:100%;position:relative;">
    <span style="text-align: center;display: flex;justify-content: center;">
        <div id = "out" class ="pkkk" style="height: 400px;width:700px;background-color: aliceblue;margin-top: 80px;">
        	<h1>Welcome <%=S_name %></h1>
        	<p>Welcome to Your Library</p>
        </div>
    </span>
    
<pre></pre>
</div>
<div id="id01" class="modal">
<div id = "453">
 <%
 /* out.print(name);
 out.print(pass); */
 ResultSet rs3 = null;
 String[][] str3 = new String[100][5];
 int m=0;
 try {
 	Class.forName("oracle.jdbc.driver.OracleDriver");
   	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
   	Statement stmt = conn.createStatement();
       String sql3 = "SELECT * FROM Student WHERE Student_ID ="+S_ID;
   	rs3 = stmt.executeQuery(sql3) ;
       while (rs3.next()) {
       	str3[m][0] = (String)rs3.getString("Student_ID");
       	str3[m][1] = (String)rs3.getString("S_Name");
       	str3[m][2] = (String)rs3.getString("Email_ID");
       	str3[m][3] = (String)rs3.getString("Contact_no");
       	str3[m][4] = (String)rs3.getString("BRANCH"); 
       	m++;
     }
} catch(Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%> 
<span>
<form action="Student.jsp">
<input type = 'hidden' placeholder='Enter Student ID' name='sid' size='20' Value="<%=str3[m-1][0] %> " >
<input type = 'text' placeholder='Enter Student Name' name='sname' Value="<%=str3[m-1][1] %>"/>
<input type = 'text' placeholder='Enter Email ID' name='smail' size='20' Value="<%=str3[m-1][2] %> "/>
<input type = 'text' placeholder='Contact No.' size='20' name='scont' Value="<%=str3[m-1][3] %>"/>
<input type = 'text' placeholder='Brach' size='20' name='branch' Value="<%=str3[m-1][4] %>"/>
<button type='Submit' name='submit' value='Save' style='background-color:green;' >Update</button></form></span>
</div>
</div>




<div id="id02" class="modal">
<div id = "454">
<div style='height: 40px;width:700px;background-color: blue;font-size:30px;'>Book</div>
<span style='text-align: center;display: flex;justify-content: center;'>
<div style='height: 360px;width:700px;font-size:20px;overflow-x: hidden;overflow-y: auto;'>
<table border='0'>
<tr><th class="th">BOOK ID</th><th class="th">Book Name</th><th class="th">Author Name</th><th class="th">Price</th></tr>
<%for(int j=0;j<15;j++){%>
<tr><th><%=str[j][0] %></th><th><%=str[j][1] %></th><th><%=str[j][2] %></th><th><%=str[j][3] %></th></tr>
<%	}%>
</table></div></span>
</div>
</div>




<div id="id03" class="modal">
<div id = "455">
<%
ResultSet rs1 = null;
String[][] str1 = new String[100][5];
int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
	Statement stmt = conn.createStatement();
    String sql1 = "SELECT * from Issue WHERE S_ID ="+S_ID;
	rs1 = stmt.executeQuery(sql1) ;
    while (rs1.next()) {
    	str1[k][0] = rs1.getString("S_ID");
    	str1[k][1] = rs1.getString("Book_ID");
    	str1[k][2] = rs1.getString("Book_Name");
    	str1[k][3] = rs1.getString("Issue_Date");
    	str1[k][4] = rs1.getString("Return_Date");
    	k++;
    }
 
} catch(Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Issued Books</div>
<span style='text-align: center;display: flex;justify-content: center;'>
<div style='height: 360px;width:700px;font-size:23px;border:1px;overflow-x: hidden;overflow-y: auto;'>
<table border='0' class='table'><tr><th class="th">Student ID</th><th class="th">BOOK ID</th><th class="th">Book Name</th><th class="th">Issue Date</th><th class="th">Return Date</th></tr>
<%for(int j=0;j<k;j++){%>
<tr><th><%=str1[j][0] %></th><th><%=str1[j][1] %></th><th><%=str1[j][2] %></th><th><%=str1[j][3] %></th><th><%=str1[j][4] %></th></tr>
<%	}%>
</table></div></span></div>
</div>




<div id="id04" class="modal">
<div id = "456">
<%
ResultSet rs2 = null;
String[][] str2 = new String[100][5];
int p=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
	Statement stmt = conn.createStatement();
    String sql2 = "SELECT * from History WHERE S_ID ="+S_ID;
	rs2 = stmt.executeQuery(sql2) ;
    while (rs2.next()) {
    	str1[p][0] = rs2.getString("S_ID");
    	str1[p][1] = rs2.getString("Book_ID");
    	str1[p][2] = rs2.getString("Book_Name");
    	str1[p][3] = rs2.getString("Issue_Date");
    	str1[p][4] = rs2.getString("Return_Date");
    	p++;
    }
 
} catch(Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Books History</div>
<span style='text-align: center;display: flex;justify-content: center;'>
<div style='height: 360px;width:700px;font-size:23px;border:1px;overflow-x: hidden;overflow-y: auto;'>
<table border='0' class='table'><tr><th class="th">Student ID</th><th class="th">BOOK ID</th><th class="th">Book Name</th><th class="th">Issue Date</th><th class="th">Return Date</th></tr>
<%for(int j=0;j<p;j++){%>
<tr><th><%=str1[j][0] %></th><th><%=str1[j][1] %></th><th><%=str1[j][2] %></th><th><%=str1[j][3] %></th><th><%=str1[j][4] %></th></tr>
<%	}%>
</table></div></span>
</div>
</div>


<script>
    function fnc(val){
        var value1 = document.getElementById(val);
        var value12 = document.getElementById("out");
        var text = document.getElementById("453").innerHTML;
        var text1 = document.getElementById("454").innerHTML;
        var text2 = document.getElementById("455").innerHTML;
        var text3 = document.getElementById("456").innerHTML;  
        
        if(val==5){
        value12.innerHTML = text;
       }else if(val==4){
    	   value12.innerHTML = text1;
       }else if(val==3){
    	   value12.innerHTML = text2;
       }else if(val==2){
    	   value12.innerHTML = text3;
       }
       else if(val==1){
    	   location.replace("index.jsp") 
       }
        
    }
        

    </script>
</body>
</html>


