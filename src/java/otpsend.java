import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64; // Import Base64 from Apache Commons Codec

@WebServlet("/otpsend")
public class otpsend extends HttpServlet {
    // Twilio credentials
    private static final String TWILIO_ACCOUNT_SID = "ACa2370aeb663f9c8c5e8073486a73ff67";
    private static final String TWILIO_AUTH_TOKEN = "ad9d006670c4291bd81e2aab6c24c2da";
    private static final String TWILIO_PHONE_NUMBER = "7358670712";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the recipient's mobile number
        String recipientNumber = request.getParameter("mobileNumber");
        
        // Generate a random OTP (4 digits)
        String otp = generateOTP();
        
        // Send the OTP message
        sendOTPMessage(recipientNumber, otp);
        
        // Forward the OTP to the verification page
        request.setAttribute("otp", otp);
        request.getRequestDispatcher("verifyotp.jsp").forward(request, response);
    }
    
    private String generateOTP() {
        // Generate a 4-digit OTP
        Random random = new Random();
        int otp = 1000 + random.nextInt(9000);
        return String.valueOf(otp);
    }
    
    private void sendOTPMessage(String recipientNumber, String otp) throws IOException {
        // Construct the message body
        String messageBody = "Your OTP is: " + otp;
        
        // Construct the URL for Twilio API
        String twilioUrl = "https://api.twilio.com/2010-04-01/Accounts/" + TWILIO_ACCOUNT_SID + "/Messages.json";
        
        // Create HttpURLConnection
        URL url = new URL(twilioUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setDoOutput(true);
        
        // Set Twilio credentials
        String credentials = TWILIO_ACCOUNT_SID + ":" + TWILIO_AUTH_TOKEN;
        String base64Credentials = new String(Base64.encodeBase64(credentials.getBytes())); // Encode credentials using Base64
        connection.setRequestProperty("Authorization", "Basic " + base64Credentials);
        
        // Set message parameters
        String parameters = "From=" + TWILIO_PHONE_NUMBER + "&To=" + recipientNumber + "&Body=" + messageBody;
        
        // Write message parameters to connection output stream
        OutputStreamWriter writer = new OutputStreamWriter(connection.getOutputStream());
        writer.write(parameters);
        writer.flush();
        
        // Get response code
        int responseCode = connection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            System.out.println("OTP message sent successfully!");
        } else {
            System.err.println("Failed to send OTP message! Response code: " + responseCode);
        }
    }
}
