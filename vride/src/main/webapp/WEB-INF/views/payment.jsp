<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.container {
  position: relative;
  width: 50%;
  right:50%;
  left:50%;
  bottom:50%;
  top:50;
}
.container1 {
  position: relative;
  width: 50%;
   right:50%;
  left:50%;
  bottom:50%;
  top:50;
 }
.container2 {
  position: relative;
  width: 50%;
   right:50%;
  left:50%;
  bottom:50%;
  top:50;
}

.image {
  display: block;
  width: 50%;
  height: 50%;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 50%;
  opacity: 0;
  transition: .5s ease;
  background-color: #D3D3D3;
}

.container:hover .overlay {
  opacity: 5;
}
.container1:hover .overlay {
  opacity: 5;
}
.container2:hover .overlay {
  opacity: 5;
}

.text {
  color: black;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
body
{
background-color:#87CEFA;
background:url(https://img.freepik.com/free-vector/online-payment-concept_95505-169.jpg) no-repeat;
height:100%;
background-size:cover;
}
</style>
</head>
<body>

<h2>Payment Gateway</h2>
<p>Click to proceed transaction!!!</p>

<div class="container">
  <img src="https://akm-img-a-in.tosshub.com/sites/btmt/images/stories/google_pay_660_091919043010.png" alt="Avatar" class="image">
  <div class="overlay">
    <div class="text"><a href="https://pay.google.com/gp/w/u/0/home/signup?sctid=2924871575067383">Google Pay</a></div>
  </div>
</div>
<div class="container1">
  <img src="https://entrackr.com/wp-content/uploads/2017/08/phone-pay-image.jpg" alt="Avatar" class="image">
  <div class="overlay">
    <div class="text"><a href="https://www.phonepe.com/">Phonepe</a></div>
  </div>
</div>
<div class="container2">
  <img src="https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/hand_money.png" alt="Avatar" class="image">
  <div class="overlay">
    <div class="text"<a href="#">Cash</a></div>
  </div>
</div>

</body>
</html>
