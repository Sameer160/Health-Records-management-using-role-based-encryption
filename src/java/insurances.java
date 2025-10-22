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

public class insurances extends HttpServlet {

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
        String i_name=request.getParameter("I_Name");
        System.out.println(i_name);
        String email=request.getParameter("Mail");
        System.out.println(email);

        String pass=request.getParameter("P_Pass");
        System.out.println(pass);

        String con_pass=request.getParameter("C_Pass");
                        System.out.println(con_pass);

        String address=request.getParameter("P_Adrr");
                        System.out.println(address);

        String city=request.getParameter("city");
        String pincode=request.getParameter("pin");
        String y_of_start=request.getParameter("year");
        String key_1=request.getParameter("key");
        
        
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
          String query="insert into insurance(insur_name, mail, passwd, con_passwrd, address, city, pin, y_of_start, profile,keyy_1) values(?,?,?,?,?,?,?,?,?,?)";
          PreparedStatement statement=conn.prepareStatement(query);
          System.out.println(query);

            statement.setString(1,i_name);
            //statement.setString(2, file);
            statement.setString(2, email);
            statement.setString(3, pass);
            statement.setString(4, con_pass);
            statement.setString(5, address);
            statement.setString(6, city);
            statement.setString(7, pincode);
            statement.setString(8, y_of_start);
            statement.setString(10, key_1);

            if (inputStream != null) 
            {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(9, inputStream);
            }
          String query1="select insur_name,mail from insurance where insur_name='"+i_name+"'|| mail='"+email+"'";
           System.out.println(query1);
          ResultSet rs=statement.executeQuery(query1);
         
          if(rs.next())
          {
              session.setAttribute("msg", "Already Exists");
              response.sendRedirect("insurance.jsp");
          }
        
         else
          {
              int i = 0;
              i=statement.executeUpdate();
              if(i>0)
           {
               session.setAttribute("msg", "Successfully Updated");
              response.sendRedirect("Send_mail?Email="+email+ "&keyy="+key_1);
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
