    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
   <html>
   <head>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <title>providerdetails</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)}
  to {-webkit-transform: scale(1)}
}
 
@keyframes animatezoom {
  from {transform: scale(0)}
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
.register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
</style>
        </head>
        <body>
         <div class="container register">
        <h2 align="center">Edit
        Provider Details</h2>
         <div class="row">
         <div class="col-md-3 register-left">
          <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Virtusa Car Pooling System</h3>
                         <p>Edit/update Provider Details!!!</p>
                    </div>
                    <div class="row register-form">
            <form:form id="prodet" modelAttribute="pu" action="saveProv" method="post">
                         <div class="col-md-6">
                <table align="center">
                     <tr>
                       <div class="form-group">
                        <td>
                            <form:label path="empid">EmpId</form:label>
                        </td>
                        <td>
                            <form:input path="empid" onfocus="this.value='';" name="empid" id="empid" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="username">Provider Name</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="carnum">Car No</form:label>
                        </td>
                        <td>
                            <form:input path="carnum" onfocus="this.value='';" name="carnum" id="carnum" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="origin">Origin</form:label>
                        </td>
                        <td>
                            <form:input path="origin" name="origin" id="origin" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="destination">Destination</form:label>
                        </td>
                        <td>
                            <form:input path="destination" name="destination" id="destination" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="starttime">StartTime</form:label>
                        </td>
                        <td>
                            <form:input path="starttime" onfocus="this.value='';" name="starttime" id="starttime" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="vacancy">Vacancy</form:label>
                        </td>
                        <td>
                            <form:input path="vacancy" onfocus="this.value='';" name="vacancy" id="vacancy" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td>
                            <form:label path="amount">Amount</form:label>
                        </td>
                        <td>
                            <form:input path="amount" onfocus="this.value='';" name="amount" id="amount" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                     <div class="form-group">
                        <td></td>
                        <td>
                            <form:button  id="submit" name="submit">Save</form:button>
                        </td>
                        </div>
                    </tr>
                     
                </table>
                </div>
            </form:form>
            </div>
            </div>
             </div>
            </div>
        </body>
        </html>

        
        