/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/ProviderReg"})
public class ProviderReg extends HttpServlet {

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
            throws ServletException, IOException, FileUploadException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
       
        try {
            String H_Name="",P_Name="",UP_Name="",P_Pass="",C_Pass="",sec="",P_Adrr="",city="",Mail="",year="";
            H_Name=request.getParameter("H_Name");
            P_Name=request.getParameter("P_Name");
            UP_Name=request.getParameter("UP_Name");
            P_Pass=request.getParameter("P_Pass");
            C_Pass=request.getParameter("C_Pass");
            sec=request.getParameter("sec");
            if(sec.equals("4.Others"))
            {
                sec=request.getParameter("other");
            }
            String ans=request.getParameter("ans");
            String pin=request.getParameter("pin");
            P_Adrr=request.getParameter("P_Adrr");
            city=request.getParameter("city");
            Mail=request.getParameter("Mail");
            year=request.getParameter("year");
            DbConnection db=new DbConnection();
            String query="Select * from provider_details where UP_Name='"+UP_Name+"'";
            String query1="insert into provider_details values('"+H_Name+"','"+P_Name+"','"+UP_Name+"','"+P_Pass+"','"+C_Pass+"','"+sec+"','"+P_Adrr+"','"+city+"','"+Mail+"','"+year+"','"+ans+"','"+pin+"')";
            ResultSet rs=db.Select(query);
            if(rs.next())
            {  
              session.setAttribute("msg","License Number Already Exist");
              response.sendRedirect("Provider_Reg.jsp");
            }
            else
            {
                int i=db.Insert(query1);
                if(i>0)
                {
                    session.setAttribute("msg","Registration Successfull");
                    response.sendRedirect("Provider.jsp");
                }
                else
                {
                  session.setAttribute("msg","Data Base Error Can't Register");
                  response.sendRedirect("Provider_Reg.jsp");  
                }
            }
  
        } catch (SQLException ex) {
System.out.println(ex);
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProviderReg.class.getName()).log(Level.SEVERE, null, ex);
        }
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
