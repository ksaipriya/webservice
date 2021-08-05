<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage = "error.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet" href="style/index.css" />
<!-- <link rel="stylesheet" href="stylepopupbro.css" /> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.image {
	width: 20%;
	margin-top: -15%;
}

.reverse {
	transform: rotateY(180deg);
	margin-left: 80%;
	margin-top: -19%;
}
h2,h5{
	color: green;
	font-weight: bold;
}
h3{
	color: black;
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
}
</style>

<title>Mail Order Pharmacy</title>
</head>

<body class="bwelcome"  >



	<nav class="navbar navbar-inverse ">
		<a href="home" class="navbar-brand"><img width="60px"
			height="60px" src="images/lo.png">Mail Order Pharmacy</a>


		<div class="" id="navbarText">
			<ul class="navbar-nav mr-auto text-center">

				
			</ul>
		</div>
		
		<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Services
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="supportedDrugs">Available Drugs</a>
    <a class="dropdown-item" href="search">Search Drugs</a>
    <a class="dropdown-item" href="prescriptionform">Subscribe</a>
      <a class="dropdown-item" href="subscriptions">Subscriptions</a> 
          <a class="dropdown-item" href="/webportal/getAllRefill">Refill Status</a> 
           <a class="dropdown-item"  href="refillDateEntry">Refill Due Date</a>
            <a class="dropdown-item" href="logout">Logout</a>
  </div>
</div>
	</nav>
	

	<br>
	<br>
	<br>
	<div class="typ">
		<h1>
			<p class="typewrite" data-period="2000"
				data-type='[ "Welcome to Mail Order Pharmacy..!!", "You are just a click away", "Get your medicines delivered at your doorstep", "Count on us.." ]'>
				<span class="wrap"></span>
			</p>
		</h1>
	</div>
<br>

	<div class="container">
		<div class="row gx-5 gy-5">
			<div class="col-md-8 col-12">
				<div class=" p-3 bg-grey">
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h2>Get your medicines delivered within a few hours</h2>
					</div>
					<div class="col-12 p-4 mt-2 d-flex text-wrap text-center">
						<h3>Say goodbye to long queues and waiting time. Get medicines delivered at your doorstep anytime and anywhere you need..!!</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	 


	<!-- <img src="COVID_19_IEC_ENG86.jpg" class="image"> -->
	<!-- <img src="images/covid1.jpg" style="width: 95%; margin-left: 2.5%;"> -->
	<br>
	
	<div class="footer" >
	
		<div class="row gx-7 gy-7">
			<div class="col-md-6 col-12">
				<div class=" p-3 bg-grey">
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h5>Contact Us</h5>
					</div>
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h6>mail_order_pharmacy@gmail.com</h6>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-12">
				<div class=" p-3 bg-grey">
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h5>Developers</h5>
					</div>
					<div class="col-12 d-flex mt-2 justify-content-center">
						<h6>Pod-5</h6>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	


	<script>
		var TxtType = function(el, toRotate, period) {
			this.toRotate = toRotate;
			this.el = el;
			this.loopNum = 0;
			this.period = parseInt(period, 10) || 2000;
			this.txt = '';
			this.tick();
			this.isDeleting = false;
		};

		TxtType.prototype.tick = function() {
			var i = this.loopNum % this.toRotate.length;
			var fullTxt = this.toRotate[i];

			if (this.isDeleting) {
				this.txt = fullTxt.substring(0, this.txt.length - 1);
			} else {
				this.txt = fullTxt.substring(0, this.txt.length + 1);
			}

			this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';

			var that = this;
			var delta = 200 - Math.random() * 100;

			if (this.isDeleting) {
				delta /= 2;
			}

			if (!this.isDeleting && this.txt === fullTxt) {
				delta = this.period;
				this.isDeleting = true;
			} else if (this.isDeleting && this.txt === '') {
				this.isDeleting = false;
				this.loopNum++;
				delta = 500;
			}

			setTimeout(function() {
				that.tick();
			}, delta);
		};

		window.onload = function() {
			var elements = document.getElementsByClassName('typewrite');
			for (var i = 0; i < elements.length; i++) {
				var toRotate = elements[i].getAttribute('data-type');
				var period = elements[i].getAttribute('data-period');
				if (toRotate) {
					new TxtType(elements[i], JSON.parse(toRotate), period);
				}
			}
		
		};

		Resources
	</script>


	<script>
		function openNav() {
			document.getElementById("mySidebar").style.width = "300px";
			

		}

		/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
		
		}
	</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	

	
		<style>
body {
 
  background: url(images/background.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
	
	
</body>
</html>