/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class payment1 extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
        String card_type=request.getParameter("ctype");
            String card_no=request.getParameter("cnum");
            String amt=request.getParameter("amt");
            String admin_accountt=request.getParameter("fnum");
            String username=request.getParameter("from");
        try {
            DbConnection db1=new DbConnection();
            String query1="Insert into pay_information(c_type, c_no, amt, admin, user_name) values('"+card_type+"','"+card_no+"','"+amt+"','"+admin_accountt+"','"+username+"')";
            String query="select * from pay_information where c_no='"+card_no+"'";
            ResultSet rs=db1.Select(query);
            if(rs.next())
            {
               session.setAttribute("msg", "Already Exists");
               
                response.sendRedirect("payment.jsp");
            }
        
            else
            {
               int i=db1.Insert(query1);
               if(i>0)
               { 
                response.sendRedirect("paymentprocess.jsp");
               }
            }
        }
            catch(Exception ex)
            {
                out.println(ex);
            }
            
          finally {            
            out.close();
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
