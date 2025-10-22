/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Priyanka.L.P
 */
public class organ extends HttpServlet {

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
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String mail=request.getParameter("mail");
        String pass=request.getParameter("pass");
        String pass1=request.getParameter("cpass");
        String date=request.getParameter("dob");
        String pho_no=request.getParameter("phone");
        String address=request.getParameter("adds");
        String gender=request.getParameter("sex");
        String blood=request.getParameter("bg");
        String hos_name=request.getParameter("hosp_name");
        String alternative=request.getParameter("a_phno");
        String details=request.getParameter("parents");
        try
        {
        DbConnection db1=new DbConnection();
          String s1="insert into donar(id, name, mail, pass, pass1, date, p_no, address, gender, blood, hos_name, alrtttt, detail)values('"+id+"','"+name+"','"+mail+"','"+pass+"','"+pass1+"','"+date+"','"+pho_no+"','"+address+"','"+gender+"','"+blood+"','"+hos_name+"','"+alternative+"','"+details+"')";
          int qrysts=db1.Insert(s1);
          if(qrysts>0)
          {
               session.setAttribute("msg", "Donar Details Submitted");
               response.sendRedirect("don_reg.jsp");
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
