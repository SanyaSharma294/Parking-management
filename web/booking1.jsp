<%-- 
    Document   : booking1
    Created on : Mar 6, 2016, 11:52:45 PM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Now</title>
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
<!-- offers -->
	<div class="offers">
		<div class="container">
                            <%
           
          
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select r_id,p_name,p_area,p_cap,email,phone,address from registration");
             db.rst= db.pstmt.executeQuery();
             
             while(db.rst.next())
             {
             String h_id=db.rst.getString(1);

           String name=db.rst.getString(2);
             String lname=db.rst.getString(3);
             String p_cap=db.rst.getString(4);
             String email=db.rst.getString(5);
             String gender=db.rst.getString(6);
             String phone=db.rst.getString(7);
              
	   out.println("<div class='col-md-4 offers-left' style='border-style: solid;'>");
	      out.println("<h3>Parking-&nbsp;"+name+"</h3>");
               out.println("<h4>Parking id-&nbsp;<lable style='color:red;'>"+h_id+"</lable></h4>");
                     out.println("<h4>Parking Area-&nbsp;<lable style='color:red;'>"+lname+"</lable></h4>");
		    out.println("<h4>Parking Capacity-&nbsp;<lable style='color:red;'>"+p_cap+"&nbsp;Vehicles</lable></h4>");
		      
                     out.println("<h4>Pohne number-&nbsp;"+gender+"</h4>");
                     out.println("<h4>Address-&nbsp;"+phone+"</h4><h4></h4>");
                      out.println("<a class='hvr-shutter-in-horizontal' href='booking.jsp?id="+email+"'>Book Now</a>");
		     
	           	out.println("</div>");
                                            }
			                   %>
    
                
                                           <div class="clearfix"style="border-style: solid"></div>
		</div></div>	
		 
	

    </body>
</html>
