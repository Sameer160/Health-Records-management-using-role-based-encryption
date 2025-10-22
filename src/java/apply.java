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
 * @author admin
 */
public class apply extends HttpServlet {

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
        String id_card=request.getParameter("card_no");
        System.out.println(id_card);
        String pat_name=request.getParameter("p_Name");
         System.out.println(pat_name);
        String[] gender1=request.getParameterValues("gender");
         System.out.println(gender1);
        String age=request.getParameter("age");
         System.out.println(age);
        String d_of_birth=request.getParameter("date");
         System.out.println(d_of_birth);
        String address=request.getParameter("P_Adrr");
         System.out.println(address);
        String[] mediclaim=request.getParameterValues("Insurances");
         System.out.println(mediclaim);
        String[] family_physian=request.getParameterValues("Physician");
         System.out.println(family_physian);
        String Name_physian=request.getParameter("fa_phy");
         System.out.println(Name_physian);
        String contact_no=request.getParameter("con_no");
         System.out.println(contact_no);
       try {
           DbConnection db1=new DbConnection();
           String query="Insert into apply_insurances(card_nom, pa_name, gen_der, age, dat_of_birth, address, mediclaim, family_physician, name_phy, contact_no) values('"+id_card+"','"+pat_name+"','"+gender1[0]+"','"+age+"','"+d_of_birth+"','"+address+"','"+mediclaim[0]+"','"+family_physian[0]+"','"+Name_physian+"','"+contact_no+"')";
           int i=db1.Insert(query);
           System.out.println(query);
           if(i>0)
           {
               session.setAttribute("msg", "Insurances Applied Successfully");
             response.sendRedirect("apply.jsp");
           }
       }
       catch(Exception ex)
       {
           out.println(ex);
        } finally {            
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
