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

public class banking_reg extends HttpServlet {

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
        
        String h_id=request.getParameter("h_id");
        String username=request.getParameter("user_name");
        String email_id=request.getParameter("Mail");
        String pass=request.getParameter("P_Pass");
        String con_pass=request.getParameter("C_Pass");
        String[] Gender=request.getParameterValues("Gender");
        
        String d_o_b=request.getParameter("da_te");
        String[] Occupation=request.getParameterValues("Occupation");
        
        String[] Photos=request.getParameterValues("Photos");
        
        String mobile=request.getParameter("mobile");
        String p_address=request.getParameter("P_Adrr");
        String t_address=request.getParameter("T_Adrr");
        String[] Address_Proof=request.getParameterValues("Address_Proof");
        
        String city=request.getParameter("city");
        String pincode=request.getParameter("pin");
        String y_of_start=request.getParameter("year");
        
        
         InputStream inputStream = null;
        Part filePart=request.getPart("profile");
        
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
          String query="insert into banking(profile, hid, user, mail, pass, c_pass, gender, dob, occup, pho, mob, p_addre, t_addre, addree_proof, city, pincode, yos) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
          PreparedStatement statement=conn.prepareStatement(query);
          System.out.println(query);

            statement.setString(2,h_id);
            //statement.setString(2, file);
            statement.setString(3, username);
             statement.setString(4, email_id); 
              statement.setString(5, pass);
               statement.setString(6, con_pass);
              statement.setString(7, Gender[0]);
            statement.setString(8, d_o_b);
            statement.setString(9, Occupation[0]);
            statement.setString(10, Photos[0]);
            statement.setString(11, mobile);
             statement.setString(12, p_address);
            statement.setString(13, t_address);
            statement.setString(14, Address_Proof[0]);
                        statement.setString(15, city);

            statement.setString(16, pincode);

            statement.setString(17, y_of_start);
            if (inputStream != null) 
            {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(1, inputStream);
            }
          String query1="select user,mail from banking where user='"+username+"'|| mail='"+email_id+"'";
           System.out.println(query1);
          ResultSet rs=statement.executeQuery(query1);
         
          if(rs.next())
          {
              session.setAttribute("msg", "Already Exists");
              response.sendRedirect("banking.jsp");
          }
        
         else
          {
              int i = 0;
              i=statement.executeUpdate();
              if(i>0)
           {
               session.setAttribute("msg", "Successfully Updated");
              response.sendRedirect("banking.jsp");
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
