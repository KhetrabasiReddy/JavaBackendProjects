<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-In</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-secondary text-light d-flex justify-content-center align-items-center" style="height:100vh;">
	<form action="LogInServlet" class="border rounded w-50 p-5 border-5 text-center" method="post">
        Enter UserName: <input class="form-control my-2" required autofocus type="text" name="uname"> <br>
        Enter Password: <input class="form-control my-2" required  type="password" name="pass">
        <input class="btn btn-primary my-2" type="submit" value="login">
    </form>
</body>
</html>