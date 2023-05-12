<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
    <style>
        body {
 background-image: url("image/back.jpeg");
 background-color: whitesmoke;
   /* Full height */
   


/* Center and scale the image nicely */
background-position: center;background-repeat: no-repeat;background-size: cover;height: 100%;
font-family: Arial, Helvetica, sans-serif;
}
    
.information {
    display: flex;
    color: #555;
    margin: 0.7rem 0;
    align-items: center;
    font-size: 0.95rem;
}
/* Extra styles for the cancel button */

</style>
</head>
<body>
<%String msg=request.getParameter("msg"); 
		if(msg!=null){
		%>
		<span style="text-align: center;display: flex;justify-content: center;">
        <div id = "out" style="height: 200px;width:300px;background-color: aliceblue;margin-top: 80px;">
        <form action="index.jsp">
        <div class="imgcontainer">
      	<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      	<img src="image/login.jpg" alt="Avatar" class="avatar">
    	</div>
    	<label><% out.print(msg); %></label>
    	<button type="submit">OK</button>
        </form>
        </div>
    </span>
		
		
<%	
			
		}
		else{
 %>    
    <nav class="topnav">
        <ul class="a1"><a><button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Admin Login</button></a></ul>
        <a><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Student Login</button></a>
        <ul class="a"><a class="active" href="#home">Home</a></ul>
        <ul class="a"><a class="active" onclick="document.getElementById('id03').style.display='block'">Contact</a></ul>
        <span  style="text-align: center;display: flex;justify-content: center;height: 120px;">
            <img src="image/hadd.png" alt="Avatar" style="height: 120px;width: 550px;" class="avatar">
        </span>
    </nav>

<pre>


    
</pre>
<div id="id01" class="modal">
    <span style="text-align: center;display: flex;
    justify-content: center;"> 
  <form class="div" action="s_login_check.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/login.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="mainContainer">
        <!-- Username -->
        <input type="text" placeholder="Enter Username" name="username" required>
        <br><br>
        <!-- Password -->
        <input type="password" placeholder="Enter Password" name="pswrd" required>
        <!-- sub container for the checkbox and forgot password link -->
        
        <button type="submit">Login</button>
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <!-- Sign up link -->
        
    </div>
  </form>
</span>
</div>
<div id="id02" class="modal">
    <span style="text-align: center;display: flex;
    justify-content: center;"> 
  <form class="div" action="ad.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/login.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="mainContainer">
        <!-- Username -->
        <input type="text" placeholder="Enter Username" name="username" required>
        <br><br>
        <!-- Password -->
        <input type="password" placeholder="Enter Password" name="pswrd" required>
        <!-- sub container for the checkbox and forgot password link -->
        
        <button type="submit">Login</button>
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <!-- Sign up link -->
        
    </div>
  </form>
</span>
</div>

<div id="id03" class="modal"  >
    <span style="text-align: center;display: flex;
    justify-content: center;"> 
  <div class="div" style="color:White;background-image: url('image/cont_back.jpeg');background-position: center;background-repeat: no-repeat;background-size: cover;">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/contact.jpeg" alt="Avatar" class="avatar">
    </div>

    <div class="mainContainer">
        <div class="info">
                    <div class="information">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#4f29cd"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"/><circle cx="12" cy="9" r="2.5"/></svg>
                        <p>92 Cherry Drive Uniondale, NY 11553</p>
                    </div>
                    <div class="information">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#4f29cd"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M22 6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6zm-2 0l-8 5-8-5h16zm0 12H4V8l8 5 8-5v10z"/></svg>
                        <p>piyushkhadelwal9950@gmail.com</p>
                    </div>
                    <div class="information">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#4f29cd"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6.54 5c.06.89.21 1.76.45 2.59l-1.2 1.2c-.41-1.2-.67-2.47-.76-3.79h1.51m9.86 12.02c.85.24 1.72.39 2.6.45v1.49c-1.32-.09-2.59-.35-3.8-.75l1.2-1.19M7.5 3H4c-.55 0-1 .45-1 1 0 9.39 7.61 17 17 17 .55 0 1-.45 1-1v-3.49c0-.55-.45-1-1-1-1.24 0-2.45-.2-3.57-.57-.1-.04-.21-.05-.31-.05-.26 0-.51.1-.71.29l-2.2 2.2c-2.83-1.45-5.15-3.76-6.59-6.59l2.2-2.2c.28-.28.36-.67.25-1.02C8.7 6.45 8.5 5.25 8.5 4c0-.55-.45-1-1-1z"/></svg>
                        <p>7597-014-661</p>
                    </div>
                </div>
        
    </div>
  </div>
</span>
</div>



<span class="book">
    <img src="image/Book1.jpg" alt="Avatar" class="avatar"> 
    <img src="image/Book2.jpeg" alt="Avatar" class="avatar"> 
    <img src="image/Book3.jpg" alt="Avatar" class="avatar"> 
    <img src="image/Book4.jpeg" alt="Avatar" class="avatar"> 
    <img src="image/show_all.png" alt="Avatar" class="avatar">
</span>

<%
		}
%>    
    <script>
        // Get the modal
       
        var modal = document.getElementById('id01');
        var modal1 = document.getElementById('id02');
        var modal2 = document.getElementById('id03');
        window.onclick = function(event) {
        	console.log(model);
            if (event.target == modal) {
                modal.style.display = "none";
            }
            else if(event.target == modal1) {
                modal.style.display = "none";
            }else if(event.target == modal2) {
                modal.style.display = "none";
            }
        }
        function fn1(event){
        	if (event.target == modal2) {
                modal.style.display = "none";
            }
        }
        
        
        </script>    
</body>
</html>