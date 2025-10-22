<%-- 
    Document   : verifyotp
    Created on : 16 Apr, 2024, 10:01:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
</head>
<body>
    <h2>Enter the OTP sent to your mobile number</h2>
    <form action="VerifyOTP" method="post">
        OTP: <input type="text" name="otp" required><br>
        <input type="submit" value="Verify OTP">
    </form>
</body>
</html>
