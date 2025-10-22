import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VerifyOTP")
public class VerifyOTP extends HttpServlet {

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
        String key1 = request.getParameter("otp");

        // Use StringBuilder for each field to store decrypted data
        StringBuilder name = new StringBuilder();
        StringBuilder userId = new StringBuilder();
        StringBuilder height = new StringBuilder();
        StringBuilder weight = new StringBuilder();
        StringBuilder bloodPressure = new StringBuilder();
        StringBuilder bloodSugarBefore = new StringBuilder();
        StringBuilder bloodSugarAfter = new StringBuilder();
        StringBuilder comprehensiveInfo = new StringBuilder();
        StringBuilder surgery = new StringBuilder();
        StringBuilder treatmentGiven = new StringBuilder();
        StringBuilder treatmentDays = new StringBuilder();
        StringBuilder suggestions = new StringBuilder();
        StringBuilder allergies = new StringBuilder();
        StringBuilder aadharNo = new StringBuilder();
        StringBuilder comments = new StringBuilder();

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT inputDate, U_Name, U_Id, Height, Weight, BB, bsugar, asugar, comp, Surgery, treat_given, treat_days, sugg, allergy, Aadhar_No, Comment1 FROM user_phr_details WHERE key1 = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, key1);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    // Decrypt and append data to the respective StringBuilder
                    appendData(rs.getString("U_Name"), name);
                    appendData(rs.getString("U_Id"), userId);
                    appendData(rs.getString("Height"), height);
                    appendData(rs.getString("Weight"), weight);
                    appendData(rs.getString("BB"), bloodPressure);
                    appendData(rs.getString("bsugar"), bloodSugarBefore);
                    appendData(rs.getString("asugar"), bloodSugarAfter);
                    appendData(rs.getString("comp"), comprehensiveInfo);
                    appendData(rs.getString("Surgery"), surgery);
                    appendData(rs.getString("treat_given"), treatmentGiven);
                    appendData(rs.getString("treat_days"), treatmentDays);
                    appendData(rs.getString("sugg"), suggestions);
                    appendData(rs.getString("allergy"), allergies);
                    appendData(rs.getString("Aadhar_No"), aadharNo);
                    appendData(rs.getString("Comment1"), comments);
                } else {
                    request.setAttribute("errorMessage", "Invalid OTP");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                    return;
                }
            }

            // Set the decrypted values as request attributes for the JSP
            request.getSession().setAttribute("U_Name", name.toString());
            request.getSession().setAttribute("User_ID", userId.toString());
            request.getSession().setAttribute("Height", height.toString());
            request.getSession().setAttribute("Weight", weight.toString());
            request.getSession().setAttribute("Blood_Pressure", bloodPressure.toString());
            request.getSession().setAttribute("Blood_Sugar_Before", bloodSugarBefore.toString());
            request.getSession().setAttribute("Blood_Sugar_After", bloodSugarAfter.toString());
            request.getSession().setAttribute("Comprehensive_Info", comprehensiveInfo.toString());
            request.getSession().setAttribute("Surgery", surgery.toString());
            request.getSession().setAttribute("Treatment_Given", treatmentGiven.toString());
            request.getSession().setAttribute("Treatment_Days", treatmentDays.toString());
            request.getSession().setAttribute("Suggestions", suggestions.toString());
            request.getSession().setAttribute("Allergies", allergies.toString());
            request.getSession().setAttribute("Aadhar_No", aadharNo.toString());
            request.getSession().setAttribute("Comments", comments.toString());

            
            response.sendRedirect("viewData.jsp");
           

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error processing OTP");
        }
    }

    private void appendData(String data, StringBuilder result) {
        if (data != null && !data.isEmpty()) {
            try {
                // Decrypt the data
                String decryptedData = EncryptionUtil.decrypt(data);
                result.append(decryptedData).append("<br>");
            } catch (Exception e) {
                // If decryption fails, display the encrypted data as-is
                result.append(data).append(" <br>");
            }
        } else {
            result.append("No data<br>");
        }
    }
}
