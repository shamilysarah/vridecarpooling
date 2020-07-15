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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choosed Car</title>
<script>
function showalert()
{
alert("Ride Confirmed");
}
</script>
<style >
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
<h1>Choosed Provider</h1>
    <br/><br/>
    <div class="col-md-12">
    <div class="table-responsive">
    <table id="mytable" class="table table-bordred table-striped" border="1" cellpadding="10">
            <tr>
                <th>EmpId</th>
                <th>Username</th>
                <th>Carnum</th>
                <th>Origin</th>
                <th>Destination</th>
                <th>Starttime</th>
                <th>Vacancy</th>
                <th>Amount</th>
                <th>Confirm Request</th>
                <th>Complete & Move to Payment</th>
            </tr>
 <tr>
   
                <td>${c.empid}</td>
                <td>${c.username}</td>
                <td>${c.carnum}</td>
                <td>${c.origin}</td>
                <td>${c.destination}</td>
                <td>${c.starttime}</td>
                <td>${c.vacancy}</td>
                <td>${c.amount}</td>

   <td>
              <button onclick="showalert()">click here</button>          
   </td>
   <td>
        <a href="/${c.empid}/pay/">Finish Ride</a> 
    </td>
    </tr>

</table>
</div>
</div>
</body>
</html>
