/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author admin
 */
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB

public class research_reg extends HttpServlet {

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
        String rname=request.getParameter("R_Name");
        String email=request.getParameter("Mail");
        String pass=request.getParameter("P_Pass");
        String con_pass=request.getParameter("C_Pass");
        String work_experi=request.getParameter("W_Experi");
        String special=request.getParameter("speci");
        String address=request.getParameter("P_Adrr");
        String city=request.getParameter("city");
        String pincode=request.getParameter("pin");
        String y_of_start=request.getParameter("year");
        
        
        
        
        InputStream inputStream = null;
        Part filePart=request.getPart("file");
        
        if(filePart!=null)
        {
            System.out.println(filePart.getName());
            System.out.println(filePart.getContentType());
            inputStream=filePart.getInputStream();
        }
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {
           
          Class.forName("com.mysql.jdbc.Driver");
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root", "root");
          String query="Insert into research(re_name, mail, passwrd, con_passwrd, wrk_experi, specialization, address, city, pin_code, y_of_start, profile) values(?,?,?,?,?,?,?,?,?,?,?)";
          PreparedStatement statement=conn.prepareStatement(query);
          System.out.println(query);
          statement.setString(1,rname);
            //statement.setString(2, file);
            statement.setString(2, email);
            statement.setString(3, pass);
            statement.setString(4, con_pass);
            statement.setString(5, work_experi);
            statement.setString(6,special);
              statement.setString(7, address);
            statement.setString(8, city);
            statement.setString(9, pincode);
            statement.setString(10, y_of_start);
            
            
            
            if (inputStream != null) 
            {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(11, inputStream);
            }
          String query1="select * from research where re_name='"+rname+"'|| mail='"+email+"'";
           System.out.println(query1);
          ResultSet rs=statement.executeQuery(query1);
         
          if(rs.next())
          {
              session.setAttribute("msg", "Already Exists");
              response.sendRedirect("researcher.jsp");
          }
        
         else
          {
              int i = 0;
              i=statement.executeUpdate();
              if(i>0)
           {
               session.setAttribute("msg", "Successfully Updated");
              response.sendRedirect("researcher.jsp");
           }
          }
        }
          catch(Exception ex)
          {
              out.println();
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
