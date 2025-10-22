
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<!DOCTYPE HTML>
<!--
        Synchronous by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Aadhar Card Based Health Records</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/owl.carousel.min.css" rel="stylesheet">

        <link href="css/owl.theme.default.min.css" rel="stylesheet">

        <link href="css/templatemo-medic-care.css" rel="stylesheet">

        <link rel="stylesheet" href="css/style.css">
        <!--
        
        TemplateMo 566 Aadhar Card Based Health Records
        
        https://templatemo.com/tm-566-medic-care
        
        -->
    </head>
    <script>
        function number(e)
        {
            var unicode = e.charCode ? e.charCode : e.keyCode
            if (unicode !== 8)
            {
                if (unicode < 48 || unicode > 57)
                    return false
            }
        }
    </script>

    <body id="top">
        <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
            <div class="container">
                <a class="navbar-brand mx-auto d-lg-none" href="index.html">
                    Aadhar Card Based Health Records
                    <strong class="d-block">Health Specialist</strong>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand d-none d-lg-block" href="home.jsp">
                    Aadhar  Card
                    <strong class="d-block">Based Health Records Monitoring System</strong>
                </a> 
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto">

                        <li class="nav-item active">
                            <a class="nav-link" href="User_Home.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Partner1.jsp">Medical Details</a>
                        </li>                            

                        <li class="nav-item">
                            <a class="nav-link" href="query.jsp"> Query To Researcher</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="home.jsp">Logout</a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
        <br>
        <br>
        <br>    




        <%
                String msg = (String) session.getAttribute("msg");
                if (msg != null) {%>

        <script>
                          var ss = '<%=msg%>';
                          alert(ss);
        </script>

        <%
                session.removeAttribute("msg");
            }
        %>

        <br>     
        <br>
        <br>
        <br>
        <br>     




        <div id="wrapper">



            <div id="page">
                <div class="container">

                    <center>

                        <section id="content">



                            <form action="New_Partner" method="get" onsubmit="">

                                <br>

                                <a class="navbar-brand d-none d-lg-block"> PATIENT VIEW </a>                                 
                                <table>
                                    <tr>
                                        <td class="input-group">
                                            <label for="User AAdhaar">USER AADHAAR</label>
                                            <input type="text"  name="A_Name" id="aname" onkeypress="return number(event)" maxlength="12" required="">
                                            <div class="error"></div>
                                        </td>
                                    </tr>                                 

                                    <tr>
                                        <td class="input-group">
                                            <label for="PASSWORD">PASSWORD</label>
                                            <input type="password" name="pw" id="pw"required>
                                            <div class="error"></div>
                                        </td>
                                    </tr>                          

                                </table>  

                                <button type="submit">Submit</button>
                            </form>
                        </section>                
                </div> 	








                <!-- <section id="content" >
                  <form action="partner" method="get" onsubmit="">
<center>
 <br><br>
  <a class="navbar-brand d-none d-lg-block">
PATIENT VIEW
 
</a> 
 <br>
                <!--<b> <font face="Georgia" color="#0C6E69"><h4 align="center">PATIENT VIEW</h4></font></b><br><br>
                
                <tr> <td><font face="Georgia" color="black">UserAAdhaar  ID</font></td><td>:</td><td><input type="text"  name="A_Name" id="aname" style="width: 204px;" onkeypress="return number(event)" maxlength="12" required=""></td></tr><br/>
                <tr> <td><font face="Georgia" color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</font></td><td>:</td><td><input type="password" name="pw" id="pw" style="width: 204px;" required></td></tr><br/>
                  
                                              
                    <tr><td> <input type="submit" value="SUBMIT"></td></tr>
                   
            </center></form> 
                                 <div style="overflow: auto;margin-left: 500px"><table border="1">
             
<tr>






                   </table>		
                                        </section>-->
                </center>   

            </div>

        </div>	
    </div>




</body>
</html>