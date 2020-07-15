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
                <td>EmpId</td>
                <td>Username</td>
                <td>Carnum</td>
                <td>Origin</td>
                <td>Destination</td>
                <td>Starttime</td>
                <td>Vacancy</td>
                <td>Amount</td>
                <td>Edit Provider Details</td>
                <td>Detele</td>
            </thead>
       
 <c:forEach items="${providerList}" var="product">
 <tr>
       <td>${product.empid}</td>
                <td>${product.username}</td>
                <td>${product.carnum}</td>
                <td>${product.origin}</td>
                <td>${product.destination}</td>
                <td>${product.starttime}</td>
                <td>${product.vacancy}</td>
                <td>${product.amount}</td>
                <td>
              <a href ="/update/${product.empid}">Edit</a>
               </td>
                <td>
              <a href ="/editordelete/${product.empid}">Delete</a>
               </td>            
</tr>
</c:forEach>
</table>
</div>
</div>
</div>
</div>
</body>
</html>
