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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.lang.RandomStringUtils;
/**
 *
 * @author subha_sundari
 */
@WebServlet(urlPatterns = {"/UserReg"})
@MultipartConfig(maxFileSize = 16177215)
public class UserReg extends HttpServlet {
    Statement st;
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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String Image = request.getParameter("Image");
        String A_Name = request.getParameter("A_Name");
        String U_Name = request.getParameter("U_Name");
        String Gender = request.getParameter("Gender");
        String date = request.getParameter("date");
        String BG = request.getParameter("BG");
        String con = request.getParameter("con");
        String addr = request.getParameter("addr");
        String city = request.getParameter("city");
        String pin = request.getParameter("pin");
        String mail = request.getParameter("mail");
        String pw = request.getParameter("pw");
        InputStream inputStream = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //Connection conn = DriverManager.getConnection("jdbc:mysql://node157559-aadharpro.j.layershift.co.uk/healthcare", "root", "QYGrcl51258");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/healthcare", "root", "root");
            
            Part filePart = request.getPart("Image");
            if (filePart != null) {

                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
                inputStream = filePart.getInputStream();

            }
            String query = "Select * from user_registration where A_Name='" + A_Name + "'  ";
            System.out.println(query);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            

            if (rs.next()) {

                session.setAttribute("msg", "Already exist Please Check Values");
                response.sendRedirect("Provider_Home.jsp");
                } else {

                String otp = RandomStringUtils.randomAlphanumeric(5);
                System.out.println(otp);
            
            String sql ="insert into user_registration(Image, A_Name, U_Name, Gender, date, BG, con, addr, city, pin, otp, mail, Password) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            System.out.println(sql);
            
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
            ps.setBlob(1, inputStream);
            }
            ps.setString(2,A_Name);
            ps.setString(3,U_Name);
            ps.setString(4,Gender);
            ps.setString(5, date);
            ps.setString(6, BG);
            ps.setString(7, con);
            ps.setString(8, addr);
            ps.setString(9, city);
            ps.setString(10, pin);
            ps.setString(11, otp);
            ps.setString(12, mail);
            ps.setString(13, pw);
            
            int row = ps.executeUpdate();
           DbConnection db = new DbConnection();
            int jh = 0;
                String q1 ="Select * from user_registration where A_Name='" + A_Name + "' ";
                ResultSet rf = st.executeQuery(q1);
                if (rf.next()) {
                    jh = rf.getInt("id");
                }
                session.setAttribute("msg1", "Your User Idendification Number Is :\n" + jh);
                session.setAttribute("msg", "Successfully Register");
                session.setAttribute("user_u", U_Name);
                String usrid = "javatrios07@gmail.com";
                String passwd = "ncwbjzphrjztfupn";
                String t = mail;
                DbConnection Db = new DbConnection();

                rs.close();
                String[] to = {t};

                String[] cc = {usrid};

                String[] bcc = {usrid};


                String text = "Your One Time Password is: " + otp;
                mail ma = new mail();
                ma.sendMail(usrid, passwd, "smtp.gmail.com", "465", "true", "true", true, "javax.net.ssl.SSLSocketFactory", "false", to, cc, bcc, "mail", text);
                 //response.sendRedirect("OtpAuthentication.jsp");

                response.sendRedirect("User_Register.jsp");
            
    
        } 
        }finally {            
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(UserReg.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserReg.class.getName()).log(Level.SEVERE, null, ex);
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(UserReg.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserReg.class.getName()).log(Level.SEVERE, null, ex);
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
