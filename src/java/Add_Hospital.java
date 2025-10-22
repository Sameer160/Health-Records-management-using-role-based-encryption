/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mvinoth
 */
@WebServlet(urlPatterns = {"/Add_Hospital"})
public class Add_Hospital extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         HttpSession session=request.getSession(true);
         
        



    
String A_Name=request.getParameter("A_Name");
String Image="",U_Name="",Gender="",date="",BG="",con="",addr="",FImage="";

try{
if(A_Name.equals(A_Name))
{
    
    
         
           Class.forName("com.mysql.jdbc.Driver");
          // Connection con1=DriverManager.getConnection("jdbc:mysql://node157559-aadharpro.j.layershift.co.uk/healthcare","root","QYGrcl51258");
             Connection  con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root");

           Statement st=con1.createStatement();
           ResultSet rs=st.executeQuery("select * from user_registration where A_Name="+A_Name+"");
         
    if(rs.next())
    {
         Image =rs.getString("Image");
         U_Name=rs.getString("U_Name");
         Gender=rs.getString("Gender");
         date=rs.getString("date");
         BG=rs.getString("BG");
         con=rs.getString("con");
        addr=rs.getString("addr");
         FImage=rs.getString("FImage");
         
    }
    
    
}

else
{
    response.sendRedirect("Partner.jsp?msg=Please EnterAadhar id");
}
    
}
    
         catch(Exception e)
         {
             out.println(e);
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
        processGetRequest(request, response);
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
        processGetRequest(request, response);
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

    private void processGetRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

    


