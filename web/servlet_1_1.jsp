
<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<% 
String uid=request.getParameter("name");
//String connectionURL = "jdbc:mysql://node157559-aadharpro.j.layershift.co.uk/healthcare";
String connectionURL = "jdbc:mysql://localhost:3306/healthcare";

ResultSet rs = null;
PreparedStatement psmnt = null;
InputStream sImage;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(connectionURL, "root", "admin");
System.out.println("SELECT Image FROM user_registration WHERE A_Name ='"+uid+"'");
psmnt = con.prepareStatement("SELECT Image FROM user_registration WHERE A_Name ='"+uid+"'");
rs = psmnt.executeQuery();
while(rs.next()) {
byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/jpeg");
while((size=sImage.read(bytearray))!= -1 ){
response.getOutputStream().write(bytearray,0,size);
}
}
%>