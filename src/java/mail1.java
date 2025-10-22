/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang.RandomStringUtils;

/**
 *
 * @author subha_sundari
 */
@WebServlet(urlPatterns = {"/mail1"})
public class mail1 extends HttpServlet {

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
    public String userName;
     public synchronized  boolean sendMail(String userName, String passWord, String host, String port, String starttls, String auth, boolean debug, String socketFactoryClass, String fallback, String[] to, String[] cc, String[] bcc, String subject, String text)
    {
        this.userName=userName;
 

        Properties props = new Properties();

        //Properties props=System.getProperties();

        props.put("mail.smtp.user", userName);

        props.put("mail.smtp.host", host);

        if (!"".equals(port)) {
            props.put("mail.smtp.port", port);
        }

        if (!"".equals(starttls)) {
            props.put("mail.smtp.starttls.enable", starttls);
        }

        props.put("mail.smtp.auth", auth);

        if (debug) {

            props.put("mail.smtp.debug", "true");

        } else {
            props.put("mail.smtp.debug", "false");

        }

        if (!"".equals(port)) {
            props.put("mail.smtp.socketFactory.port", port);
        }

        if (!"".equals(socketFactoryClass)) {
            props.put("mail.smtp.socketFactory.class", socketFactoryClass);
        }

        if (!"".equals(fallback)) {
            props.put("mail.smtp.socketFactory.fallback", fallback);
        }



        try {

            Session session = Session.getDefaultInstance(props, null);

            session.setDebug(debug);

            MimeMessage msg = new MimeMessage(session);

            msg.setText(text);

            msg.setSubject(subject);

            msg.setFrom(new InternetAddress(userName));

            for (int i = 0; i < to.length; i++) {

                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to[i]));

            }

            for (int i = 0; i < cc.length; i++) {

                msg.addRecipient(Message.RecipientType.CC, new InternetAddress(cc[i]));

            }

            for (int i = 0; i < bcc.length; i++) {

                msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(bcc[i]));

            }

            msg.saveChanges();

            Transport transport = session.getTransport("smtp");

            transport.connect(host, userName, passWord);

            transport.sendMessage(msg, msg.getAllRecipients());

            transport.close();

            return true;

        } catch (Exception mex) {


            mex.printStackTrace();

            return false;

        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String id=request.getParameter("id1");
        System.out.println(id);
        String usrid="javatrios07@gmail.com";
		String passwd="ncwbjzphrjztfupn";
             String t="";  
        try {
            String otp=RandomStringUtils.randomAlphanumeric(5);
System.out.println(otp);
 DbConnection Db=new DbConnection();
ResultSet rs=Db.Select("select * from user_phr_details where id='"+id+"'");
if(rs.next())
{
     t=rs.getString(18);
}
rs.close();
 String[] to = {t};

        String[] cc = {usrid};

        String[] bcc = {usrid};
         
         int i=Db.Insert("Update user_phr_details set key='"+otp+"' where  id='"+id+"'");
                 String text="Your Key is: "+otp;

             sendMail(usrid, passwd, "smtp.gmail.com", "465", "true", "true", true, "javax.net.ssl.SSLSocketFactory", "false", to, cc, bcc, "mail", text);
             response.sendRedirect("OtpAuth.jsp");


        } catch(Exception e)
        {
            e.printStackTrace();
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
