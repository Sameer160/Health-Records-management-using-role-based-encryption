import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add_Phr")
public class Add_Phr extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/healthcare";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "root";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("MySQL JDBC Driver not found");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        
        
         String inputDate = request.getParameter("inputDate");
            String U_Name = request.getParameter("U_Name");
            String U_Id = request.getParameter("U_Id");
            String Height = request.getParameter("Height");
            String Weight = request.getParameter("Weight");
            String BB = request.getParameter("BB");
            String bsugar = request.getParameter("bsugar");
            String asugar = request.getParameter("asugar");
            String comp = request.getParameter("comp");
            String Surgery = request.getParameter("Surgery");
            String treat_given = request.getParameter("treat_given");
            String treat_days = request.getParameter("treat_days");
            String sugg = request.getParameter("sugg");
            String allergy = request.getParameter("allergy");
            String Ano = request.getParameter("Ano");
            String cmnt = request.getParameter("cmnt");
            String key = "0";

        // Check if encryption checkboxes are selected
        boolean encryptData1 = "1".equals(request.getParameter("cb1"));
        boolean encryptData2 = "2".equals(request.getParameter("cb2"));
        boolean encryptData3 = "3".equals(request.getParameter("cb3"));
        boolean encryptData4 = "4".equals(request.getParameter("cb4"));
        boolean encryptData5 = "5".equals(request.getParameter("cb5"));
        boolean encryptData6 = "6".equals(request.getParameter("cb6"));
        boolean encryptData7 = "7".equals(request.getParameter("cb7"));
        boolean encryptData8 = "8".equals(request.getParameter("cb8"));
        boolean encryptData9 = "9".equals(request.getParameter("cb9"));
        boolean encryptData10 = "10".equals(request.getParameter("cb10"));
        boolean encryptData11 = "11".equals(request.getParameter("cb11"));
        boolean encryptData12 = "12".equals(request.getParameter("cb12"));
        boolean encryptData13 = "13".equals(request.getParameter("cb13"));
        boolean encryptData14 = "14".equals(request.getParameter("cb14"));

        // Generate OTP
        String otp = generateOTP();

        try {
            // Encrypt data if needed
            String encryptedData1 = encryptData1 && U_Name != null ? EncryptionUtil.encrypt(U_Name) : U_Name;
            String encryptedData2 = encryptData2 && U_Id != null ? EncryptionUtil.encrypt(U_Id) : U_Id;
            String encryptedData3 = encryptData3 && Height != null ? EncryptionUtil.encrypt(Height) : Height;
            String encryptedData4 = encryptData4 && Weight != null ? EncryptionUtil.encrypt(Weight) : Weight;
            String encryptedData5 = encryptData5 && BB != null ? EncryptionUtil.encrypt(BB) : BB;
            String encryptedData6 = encryptData6 && bsugar != null ? EncryptionUtil.encrypt(bsugar) : bsugar;
            String encryptedData7 = encryptData7 && asugar != null ? EncryptionUtil.encrypt(asugar) : asugar;
            String encryptedData8 = encryptData8 && comp != null ? EncryptionUtil.encrypt(comp) : comp;
            String encryptedData9 = encryptData9 && Surgery != null ? EncryptionUtil.encrypt(Surgery) : Surgery;
            String encryptedData10 = encryptData10 && treat_given != null ? EncryptionUtil.encrypt(treat_given) : treat_given;
            String encryptedData11 = encryptData11 && treat_days != null ? EncryptionUtil.encrypt(treat_days) : treat_days;
            String encryptedData12 = encryptData12 && sugg != null ? EncryptionUtil.encrypt(sugg) : sugg;
            String encryptedData13 = encryptData13 && allergy != null ? EncryptionUtil.encrypt(allergy) : allergy;
            String encryptedData14 = encryptData14 && cmnt != null ? EncryptionUtil.encrypt(cmnt) : cmnt;
            

            try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
                String sql = "INSERT INTO user_phr_details VALUES (?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, inputDate);
                    stmt.setString(2, encryptedData1);
                    stmt.setString(3, encryptedData2);
                    stmt.setString(4, encryptedData3);
                    stmt.setString(5, encryptedData4);
                    stmt.setString(6, encryptedData5);
                    stmt.setString(7, encryptedData6);
                    stmt.setString(8, encryptedData7);
                    stmt.setString(9, encryptedData8);
                    stmt.setString(10, encryptedData9);
                    stmt.setString(11, encryptedData10);
                    stmt.setString(12, encryptedData11);
                    stmt.setString(13, encryptedData12);
                    stmt.setString(14, encryptedData13);
                    stmt.setString(15, Ano);
                    stmt.setString(16, encryptedData14);
                    stmt.setString(17, key);
                    stmt.setInt(18, 0);
                    
                    stmt.executeUpdate();
                }
            }

              response.sendRedirect("User_Phr.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error storing data");
        }
    }

    private String generateOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000); // 6-digit OTP
        return Integer.toString(otp);
    }
}
