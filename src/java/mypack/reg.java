
package mypack;

import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class reg extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String pname=request.getParameter("t1");
           
            String area=request.getParameter("t2");
            String email=request.getParameter("t3");
            String phone=request.getParameter("t4");
            String address=request.getParameter("t5");
            String pass=request.getParameter("t6");
            String p_cap=request.getParameter("tc");  
              
               DBconnection db=new DBconnection();
               db.pstmt=db.con.prepareStatement("insert into registration(p_name,p_area,p_cap,email,phone,address,password,r_date) values(?,?,?,?,?,?,?,curdate())");
               db.pstmt.setString(1, pname);
               db.pstmt.setString(2, area);
               db.pstmt.setString(3, p_cap);
               db.pstmt.setString(4, email);
               db.pstmt.setString(5, phone);
               db.pstmt.setString(6, address);
               db.pstmt.setString(7, pass);
               
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
                response.sendRedirect("register.jsp?msg=Registration complete...!!...!!");
           
                  
                   }
               else
               {
               response.sendRedirect("register.jsp?msg=User already Registred...!!...!!");
               
               
               }
              
            
            
        } catch(Exception e){            
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
