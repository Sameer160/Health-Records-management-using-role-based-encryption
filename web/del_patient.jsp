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
            String id=request.getParameter("id1");
            DbConnection db=new DbConnection();
            db.Insert("delete from user_registration where A_Name='"+id+"'");
            session.setAttribute("msg", "Deleted Successfully");
            response.sendRedirect("Secure_User.jsp");
            
            %>
    </body>
</html>
