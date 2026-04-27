<%-- 
    Document   : register
    Created on : Mar 4, 2016, 12:25:35 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> | Register</title>
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
<script type="text/javascript">
    function abc()
    {
        if(document.frm.t1.value=="")
            {
             alert("Pleass Enter Parking Name");
             return false;
            }
            if(document.frm.t2.value=="")
                {
                    alert("Pleas Enter Parking Area!!!! ");
                    return false;
                    
                    
                }
        
        if(document.frm.t3.value=="")
                {
                    alert("Pleas Enter Email id!!!! ");
                    return false;
                                 
                }
         if(document.frm.t4.value=="")
                {
                    alert("Pleas Enter Phone number!!!! ");
                    return false;
                    
                    
                }
                 if(document.frm.t6.value!=document.frm.t7.value)
                {
                    alert("Conform Password not match!!!! ");
                    return false;
                    
                    
                }
                else
                    {
                        
                        return true;
                    }
       
       
        
    }
    
</script>

    </head>
    <body>
        <div class="banner1">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">PARKING</a></h1>
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
<!-- registration -->
	<div class="main-1">
		<div class="container">
                     <h2 style="color:#985f0d; " align="center">Member Registration</h2>
		
			<div class="register">
                            <form action="reg" method="post" name="frm" onsubmit="return abc();"> 
				 <div class="register-top-grid">
					<h3>PERSONAL INFORMATION</h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                             <span>Parking Name<label style="color: red;">*</label></span>
                                             <input type="text" name="t1"> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
                                             <span>Parking Area<label style="color: red;">*</label></span>
                                             <input type="text" name="t2"> 
					 </div>
                                         <div class="wow fadeInRight" data-wow-delay="0.4s">
                                             <span>Parking Capacity<label style="color: red;">*</label></span>
                                             <input type="text" name="tc"> 
					 </div>
		
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
                                             <span>Email Address<label style="color: red;">*</label></span>
						 <input type="text" name="t3"> 
					 </div>
                                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                                            <span>Phone Number<label style="color: red;">*</label></span>
						 <input type="text" name="t4"> 
					 </div>
                                        <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Address<label style="color: red;">*</label></span>
                                                 <input type="text" name="t5"> 
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
                                                             <span>Password<label style="color: red;">*</label></span>
                                                                <input type="password" name="t6">
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
                                                             <span>Confirm Password<label style="color: red;">*</label></span>
								<input type="password" name="t7">
                                                              
							 </div>
                                                    
					 </div>
				
				<div class="clearfix"> </div>
				<div class="register-but">
				   
					   <input type="submit" value="submit">
					   <div class="clearfix"> </div>
				   
                            <%
             String m=request.getParameter("msg");
             if(m!=null)
                 out.println("<p style='color:red'>"+m+"</p>");
             %>
				</div>
		   </div>
		 </div>
	</div>
<!-- registration -->
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
				<p>© 2025 . All Rights Reserved </p>
			</div>
		</div>
	<!-- footer -->

    </body>
</html>
