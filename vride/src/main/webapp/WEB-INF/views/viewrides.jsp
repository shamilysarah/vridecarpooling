
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
background:url(https://cdn.pixabay.com/photo/2016/03/27/07/32/light-1282314__340.jpg) no-repeat;

background-size:cover;
}
</style>
</head>

<body>
<div class="container">
<div class="row">
<h1 style="color:black; text-align:center;">Providers List</h1>
    <br/><br/>
    <div class="col-md-12">
    <div class="table-responsive">
    <table id="mytable" class="table table-bordred table-striped" border="1" cellpadding="10">
            <thead>
            <th><input type="checkbox" class="checkthis" /></th>
                <th>EmpId</th>
                <th>Username</th>
                <th>Carnum</th>
                <th>Origin</th>
                <th>Destination</th>
                <th>Starttime</th>
                <th>Vacancy</th>
                <th>Amount</th>
            </thead>
       
 <c:forEach items="${providerList}" var="product">
 <tr>
 <td><input type="checkbox" class="checkthis" /></td>
       <td>${product.empid}</td>
                <td>${product.username}</td>
                <td>${product.carnum}</td>
                <td>${product.origin}</td>
                <td>${product.destination}</td>
                <td>${product.starttime}</td>
                <td>${product.vacancy}</td>
                <td>${product.amount}</td>
           
</tr>
</c:forEach>
</table>
</div>
</div>
<h3 align="center" style="color:black; text-align:center;">Please REGISTER to book rides:)<br>
<a style="color:blue; align:center;" href="register">Click here for registration!</a></h3>
</div>
</div>
</body>
</html>