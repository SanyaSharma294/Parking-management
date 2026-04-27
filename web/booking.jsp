<%-- 
    Document   : booking
    Created on : Mar 4, 2016, 1:44:26 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>|Booking parking ::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>
   <!--//webfonts-->
<script type="text/javascript" src="js/bootstrap.js"></script>

    </head>
    <body>
       <!-- banner -->
	<div class="banner1">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">Motel</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!--/.navbar-header-->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Home</a></li>
                                                                <li><a href="booking1.jsp">Book Now</a></li>
								<li><a href="offers.jsp">Offers</a></li>
								<li class="active"><a href="login.jsp">Sign In</a></li>
								<li><a href="contact.jsp">Contact</a></li>
                                                                <li><a href="register.jsp">New Registration</a></li>
		
					</ul>
						</div>
						<!--/.navbar-collapse-->
					</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
							</form>
					</div>
				</div>
					<div class="clearfix"> </div>

				<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
		<!-- banner -->
                 
<!-- details -->
	<div class="details">
		<div class="container">
                    <h3 style="color: green;"><a href="customer_reg.jsp">Click here for Customer Registration</a></h3>
                    <marquee><h3 style="color: red;">(Note- Please use the registration id for online booking parking... )</h3></marquee>
		      <%
            String m=request.getParameter("msg");
            if(m!=null)
                out.println("<p style='color:red'>"+m+"</p>");
            %>
			<div class="booking-form">
				 <div class="col-md-6">			 
                                     <form action="order" method="post">
                                         <%
                                         String id=request.getParameter("id");
                                               out.println("<h5>Parking. ID</h5>");
						out.println("<input type='text' name='p' value="+id+" readonly />");
                                                %>
						<h5>Reg. ID</h5>
						<input type="text" name="t1">
                                                
                                                <h5>NAME</h5>
						<input type="text" name="t2" >
					
						<h5>PHONE</h5>
						<input type="text" name="t3">
                                                <h5>Booking Date</h5>
						<input type="date" name="d">
                                                <h5>Booking Time</h5>
						<input type="text" name="t">to<input type="text" name="ti">
						<h5>Vehicle Number</h5>
						<input type="text" name="t4" class="time">
					
						 <h5 class="mem">Number of parking</h5>
				 <input min="1" type="number" id="quantity" name="t5" value="1" class="form-control input-small">
				 <input type="submit" value="Submit">
				 <input type="reset" value="Reset">
				 </form>			      
			 </div>

			</div>
		 </div></br></br>

<!-- details -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-2 deco">
				<h4>Navigation</h4>
				<li><a href="index.jsp">Home</a></li>
	
				<li><a href="login.jsp">Sign in</a></li> 
				<li><a href="contact.jsp">Contact</a></li>
			</div>
			<div class="col-md-2 deco">
				<h4>Links</h4> 
				<li><a href="#">Qui Sommes-Nous ?</a></li>
				<li><a href="#">Mentions Légales </a></li>
				<li><a href="#">Conditions D'Utilisation </a></li>
			</div>
			<div class="col-md-2 deco">
				<h4>Social</h4>
				<div class="soci">
					<li><a href="#"><i class="f-1"> </i></a></li>
					<li><a href="#"><i class="t-1"> </i></a></li>
					<li><a href="#"><i class="g-1"> </i></a></li>
				</div>
			</div>
			<div class="col-md-3 cardss">
				<h4>Payment Sécure</h4>
				<li><i class="visa"></i></li>
				<li><i class="ma"></i></li>
				<li><i class="paypal"></i></li>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 pos">
			<h4>NewsLetter</h4>
					   <form method="post">
						 <input type="text" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
						 <div class="smt">
							<input type="submit" value="Subscribe">
						 </div>
					   </form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-bottom">
			<div class="container">
				<p>© 2025 . All Rights Reserved</p>
			</div>
		</div>
	<!-- footer -->

    </body>
</html>
