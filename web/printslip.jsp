<%-- 
    Document   : printslip
    Created on : Mar 7, 2016, 1:13:54 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">Back</a>
        <center>
        <%
        HttpSession st=request.getSession();
        String a=(String)st.getAttribute("pid");
        String b=(String)st.getAttribute("name");
        String c=(String)st.getAttribute("phone");
        String d=(String)st.getAttribute("v_num");
       String date=(String)st.getAttribute("date");
      String time=(String)st.getAttribute("time");
  
        out.println("<div style='width:400px;border-style:solid;border-width:1px;background-color:#FFCC99;'>"); 
   out.println("<tr><td><h2>Welcome to Online parking </h2></td></tr>");
 out.println("</div>");   
out.println("<div style='width:400px;border-style:solid;border-width:1px;background-color:#99FFCC;'>"); 
   out.println("<tr><h3>Booking Slip</h3></tr>");
 out.println("</div>");
 out.println("</div>");
 
out.println("<div style='width:400px;height:250px;border-style:solid;border-width:1px;background-color:#FFFFFF;'>");          
 out.println("<table border='1' style='width:390px;'>");

  
 out.println("</tr>");
            
                       		
			 out.println("<tr><td align='center'>Id</td><td align='center'>"+a+"</td></tr>");
			out.println("<tr><td align='center'>Name</td><td align='center'>"+b+"</td></tr>");
			out.println("<tr><td align='center'>Phone</td><td align='center'>"+c+"</td></tr>");
			out.println("<tr><td align='center'>Vehicle Number</td><td align='center'>"+d+"</td></tr>");
			out.println("<tr><td align='center'>Booking Date</td><td align='center'>"+date+"</td></tr>");
			out.println("<tr><td align='center'>Booking Time</td><td align='center'>"+time+"</td></tr>");
			
			 
			   
                out.println("</table>");
                out.println("<div style='width:400px;background-color:white;'>"); 
                  out.println("<table width=400>");
                  out.println("<tr></tr><tr height=30px></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>");
		
                  out.println("<tr><td>Signature of Customer</td><td>Parking </td></tr>");
			
                   out.println("</table>");
   
   
 out.println("</div>");   
                out.println("</div>");
              
            
             
             
                         
           
 
     
                    %>
                    <script LANGUAGE="JavaScript"> 
if (window.print) {
document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
}
                    </script>
        </center>   
  
    </body>
</html>
