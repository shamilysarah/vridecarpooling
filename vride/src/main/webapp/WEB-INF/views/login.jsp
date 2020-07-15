<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
<head>
<title>Login Page</title>
 <style>
 /* Made with love by Mutiullah Samim*/

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
 </style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="styles.css">
        </head>
        <body>
        <div class="container">
        <div class="d-flex justify-content-center h-100">
        <div class="card">
<div class="card-header">
<h3>Sign In</h3>
<div class="card-body">
       
            <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
                <table align="center">
               
                    <tr>
                     <div class="input-group form-group">
                        <td>
                       
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
                            <form:label path="username"> Username: </form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                         
                        </td>
                      </div>
                   
                    </tr>
                    <tr>
                    <div class="input-group form-group">

                        <td>
                        <div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
                       
                            <form:label path="password">Password:</form:label>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" />
                        </td>
                        </div>
                    </tr>
                    <tr>
                    <div class="row align-items-center remember">
<input type="checkbox">Remember Me
</div>



                        <td></td>
                        <div class="form-group">
                        <td align="left">
                            <form:button id="login" name="login">Login</form:button>
                        </td>
                       
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="/">Home</a>
                        </td>
                    </tr>
                </table>
            </form:form>
            <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
            </div>
            </div>
            </div>
            </div>
            </div>
        </body>
        </html>
