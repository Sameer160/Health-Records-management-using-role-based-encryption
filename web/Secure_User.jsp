
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
    </head>
    <style>
        td{
            border: 1px solid black;
            text-align: center;
        }
    </style>
    <body>

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
                            <a class="nav-link" href="Admin_Home.jsp">Home</a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link" href="Non_Secure.jsp">Hospital Details </a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Secure_User.jsp">Patient Details</a>
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


        <%
            String name = (String) session.getAttribute("name");
            String pass = (String) session.getAttribute("pass");
            session.setAttribute("name", name);
            session.setAttribute("pass", pass);
            System.out.println(name + "," + pass);
            if (name != null && pass != null) {
                if (name.equals("admin") && pass.equals("admin")) {
        %>
        <div id="wrapper">
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

            <div id="page">
                <div class="container">
                    <div class="row">
                        <center>

                            <section id="content" >
                                <form>
                                    <div>
                                        <label for="adn">Aadhaar ID:</label>
                                        <input type="text" id="adn" name="adn" style="width: 204px;" required>
                                    </div>
                                    <br>
                                    <div>
                                        <input type="submit" value="SEARCH">
                                    </div>
                                </form>

                                </div><br>
                                <table  border="1" style="width: 100%; margin-right: 30px;">
                                    <tr style="background-color: lightskyblue;color: white">
                                        <td style="font-weight: bold">Profile Image</td>
                                        <td style="font-weight: bold">Aadhar ID</td>
                                        <td style="font-weight: bold">Name</td>
                                        <td style="font-weight: bold">Gender</td>
                                        <td style="font-weight: bold">Date of Birth</td>
                                        <td style="font-weight: bold">Blood Group</td>
                                        <td style="font-weight: bold">Address</td>
                                        <td style="font-weight: bold">city</td>
                                        <td style="font-weight: bold">Pin code</td>
                                        <td style="font-weight: bold">Contact No</td>
                                        <td style="font-weight: bold">Delete</td>
                                    </tr>  
                                    <%                                        try {
                                            String adn = request.getParameter("adn");

                                            if (adn != null) {

                                                //String aname=request.getParameter("A_Name"); 
                                                String A_Name = "", U_Name = "", Gender = "", date = "", BG = "", addr = "", city = "", pin = "", con = "";
                                                DbConnection db = new DbConnection();

                                                String query1 = "SELECT * FROM user_registration where A_Name='" + adn + "'  ";
                                                ResultSet rf = db.Select(query1);
                                                while (rf.next()) {
                                    %>

                                    <tr>
                                        <td><img src="newjsp1.jsp?name=<%=rf.getString("A_Name")%>" style="width: 200px;height: 150px"></td>
                                        <td><%=rf.getString("A_Name")%></td>
                                        <td><%=rf.getString("U_Name")%></td>
                                        <td><%=rf.getString("Gender")%></td>
                                        <td><%=rf.getString("date")%></td>
                                        <td><%=rf.getString("BG")%></td> 
                                        <td><%=rf.getString("addr")%></td>
                                        <td><%=rf.getString("city")%></td> 
                                        <td><%=rf.getString("pin")%></td>
                                        <td><%=rf.getString("con")%></td>
                                        <td><a href="del_patient.jsp?id1=<%=rf.getString("A_Name")%>">Remove</a></td>
                                    </tr>


                                    <%
                                        }

                                    } else {
                                        String A_Name = "", U_Name = "", Gender = "", date = "", BG = "", addr = "", city = "", pin = "", con = "";
                                        DbConnection db = new DbConnection();

                                        String query2 = "SELECT * FROM user_registration";
                                        ResultSet rf = db.Select(query2);
                                        while (rf.next()) {
                                    %>

                                    <tr>
                                        <td><img src="newjsp1.jsp?name=<%=rf.getString("A_Name")%>" style="width: 200px;height: 150px"></td>
                                        <td><%=rf.getString("A_Name")%></td>
                                        <td><%=rf.getString("U_Name")%></td>
                                        <td><%=rf.getString("Gender")%></td>
                                        <td><%=rf.getString("date")%></td>
                                        <td><%=rf.getString("BG")%></td> 
                                        <td><%=rf.getString("addr")%></td>
                                        <td><%=rf.getString("city")%></td> 
                                        <td><%=rf.getString("pin")%></td>
                                        <td><%=rf.getString("con")%></td>
                                        <td><a href="del_patient.jsp?id1=<%=rf.getString("A_Name")%>">Remove</a></td>

                                    </tr>


                                    <%
                                                }

                                            }
                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }
                                    %>

                                </table></center>


                    </div>
                    <%
                            } else {

                                session.setAttribute("msg", "Session out please login");
                                response.sendRedirect("admin.jsp");

                            }
                        } else {

                            session.setAttribute("msg", "Session out please login");
                            response.sendRedirect("admin.jsp");

                        }
                    %>


                    </section>
                    </center>   

                </div>

            </div>	






    </body>
</html>
