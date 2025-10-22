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
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author surendhar
 */
@WebServlet(urlPatterns = {"/User_Register"})
public class User_Register extends HttpServlet {

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
        HttpSession session = request.getSession(true);

        try {
            String mail = "";
            String saveFile1 = "";
            String password = "", F_Name = "", L_Name = "", U_Ph = "", gender = "", file1 = "";
            String saveFile = "", l = "", ln = "", mname = "", dob = "", celno = "", typ = "", pwd="";
            String sex = "", voterno = "", email = "", bg = "", pstreet = "", cstreet = "", parea = "", carea = "", pcity = "", ccity = "";
            String ppinno = "", cpinno = "", pass = "", repass = "";
            int fileidnum = 0, downloadcount = 0, vc = 0;
            // String contentType = request.getContentType();
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
            factory.setSizeThreshold(4012);
//factory.setRepository("c:");

// Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

// Set overall request size constraint
            //upload.setSizeMax(10024);

// Parse the request
            List items = null;
            try {
                items = upload.parseRequest(new ServletRequestContext(request));
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            byte[] data = null;
            String fileName = null;
            byte[] data1 = null;
            String fileName1 = null;
// Process the uploaded items
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    String value = item.getString();

                    if (name.equalsIgnoreCase("A_Name")) {
                        email = value;
                        System.out.println("A_Name" + email);
                    } else if (name.equalsIgnoreCase("U_Name")) {
                        password = value;
                        System.out.println("U_Name" + password);
                    } else if (name.equalsIgnoreCase("Gender")) {
                        F_Name = value;
                        System.out.println("Gender" + F_Name);
                    } else if (name.equalsIgnoreCase("mail")) {
                        mail = value;
                        System.out.println("mail" + mail);
                    } else if (name.equalsIgnoreCase("date")) {
                        L_Name = value;
                        System.out.println("date" + L_Name);
                    } else if (name.equalsIgnoreCase("BG")) {
                        U_Ph = value;
                        System.out.println("BG" + U_Ph);
                    } else if (name.equalsIgnoreCase("con")) {
                        gender = value;
                        System.out.println("con" + gender);
                    } else if (name.equalsIgnoreCase("addr")) {
                        dob = value;
                        System.out.println("addr" + dob);
                    } 
                    else if (name.equalsIgnoreCase("city")) {
                        ccity = value;
                        System.out.println("city" + ccity);
                    } else if (name.equalsIgnoreCase("pin")) {
                        ppinno = value;
                        System.out.println("pin" + ppinno);
                    }else if(name.equalsIgnoreCase("pw")) {
                        pwd = value;
                        System.out.println("Password" + pwd);
                    } else {
                        System.out.println("ERROR");
                    }
                
                }
            }
            saveFile = fileName;
            String path1 = request.getSession().getServletContext().getRealPath("/");
            // String patt=path.replace("\\build", "");

            String strPath1 = path1 + "\\" + saveFile;
            File ff1 = new File(strPath1);
            FileOutputStream fileOut1 = new FileOutputStream(ff1);
            fileOut1.write(data, 0, data.length);
            fileOut1.flush();
            fileOut1.close();
            out.println(saveFile);
            /////////////////////////////////////////////////////////

            FileInputStream fis11 = null;
            File image1 = null;

            saveFile1 = fileName1;
            String path11 = request.getSession().getServletContext().getRealPath("/");
            // String patt=path.replace("\\build", "");

            String strPath11 = path11 + "\\" + saveFile1;
            File ff11 = new File(strPath11);
            FileOutputStream fileOut11 = new FileOutputStream(ff11);
            fileOut11.write(data1, 0, data1.length);
            fileOut11.flush();
            fileOut11.close();
            out.println(saveFile1);
            /////////////////////////////////////////////////////////

            FileInputStream fis111 = null;
            File image11 = null;
//FileInputStream fis11 = null;
            File image111 = null;
            Connection con7 = null;
            PreparedStatement st7 = null;


            PreparedStatement st11 = null;

            image1 = new File(strPath1);
            fis11 = new FileInputStream(image1);
            image111 = new File(strPath11);
            fis111 = new FileInputStream(image111);
            String dd = "0";

            Class.forName("com.mysql.jdbc.Driver");
//            con7 = DriverManager.getConnection("jdbc:mysql://node157559-aadharpro.j.layershift.co.uk/healthcare", "root", "QYGrcl51258");
           con7=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root");




            String sname = F_Name + " " + L_Name;
            String query = "Select * from user_registration where A_Name='" + email + "'  ";
            System.out.println(query);
            Statement st = con7.createStatement();
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {

                session.setAttribute("msg", "Already exist Please Check Values");
                response.sendRedirect("Provider_Home.jsp");
            } else {

                String otp = RandomStringUtils.randomAlphanumeric(5);
                System.out.println(otp);
                st7 = con7.prepareStatement("insert into user_registration(Image,A_Name,U_Name,Gender,date,BG,con,addr,city,pin,otp,mail,Password) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
                st7.setBinaryStream(1, (InputStream) fis111, (int) (image111.length()));

//st7.setInt(2,0);
                st7.setString(2, email);

                st7.setString(3, password);

                st7.setString(4, F_Name);
                st7.setString(5, L_Name);
                st7.setString(6, U_Ph);
                st7.setString(7, gender);
                st7.setString(8, dob);

                st7.setString(9, ccity);
                st7.setString(10, ppinno);                              
                st7.setString(11, otp);
                st7.setString(12, mail);
                st7.setString(13, pwd);
                int i = st7.executeUpdate();
                DbConnection db = new DbConnection();
                int jh = 0;
                ResultSet rf = db.Select("Select * from user_registration where A_Name='" + email + "' ");
                if (rf.next()) {
                    jh = rf.getInt("id");
                }
                session.setAttribute("msg1", "Your User Idendification Number Is :\n" + jh);
                session.setAttribute("msg", "Successfully Register");
                session.setAttribute("user_u", password);
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

        } catch (Exception e) {
            out.println(e);
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
