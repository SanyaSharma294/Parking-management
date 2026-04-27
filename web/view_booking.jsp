<%-- 
    Document   : view_booking
    Created on : Mar 7, 2016, 2:51:23 AM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>|View Booking</title>
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
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        
        if(user==null||pass==null)
          response.sendRedirect("login.jsp?msg=Please login first!!!!");  
        %>
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
								<li><a href="home.jsp">Home</a></li>
                                                                <li><a href="view_booking1.jsp">View Booking</a></li>
								<li class="active"><a href="changepass.jsp">Change Password</a></li>
								<li><a href="logout">Logout</a></li>
                                                                
				
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
<center>
    
	<div class="offers">
		<div class="container">
                            <%
           
          String id=request.getParameter("id");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select b_id,c_id,c_name,phone,v_number,p_no,b_date from booking where b_id='"+id+"'");
             db.rst= db.pstmt.executeQuery();
             
             if(db.rst.next())
             {
            
                 String h_id=db.rst.getString(1);

           String name=db.rst.getString(2);
             String lname=db.rst.getString(3);
             String gender=db.rst.getString(4);
             String phone=db.rst.getString(5);
              String a=db.rst.getString(6);
              String b=db.rst.getString(7);

              out.println("<table width=600px height=270px >");
            out.println("<tr width=400px style='background-color:#F6D6D2;'><td align=right>Booking Id:-</td><td width=80px></td><td>"+h_id+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Customer Id:-</td><td width=80px></td><td>"+name+"</td></tr>");
            out.println("<tr width=400pxstyle='background-color:#F8F5B1;'><td align=right>Customer Name:-</td><td width=80px></td><td>"+lname+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Phone no:-</td><td width=80px></td><td>"+gender+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D1EBAF;'><td align=right>Vehicle Number:-</td><td width=80px></td><td>"+phone+"</td></tr>");
            out.println("<tr width=400px style='background-color:#B1DBAB;'><td align=right>Parking no:-</td><td width=80px></td><td>"+a+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Booking  Date:-</td><td width=80px></td><td>"+b+"</td></tr>");
            
            out.println("</table><br></br>");

	  		     
	           	                    }
			                   %>
    
                
                                           <div class="clearfix"style="border-style: solid"></div>
		</div></div>	
		 
</center>

    </body>
</html>
