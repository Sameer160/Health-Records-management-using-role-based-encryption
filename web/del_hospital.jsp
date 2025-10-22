
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
            String id=request.getParameter("id2");
            DbConnection db=new DbConnection();
            db.Insert("delete from provider_details where UP_Name='"+id+"'");
            session.setAttribute("msg", "Deleted Successfully");
            response.sendRedirect("Non_Secure.jsp");
            
            %>
    </body>
</html>
