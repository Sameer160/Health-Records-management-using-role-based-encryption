
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
<!--

TemplateMo 566 Aadhar Card Based Health Records

https://templatemo.com/tm-566-medic-care

-->
        
        <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {
        %>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                       session.removeAttribute("msg");
                  }
                
                 
                  %>
    </head>
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
                           
                            <li class="nav-item  ">
                                <a class="nav-link" href="Provider_Home.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="User_Register.jsp">User Register </a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="Partner.jsp">Patient Medical</a>
                            

                           <li class="nav-item ">
                                <a class="nav-link" href="User_Phr1.jsp">Add Patient Details</a>
                            </li>


                           

                             <li class="nav-item ">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>

                             
                          
                        </ul>
                    </div>

                </div>
            </nav>
            <br>
            <br>
            <br>  
        
        <div id="wrapper">

            <!-- Header -->
            <div id="header">
               
            <!-- /Header -->

            <div id="page">
                <div class="container">
                    <div class="row">
                        <center>

                            <section id="content">

                                <br>
                                </br>
                                <div style=" margin-left: -64px; margin-top: 60px; width: 1237px;">
                                    <table  style="width: 600px;border: 2px solid black">
                                        <tr style="background-color:lightskyblue;color: white"><th style="font-weight: bold;"><center>Date</center></th><th style="font-weight: bold;"><center>Hospital Name</center></th>
                                        <th style="font-weight: bold;"><center>Consultant Doctor</center></th><th style="font-weight: bold;"><center>Height</center></th><th style="font-weight: bold;"><center>Weight</center></th><th style="font-weight: bold;"> <center>BP Level </center></th>
                                  <%--      <th colspan="2" style="font-weight: bold;"><center>Sugar Level<br>Before Food||After Food</center></th>  
                                        <th style="font-weight: bold;"><center>Complaint</center></th>  --%> <th style="font-weight: bold;"><center>Surgery</center></th> 
                                        <th style="font-weight: bold;"><center>Treatment given</center></th><th style="font-weight: bold;"><center>Treatment days</center></th><th style="font-weight: bold;"><center>Suggested Medicines</center></th>
                                        <th style="font-weight: bold;"><center>Options</center></th>
                                          </tr>  
                                        <%
                                            String inputdate = request.getParameter("id");
                             DbConnection db=new DbConnection();


                                                //String aname=request.getParameter("A_Name"); 
                                                String U_Name = "", U_Id = "", Height = "", Weight = "", BB = "", bsugar = "", asugar = "", comp = "", Surgery = "", treat_given = "", treat_days = "", sugg = "";

                                                String str = "SELECT * FROM user_phr_details where  Aadhar_No='" + inputdate + "'";
                                                System.out.println(str);
                                                ResultSet rs = db.Select(str);
                                                while (rs.next()) {
                                        %>
                                        <form action="mail1" method="POST">
                                        <tr style="border: 2px solid black"><td><%=rs.getString("inputDate")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("U_Name")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("U_Id")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Height")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Weight")%></td>
                                            <td style="border: 2px solid black;color:black" > <%=rs.getString("BB")%></td>
                                          <%--  <td style="border: 2px solid black;color:black"> <%=rs.getString("bsugar")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("asugar")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("comp")%></td> --%>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Surgery")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("treat_given")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("treat_days")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("sugg")%></td>
                                            <input type="hidden" name="id1" id="id1" value="<%=rs.getInt("id")%>">
                                            <td style="border: 2px solid black;color:black">
                                             
                                            </td>
                                        
                                        
                                        </tr>
                                        </form>
                                        <%
                                            } 
                                        %>
                                        
                                       
                                    </table></div><br/><br/>
                                    
                            </section>
                        </center>   

                    </div>

                </div>	
            </div>

          

           

        </div>
    </body>
</html>