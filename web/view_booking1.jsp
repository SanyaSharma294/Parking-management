<%-- 
    Document   : view_booking1
    Created on : Mar 7, 2016, 4:11:48 AM
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
                                                                <li><a href="view_booking.jsp">View Booking</a></li>
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
                    <div style="overflow: scroll; width: 1100px;height: 300px;">
                            <%
           
          
           
           
           
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select * from booking where p_id='"+user+"'");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200   bgcolor=#B9E1F5 border=1>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Booking Id</p></td><td align=center><p style=color:#F66755;>Parking Id</p></td><td align=center><p style=color:#F66755;>Customer Id</p></td><td align=center><p style=color:#F66755;>Name</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Vehicle number</p></td><td align=center><p style=color:#F66755;>Parking number</p></td><td align=center><p style=color:#F66755;>Booking date</p></td><td align=center><p style=color:#F66755;>Delete</p></td><td align=center><p style=color:#F66755;>View Data</p></td>");
out.println("</tr>");
             
             while(db.rst.next())
             {
           String name=db.rst.getString(1);
             String cname=db.rst.getString(2);
             String id=db.rst.getString(3);
             String gender=db.rst.getString(4);
             String phone=db.rst.getString(5);
             String course=db.rst.getString(6);
             String room=db.rst.getString(7);
             String city=db.rst.getString(8);
                  
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+name+"</td><td align=center>"+cname+"</td><td align=center>"+id+"</td><td align=center>"+gender+"</td><td align=center>"+phone+"</td><td align=center>"+course+"</td><td align=center>"+room+"</td><td align=center>"+city+"</td><td align=center><a href=delete?id="+name+">Delete</a></td><td align=center><a href=view_booking.jsp?id="+name+">View Data</a></td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
      
			   <%
                                String m=request.getParameter("msg");
                                if(m!=null)
                 out.println("<p style='color:red'>"+m+"</p>");

                                %>                 
    
                    </div>
                                         </div></div>	
		 
</center>

    </body>
</html>
