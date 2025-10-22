import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/otpgenerate")
public class otpgenerate extends HttpServlet {
    // Twilio credentials
    private static final String ACCOUNT_SID = "ACa2370aeb663f9c8c5e8073486a73ff67";
    private static final String AUTH_TOKEN = "ad9d006670c4291bd81e2aab6c24c2da";
    private static final String SENDER_NUMBER = "+7358670712"; // Your Twilio phone number
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the mobile number from the request
        String recipientNumber = request.getParameter("mobileNumber");
        
        // Generate a random OTP (4 digits)
        String otp = generateOTP();
        
        // Send the OTP via SMS
        sendOTPviaSMS(otp, recipientNumber);
        
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
    
    private void sendOTPviaSMS(String otp, String recipientNumber) {
        try {
            // Initialize Twilio client
            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
            
            // Send OTP message
            Message message = Message.creator(
                    new PhoneNumber(recipientNumber),
                    new PhoneNumber(SENDER_NUMBER),
                    "Your OTP is: " + otp)
                .create();
            
            // Check if message was successfully created
            if (message.getStatus() == Message.Status.FAILED) {
                System.err.println("Failed to send OTP message! Error: " + message.getErrorMessage());
            } else {
                System.out.println("OTP message sent successfully! SID: " + message.getSid());
            }
        } catch (Exception e) {
            System.err.println("Failed to send OTP message! Exception: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
