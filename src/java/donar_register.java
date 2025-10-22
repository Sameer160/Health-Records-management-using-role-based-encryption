/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alaguraj
 */
@WebServlet(urlPatterns = {"/donar_register"})
public class donar_register extends HttpServlet {

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
          String A_id=request.getParameter("id");
          System.out.println(A_id);
          String mname=request.getParameter("name");
          System.out.println(mname);
          String fname=request.getParameter("fname");
          String mail=request.getParameter("mail");
          String pass=request.getParameter("pass");
          String pass1=request.getParameter("cpass");
          String dob=request.getParameter("dob");
          String cell=request.getParameter("phone");
          String address=request.getParameter("adds");
          String gender=request.getParameter("sex");
          String bg=request.getParameter("bg");
          String hosp=request.getParameter("hospital");
          String phone=request.getParameter("phno");
          String parents=request.getParameter("parents");
          try
          {
          DbConnection db1=new DbConnection();
          String s1="insert into donor (id, mname, fname, mail, pass, pass1, dob, cell, address, gender, bg, hosp, phone, parents)values('"+A_id+"','"+mname+"','"+fname+"','"+mail+"','"+pass+"','"+pass1+"','"+dob+"','"+cell+"','"+address+"','"+gender+"','"+bg+"','"+hosp+"','"+phone+"','"+parents+"')";
          int qrysts=db1.Insert(s1);
          if(qrysts>0)
          {
               session.setAttribute("msg", "Registered Successfully");
               response.sendRedirect("don_reg.jsp");
          } 
          }
          catch(Exception e)
          {      
              out.println(e);
          }
        
        finally 
        {            
            out.close();
        }
    
    }
    }
