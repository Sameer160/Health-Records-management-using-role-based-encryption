<%-- 
    Document   : mobileotp
    Created on : 16 Apr, 2024, 10:00:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
</head>
<body>
    <h2>Enter your mobile number to receive OTP</h2>
    <form action="GenerateOTP" method="post">
        Mobile Number: <input type="text" name="mobileNumber" required><br>
        <input type="submit" value="Send OTP">
    </form>
</body>
</html>
