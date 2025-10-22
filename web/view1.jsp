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
        <title>Aadher Card Base Health Records</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
        <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        <script src="js/init.js"></script>
        <link rel="stylesheet" href="css/datepicker.css" type="text/css" />
        <link rel="stylesheet" media="screen" type="text/css" href="css/layout.css" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/datepicker.js"></script>
        <script type="text/javascript" src="js/eye.js"></script>
        <script type="text/javascript" src="js/utils.js"></script>
        <script type="text/javascript" src="js/layout.js?ver=1.0.2"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        </noscript>
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
        
        <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                       session.removeAttribute("msg");
                  }
                
                 
                  %>
    </head>
    <body class="homepage">
        <div id="wrapper">

            <!-- Header -->
            <div id="header">
                <div class="container"> 

                    <!-- Logo -->
                    <div id="logo">
						<h1><a href="#">Aadhar Card Based Health Records Monitoring System</a></h1>						

                    </div>

                    <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li><a href="Provider_Home.jsp">Home</a></li>
                            <li><a href="User_Register.jsp">User Register</a></li>
                            <li class="active"><a href="Partner.jsp">Patient Medical</a></li>
                            <li><a href="User_Phr1.jsp">Add Patient Details</a></li>
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /Header -->

            <div id="page">
                <div class="container">
                    <div class="row">
                        <center>

                            <section id="content">

                                <%
                                    String name1 = "";
                                    DbConnection db = new DbConnection();
                                    String A_Name = (String) session.getAttribute("A_Name");
                                    String jh;

                                    

                                    if (A_Name != null) {
                                        session.setAttribute("A_Name", A_Name);
                                        ResultSet rf = db.Select("Select * from user_registration where id='" + A_Name + "' ");
                                        if (rf.next()) {
                                            A_Name = rf.getString("A_Name");
                                        }
                                        session.setAttribute("A_Name1", A_Name);
                                        //String aname=request.getParameter("A_Name"); 
                                        String Image = "", U_Name = "", Gender = "", date = "", BG = "", con = "", addr = "", FImage = "";

                                        String str = "select * from user_registration where A_Name='" + A_Name + "'";
                                        ResultSet rs = db.Select(str);
                                        if (rs.next()) {
                                %>
                                <img src="servlet_1_1.jsp?name=<%=rs.getString("A_Name")%>" style="width: 100px; height: 100px; margin-left: -1200px; margin-top: 30px;">

                                <div style="font-size: larger; margin-left: -20px; margin-top: -130px;">
                                    <center>           
                                        <table cellspacing="15" style="margin-left: -708px;">
                                            <tr>



                                            <tr><td style="font-weight: bold">Aadhar ID</td><td>:</td><td><%=rs.getString("A_Name")%></td></tr>
                                            <tr><td style="font-weight: bold">User Identification ID</td><td>:</td><td><%=rs.getString("id")%></td></tr>

                                            <tr><td style="font-weight: bold">Name</td><td>:</td><td>     <%=rs.getString("U_Name")%></td></tr>
                                            <tr><td style="font-weight: bold">Gender</td><td>:</td><td>   <%=rs.getString("Gender")%></td></tr>
                                            <tr><td style="font-weight: bold">Date of Birth</td><td>:</td><td><%=rs.getString("date")%></td></tr>
                                            <tr><td style="font-weight: bold">Blood Group</td><td>:</td><td><%=rs.getString("BG")%></td></tr>
                                        </table>
                                    </center>
                                </div>
                                <%
                                    name1 = rs.getString("U_Name");
                                %>


                                <%
                                        }

                                    }
                                %>

                                <div style="overflow: auto; margin-left: 600px;margin-top: -180px;">
                                    <div id="a">
                                        <form action="Report_View.jsp"><table cellspacing="10">
                                                <tr><td  style="font-weight: bold">Reports</td> <td>:</td><td><select name="rprt">
                                                            <option>All</option>
                                                            <option>Scan</option>
                                                            <option>X-Ray</option>
                                                            <option>ECG</option>
                                                            <option>TS</option>
                                                            <option>Others</option>


                                                        </select></td><td><input type="submit" value="View"></td></tr>
                                            </table>
                                        </form>
                                    </div>
                                    <div id="b">
                                        <form action="Report_View1.jsp"><table cellspacing="10">
                                                <tr><td  style="font-weight: bold">Allergies</td> <td><input type="submit" value="View"></td></tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                                <%
                                    Date ddate = new Date();
                                    Date dd = new Date();
                                    SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd");
                                    String ff = "SELECT distinct(inputDate) FROM user_phr_details where inputDate in (select min(inputDate) from user_phr_details)";
                                    ResultSet fd = db.Select(ff);
                                    if (fd.next()) {
                                        ddate = fd.getTimestamp("inputDate");
                                    }
                                    SimpleDateFormat std11 = new SimpleDateFormat("yyyy-MM-dd");

                                %>

                                <form>
                                    <div style="margin-left: 600px; margin-top: 15px;">
                                        <table cellspacing="10">  <tr> <td  style="font-weight: bold"> <p>Search </p> </td></tr>
                                            <tr><td  style="font-weight: bold">From </td><td>:</td><td>
                                                    <input type="text" value="<%=std11.format(ddate)%>" class="inputDate" id="inputDate" readonly name="date" style="width: 204px;" required></td>

                                            <pre><script>
                                                $('#inputDate').DatePicker({
                                                    format: 'yyyy-MM-dd',
                                                    date: $('#inputDate').val(),
                                                    current: $('#inputDate').val(),
                                                    starts: 1,
                                                    position: 'r',
                                                    maxDate: "+1D",
                                                    onBeforeShow: function() {
                                                        $('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
                                                    },
                                                    onChange: function(formated, dates) {
                                                        $('#inputDate').val(formated);
                                                        if ($('#closeOnSelect input').attr('checked')) {
                                                            $('#inputDate').DatePickerHide();
                                                        }
                                                    }
                                                });
   </script></pre>
                                            <td  style="font-weight: bold">To </td><td>:</td><td>
                                                <input type="text" value="<%=std.format(dd)%>" class="inputDate2" readonly id="inputDate2" name="date2" style="width: 204px;" required></td>
                                            <pre><script>
                                                $('#inputDate2').DatePicker({
                                                    format: 'yyyy-MM-dd',
                                                    date: $('#inputDate2').val(),
                                                    current: $('#inputDate2').val(),
                                                    starts: 1,
                                                    position: 'r',
                                                    maxDate: "+1D",
                                                    onBeforeShow: function() {
                                                        $('#inputDate2').DatePickerSetDate($('#inputDate2').val(), true);
                                                    },
                                                    onChange: function(formated, dates) {
                                                        $('#inputDate2').val(formated);
                                                        if ($('#closeOnSelect input').attr('checked')) {
                                                            $('#inputDate2').DatePickerHide();
                                                        }
                                                    }
                                                });
                </script></pre>
                                            <td><input type="submit" value="  OK  "></td></tr></table>

                                    </div></form>        
                                <br>
                                </br>
                                <div style=" margin-left: -64px; margin-top: 60px; width: 1237px;">
                                    <table  style="width: 1345px;border: 2px solid black">
                                        <tr style="background-color:rgb( 222, 177, 27 );color: white"><th style="font-weight: bold;"><center>Date</center></th><th style="font-weight: bold;"><center>Hospital Name</center></th>
                                        <th style="font-weight: bold;"><center>Consultant Doctor</center></th><th style="font-weight: bold;"><center>Height</center></th><th style="font-weight: bold;"><center>Weight</center></th><th style="font-weight: bold;"> <center>BP Level </center></th>
                                        <th colspan="2" style="font-weight: bold;"><center>Sugar Level<br>Before Food||After Food</center></th>
                                        <th style="font-weight: bold;"><center>Complaint</center></th><th style="font-weight: bold;"><center>Surgery</center></th>
                                        <th style="font-weight: bold;"><center>Treatment given</center></th><th style="font-weight: bold;"><center>Treatment days</center></th><th style="font-weight: bold;"><center>Suggested Medicines</center></th>
                                        </tr>  
                                        <%
                                            String inputdate = request.getParameter("A_Name");
                                            String date = request.getParameter("date");
                                            String date2 = request.getParameter("date2");

                                            if (date == null) {
                                                date = "2008-06-17";
                                                date2 = "2020-02-04";
                                            }
                                            if (A_Name != null) {


                                                //String aname=request.getParameter("A_Name"); 
                                                String U_Name = "", U_Id = "", Height = "", Weight = "", BB = "", bsugar = "", asugar = "", comp = "", Surgery = "", treat_given = "", treat_days = "", sugg = "";

                                                String str = "SELECT * FROM user_phr_details where inputDate>=CAST('" + date + "' as date) and  inputDate<=CAST('" + date2 + "' as date) andAadhar _No='" + A_Name + "'";
                                                System.out.println(str);
                                                ResultSet rs = db.Select(str);
                                                while (rs.next()) {
                                        %>

                                        <tr style="border: 2px solid black"><td><%=rs.getString("inputDate")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("U_Name")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("U_Id")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Height")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Weight")%></td>
                                            <td style="border: 2px solid black;color:black" > <%=rs.getString("BB")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("bsugar")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("asugar")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("comp")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("Surgery")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("treat_given")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("treat_days")%></td>
                                            <td style="border: 2px solid black;color:black"> <%=rs.getString("sugg")%></td>
                                        </tr>
                                        <%
                                            } 
                                        %>
                                        
                                        <%
                                            }
                                        %>
                                    </table><br/><br/>
                                    
                            </section>
                        </center>   

                    </div>

                </div>	
            </div>

            <!-- Footer -->
            <div id="footer">
                <div class="container">

                </div>
            </div>

            <!-- Copyright -->
            <div id="copyright">
                <div class="container">
                    Design: <a href="#">TEMPLATED</a> Images: <a href="#">Unsplash</a> (<a href="#">CC0</a>)
                </div>
            </div>

        </div>
    </body>
</html>