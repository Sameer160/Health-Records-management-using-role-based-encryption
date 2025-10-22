<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Aadhar Card Based Health Records</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/owl.carousel.min.css" rel="stylesheet">
        <link href="css/owl.theme.default.min.css" rel="stylesheet">
        <link href="css/templatemo-medic-care.css" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
            <div class="container">
                <a class="navbar-brand mx-auto d-lg-none" href="index.html">
                    Aadhar Card Based Health Records
                    <strong class="d-block">Health Specialist</strong>
                </a>
                <a class="navbar-brand d-none d-lg-block" href="home.jsp">
                    Aadhar Card
                    <strong class="d-block">Based Health Records Monitoring System</strong>
                </a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Provider_Home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="User_Register.jsp">User Register</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="Partner.jsp">Patient Medical</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="User_Phr1.jsp">Add Patient Details</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="wrapper">
            <div id="page">
                <div class="container">
                    <div class="row">
                        <center>
                            <section id="content">
                                <h2>Patient Health Records</h2>
                                <div style="margin-top: 60px;">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" style="width:100%;">
                                            <tr style="background-color: lightskyblue; color: white">
                                                <th>Hospital Name</th>
                                                <th>Doctor Name</th>
                                                <th>Height</th>
                                                <th>Weight</th>
                                                <th>Blood Pressure</th>
                                                <th>Blood Sugar (Before)</th>
                                                <th>Blood Sugar (After)</th>
                                                <th>Complaint</th>
                                                <th>Surgery</th>
                                                <th>Treatment Given</th>
                                                <th>Treatment Days</th>
                                                <th>Suggested Medicine</th>
                                                <th>Allergies</th>
                                                <th>Aadhar No</th>
                                                <th>Comments</th>
                                            </tr>
                                            <tr>
                                                <td><%= session.getAttribute("U_Name") %></td>
                                                <td><%= session.getAttribute("User_ID")%></td>
                                                <td><%= session.getAttribute("Height")%></td>
                                                <td><%= session.getAttribute("Weight")%></td>
                                                <td><%= session.getAttribute("Blood_Pressure")%></td>
                                                <td><%= session.getAttribute("Blood_Sugar_Before")%></td>
                                                <td><%= session.getAttribute("Blood_Sugar_After")%></td>
                                                <td><%= session.getAttribute("Comprehensive_Info")%></td>
                                                <td><%= session.getAttribute("Surgery")%></td>
                                                <td><%= session.getAttribute("Treatment_Given")%></td>
                                                <td><%= session.getAttribute("Treatment_Days")%></td>
                                                <td><%= session.getAttribute("Suggestions")%></td>
                                                <td><%= session.getAttribute("Allergies")%></td>
                                                <td><%= session.getAttribute("Aadhar_No")%></td>
                                                <td><%= session.getAttribute("Comments")%></td>

                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </section>
                        </center>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
