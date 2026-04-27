<%-- 
    Document   : view_parking
    Created on : Apr 2, 2016, 4:38:41 AM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        String user=(String)st.getAttribute("user2");
        String pass=(String)st.getAttribute("pass2");
        
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
								<li><a href="AdminHome.jsp">Home</a></li>
                                                                <li><a href="view_parking.jsp">View Parking Member</a></li>
								<li class="active"><a href="achangepass.jsp">Change Password</a></li>
								<li><a href="alogout">Logout</a></li>
                                                                           
				
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
           
          DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select * from registration ");
             db.rst= db.pstmt.executeQuery();
             out.println("<div style='overflow: scroll;'><table width=1200   bgcolor=#B9E1F5 border='1'>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;> Id</p></td><td align=center><p style=color:#F66755;>Parking Name</p></td><td align=center><p style=color:#F66755;>Parking Area</p></td><td align=center><p style=color:#F66755;>Email</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Address</p></td><td align=center><p style=color:#F66755;>Registration Date</p></td><td align=center><p style=color:#F66755;>Delete</p></td>");
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
             String a=db.rst.getString(8);
            
                  
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+name+"</td><td>"+cname+"</td><td>"+id+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+course+"</td><td>"+a+"</td><td><a href=delete1?id="+name+">Delete</a></td>");
out.println("</tr>");          
            
           }
             
            out.println("</table></div>");
         
                    %>
      
			   <%
                                String m=request.getParameter("msg");
                                if(m!=null)
                 out.println("<p style='color:red'>"+m+"</p>");

                                %>                 
    
           
                
                                           <div class="clearfix"style="border-style: solid"></div>
		</div></div>	
		 
</center>

    </body>
</html>
