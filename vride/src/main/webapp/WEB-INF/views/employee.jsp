<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
  text-align:center;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
body
{
background:url(https://static.vecteezy.com/system/resources/previews/000/145/370/non_2x/vector-carpool-background.jpg) no-repeat;

background-size:cover;
}
.container
{
height:200px;
position:relative;
border:3px solid green;
}
.vertical-center
{
-ms-transform:translateY(-50%);
transform:translateY(-50%);
top:50%;
margin:0;
left:50%;
rigt:50%;
ottom:50%;
position:absolute;
}
</style>
</head>
<body>
<h1 align ="center">Welcome ${un}</h1>
<marquee><h2>Choose Your Role</h2></marquee>
<div class="container">
<div class="vertical-center">
<button class="btn" ><i class="fa fa-home"></i> <a href="providerDetails" style="color:white;">Provider</a></button>
<button class="btn"><i class="fa fa-bars"></i> <a  href="riderDetails" style="color:white;">Rider</a></button>
</div>
</div>
</body>
</html>
