
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
           String otp=request.getParameter("otp");
           DbConnection db=new DbConnection();
           ResultSet rs=db.Select("select * from user_phr_details where id='"+id+"' and otp='"+otp+"'");
           if(rs.next())
           {
               session.setAttribute("msg","Verified");
               response.sendRedirect("view_2.jsp?id="+rs.getString("Aadhar_No"));
           }
           else
           {
               session.setAttribute("msg","invalid otp");
               response.sendRedirect("view.jsp");
           }
            %>
    </body>
</html>
