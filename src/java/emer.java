/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author admin
 */
public class emer extends HttpServlet {

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
        String username=request.getParameter("A_Name");
        String dob=request.getParameter("dob");
        String patient_h=request.getParameter("pat_hig");
        String patient_w=request.getParameter("pat_wei");
        String pat_aa_id=request.getParameter("pat_aa_id");
        String reason=request.getParameter("reason");
        String comment=request.getParameter("comment");
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("Image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            //System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "root");
            String query="Insert into new_emergency(Image, user_name, dob, patient_h, patient_w, pat_aa_id, reason, comment) values(?,?,?,?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(2, username);
            stmt.setString(3, dob); 
            stmt.setString(4, patient_h);
            stmt.setString(5, patient_w);
            stmt.setString(6, pat_aa_id);
            stmt.setString(7, reason);
            stmt.setString(8, comment);
             if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                stmt.setBlob(1, inputStream);
            }

            // sends the statement to the database server
            int row = stmt.executeUpdate();
            if (row > 0)
            {
            session.setAttribute("msg", "File Uploaded Successfully");
           response.sendRedirect("emergency.jsp");
            }
        }
        catch(Exception ex)
        {
            out.println(ex);
        
        }
        
            out.close();
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
