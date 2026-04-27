
package mypack;

import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class order extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession st=request.getSession();

             String id=request.getParameter("p");
            String pname=request.getParameter("t1");
           
            String area=request.getParameter("t2");
            String email=request.getParameter("t3");
            String phone=request.getParameter("t4");
            String address=request.getParameter("t5");
            String time=request.getParameter("t");
            String date=request.getParameter("d");
             String time1=request.getParameter("ti");
             String t=time.concat(time1);
            DBconnection db=new DBconnection();
            
           db.pstmt=db.con.prepareStatement("select * from c_reg where email='"+pname+"'");
          db.rst=db.pstmt.executeQuery();
          if(db.rst.next())
          {

               db.pstmt=db.con.prepareStatement("insert into booking(p_id,c_id,c_name,phone,v_number,p_no,p_date,p_time,b_date) values(?,?,?,?,?,?,?,?,curdate())");
               db.pstmt.setString(1, id);
               db.pstmt.setString(2, pname);
               db.pstmt.setString(3, area);
               db.pstmt.setString(4, email);
               db.pstmt.setString(5, phone);
               db.pstmt.setString(6, address);
               db.pstmt.setString(7, date);
               db.pstmt.setString(8, t);
               
               
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
                   st.setAttribute("pid", id);
                   st.setAttribute("name", area);
                   st.setAttribute("phone", email);
                   st.setAttribute("v_num", phone);
                    st.setAttribute("date", date);
                   st.setAttribute("time", t);
               
                response.sendRedirect("printslip.jsp?msg=Registration complete...!!...!!");
           
                  
                   }
               else
               {
               response.sendRedirect("booking.jsp?msg=booking error...!!...!!");
               
               
               }
          }
          else
               {
               response.sendRedirect("booking.jsp?msg=User not Registred. please register first ..!!...!!");
               
               
               }
              
         
        
        
        
        } catch(Exception e) {            
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
