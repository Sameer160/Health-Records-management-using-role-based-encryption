
<%@page import="Connection.DbConnection"%>
<%@page import="org.apache.commons.lang.RandomStringUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //String id=(String)session.getAttribute("U_Id");
        String name=(String)session.getAttribute("email1");
        String otp=RandomStringUtils.randomAlphanumeric(6 );
        System.out.println("new Ot is \t"+otp);
        DbConnection cde=new DbConnection();
        System.out.println("update user_registration set otp='"+otp+"' where A_Name='"+name+"'");
        int yu=cde.Update("update user_registration set otp='"+otp+"' where A_Name='"+name+"'");        
        if(yu>0)
        {
         response.sendRedirect("logout.jsp");
        }
        else
        {
         response.sendRedirect("User_Phr.jsp");
        }
        %>
    </body>
</html>
