<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="bg-secondary flex-column text-light d-flex justify-content-center align-items-center" style="height:100vh;">

	<%
	//for http version 1.1
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	//for http version 1.0
	//response.setHeader("Pragma","no-cache");
	//for proxies
	//response.setHeader("Expires", "0");
		if(session.getAttribute("uname") == null){
			out.println("not logged int");
			out.println("redirecting to log-in page.");
			response.sendRedirect("LogIn.jsp");
		}
	%>

	<div class="border rounded w-50 p-5 border-5 text-center">Hi,I'm Khetrabasi.<br>
        <a class="btn btn-primary" href="Welcome.jsp">Welcome-page</a>
    </div>
    <div class="border p-5 rounded border-5 my-1">
       <iframe width="560" height="315" src="https://www.youtube.com/embed/FWlUMcHVNvI?si=0VpHjVvvyNUfCR83" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>

    
</body>
</html>