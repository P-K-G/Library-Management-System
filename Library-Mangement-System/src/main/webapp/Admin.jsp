<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
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
<%String msg=request.getParameter("msg"); 
		if(msg!=null){
		%>
		<span style="text-align: center;display: flex;justify-content: center;">
        <div id = "out" style="height: 200px;width:300px;background-color: aliceblue;margin-top: 80px;">
        <form action="Admin.jsp">
        <div class="imgcontainer">
      	<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      	<img src="image/Book_history.png" alt="Avatar" class="avatar">
    	</div>
    	<label><% out.print(msg); %></label>
    	<button type="submit" style="background-color:green;color">OK</button>
        </form>
        </div>
    </span>
		
		
<%	
			
		}
		else{
 %>  
<div style="height:20%;width:100%;position:relative;">
    
    <span class="book1"><nav class="topnav">
        <a style="padding: 24px 20px;"><button onclick="fnc(1)" id="btn1" style="height: 80px;width: 150px;background-color: aliceblue;background-image: url('image/Logout_inc.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 50%;border: 0px;">
        </button></a>  
        <a style="padding: 24px 20px;"><button onclick="fnc(2)" id="btn2" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/Books.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 20px;"><button onclick="fnc(3)" id="btn3" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/Issued_books.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 20px;"><button onclick="fnc(4)" id="btn4" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/Issue_book.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a>
        <a style="padding: 24px 20px;"><button onclick="fnc(5)" id="btn5" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/return.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
        <a style="padding: 24px 20px;"><button onclick="fnc(6)" id="btn5" style="height: 40px;width: 150px;background-color: aliceblue;background-image: url('image/Add_Student.png');background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;border: 0px;">
        </button></a> 
     </nav></span>
</div>
<div style="height:50%;width:100%;position:relative;">
    <span style="text-align: center;display: flex;justify-content: center;">
        <div id = "out" class ="pkkk" style="height: 450px;width:700px;background-color: aliceblue;margin-top: 80px;">
        <div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Issue A Book</div></span><form action="Issue.jsp"><input type = 'text' placeholder='Enter Student ID' name="s_id" />
<input type = 'text' placeholder='Enter Book ID' size='20' name="b_id" />
<input type = 'text' placeholder='Enter Book Name' size='20' name="b_name" />
<input type = 'text' placeholder='Enter Issue Date' size='20' name="idate" />
<input type = 'text' placeholder='Enter Return Date' size='20' name="rdate" />
<button type='Submit' name='submit' value='Save' style='background-color:green;' >Issue</button></form>
        </div>
    </span>
    
<pre></pre>
</div>

<div id="id01" class="modal">
<div id = "457">
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Add Student</div>
<span><form action="save.jsp">
<input type = 'text' placeholder='Enter Student ID' name='sid' size='20' />
<input type = 'text' placeholder='Enter Student Name' name='sname' />
<input type = 'text' placeholder='Enter Email ID' name='smail' size='20' />
<input type = 'text' placeholder='Contact No.' size='20' name='scont' />
<input type = 'text' placeholder='Brach' size='20' name='branch' />
<button type='Submit' name='submit' value='Save' style='background-color:green;' >Save</button></form><span>
</div>
</div>



<div id="id01" class="modal">
<div id = "458">
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Issue A Book</div>
<span><form action="Issue.jsp"><input type = 'text' placeholder='Enter Student ID' name="s_id" />
<input type = 'text' placeholder='Enter Book ID' size='20' name="b_id" />
<input type = 'text' placeholder='Enter Book Name' size='20' name="b_name" />
<input type = 'text' placeholder='Enter Issue Date' size='20' name="idate" />
<input type = 'text' placeholder='Enter Return Date' size='20' name="rdate" />
<button type='Submit' name='submit' value='Save' style='background-color:green;' >Issue</button></form><span>
</div>
</div>


<div id="id01" class="modal">
<div id = "459">
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Return A Book</div>
<span><form action="Return.jsp">
<input type ='text' placeholder='Enter Student ID' size='20' name="s_id" />
<input type = 'text' placeholder='Enter Book ID'  name="b_id" />
<button type='Submit' name='submit' value='Return' style='background-color:green;' >Return</button></form><span>
</div>
</div>



<div id="id01" class="modal">
<div id = "460">
<%
ResultSet rs1 = null;
String[][] str1 = new String[100][5];
int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
	Statement stmt = conn.createStatement();
    String sql1 = "SELECT * from Issue ";
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
<div style='height: 410px;width:700px;font-size:23px;border:1px;overflow-x: hidden;overflow-y: auto;'>
<table border='0' class='table'><tr><th class="th">BOOK ID</th><th class="th">Book Name</th><th class="th">Student ID</th><th class="th">Issue Date</th><th class="th">Return Date</th></tr>
<%for(int j=0;j<k;j++){%>
<tr><th><%=str1[j][0] %></th><th><%=str1[j][1] %></th><th><%=str1[j][2] %></th><th><%=str1[j][3] %></th><th><%=str1[j][4] %></th></tr>
<%	}%>
</table></div></span>
</div>
</div>

<div id="id01" class="modal">
<div id = "461">
<%// TODO Auto-generated method stub
		ResultSet rs = null;
		String[][] str = new String[18][4];
		int i=0;
	    try {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
			Statement stmt = conn.createStatement();
			String sql = "SELECT * from books ";
			rs = stmt.executeQuery(sql) ;
	        while (rs.next()) {
	        	str[i][0] = rs.getString("Book_ID");
	        	str[i][1] = rs.getString("Book_Name");
	        	str[i][2] = rs.getString("Author_Name");
	        	str[i][3] = rs.getString("Price");
	        	i++;
	        }
	    }
	        catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
<div style='height: 40px;width:700px;background-color: blue;font-size:30px'>Books</div>
<span style='text-align: center;display: flex;justify-content: center;'>
<div style='height: 410px;width:700px;font-size:20px;border:1px;overflow-x: hidden;overflow-y: auto;'>
<table border='0' class='table'><tr><th class="th">BOOK ID</th><th class="th">Book Name</th><th class="th">Author Name</th><th class="th">Price</th></tr>
<%for(int j=0;j<i;j++){%>
<tr><th><%=str[j][0] %></th><th><%=str[j][1] %></th><th><%=str[j][2] %></th><th><%=str[j][3] %></th></tr>
<%	}%>
</table></table></div>
</div>








<script>
    function fnc(val){
        var value1 = document.getElementById(val);
        var value12 = document.getElementById("out");
        var text=document.getElementById("457").innerHTML;
        var text12=document.getElementById("458").innerHTML;
        var text1=document.getElementById("459").innerHTML;
        var text2=document.getElementById("460").innerHTML;
        var text3=document.getElementById("461").innerHTML;       
        if(val==6){
        value12.innerHTML = text;
       }else if(val==5){
    	   value12.innerHTML = text1;
       }else if(val==4){
    	   value12.innerHTML = text12;
       }else if(val==3){
    	   value12.innerHTML = text2;
       }else if(val==2){
    	   value12.innerHTML = text3;
       }else if(val==1){
    	   location.replace("index.jsp") 
       }   
    }
</script>
<% } %>
</body>
</html>