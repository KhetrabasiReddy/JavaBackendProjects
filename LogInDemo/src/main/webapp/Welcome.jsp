<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-secondary text-light d-flex justify-content-center align-items-center" style="height:100vh;">
		<%
		//for http version 1.1
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		//for http version 1.0
	//	response.setHeader("Pragma","no-cache");
		//for proxies
		//response.setHeader("Expires", "0");
		
			if(session.getAttribute("uname") == null){
				out.println("not logged int");
				out.println("redirecting to log-in page.");
				response.sendRedirect("LogIn.jsp");
			}
		%>

    <div class="border rounded w-50 p-5 border-5 text-center">
	    <h1 class=" my-2 ">Log-in Successful</h1>
	    <h1 class=" my-2 display-1 fw-bold">
	        Welcome Mr. ${uname} 
	    </h1>
	    <img src= ${ profileImg } width="200" height="200"/>
	    
	    <a href="Videos.jsp"  class="btn btn-primary d-block my-2 mx-auto" style="width:fit-content;">Videos-page</a>
    	
    <a href="About.jsp" class="btn btn-primary d-block my-2 mx-auto" style="width:fit-content;">About-page</a>
	
	<form action="LogOut">
		<input type="submit" value="log-out"  class="btn btn-danger d-block my-2 mx-auto" style="width:fit-content;"/>	
	</form>
    </div>
   	
</body>
</html>