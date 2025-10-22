

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
       <%
           String username=(String)session.getAttribute("user_u");
           System.out.println(username);
           if(username!="")
           {
       %>
       <%
           }
       %>
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
                           
                            <li class="nav-item">
                                <a class="nav-link" href="research_home.jsp">Home</a>
                            </li> 
                            <li class="nav-item ">
                                <a class="nav-link " href="prediction.jsp">Diseases Prediction</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="query1.jsp">View Patient Query</a>
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
            
		<div id="wrapper">
			
			
			
			    <div id="page">
                <div class="container">
                  
                        <center>

                            <section id="content" >
                                <form action="prediction" method="post" onsubmit="return Validate_Data(this)">
                                    <center>
                                        <a class="navbar-brand d-none d-lg-block">
                             RESEARCHER REPLAY TO PATIENT
                                
                            </a>  
                                        <!--<font face="Georgia" color="#0C6E69"><h4>Researcher Replay to Patient</h4></font><br>-->
                                        <center><div style=" margin-left: -64px; margin-top: 40px; width: 1237px;"></center>
                                    <table  style="width: 600px;border: 2px solid black"><tr>
                                        <tr style="background-color:lightgreen ;color: Black">
                                       <th style="font-weight: bold;"><center>Patient Name</center></th>
                                       <th style="font-weight: bold;"><center>Query</center></th>
                                       <th style="font-weight: bold;"><center>Status</center></th>
                                       <th style="font-weight: bold;"><center>Answer</center></th>
                                  <%
                    DbConnection db = new DbConnection();
            ResultSet rs = db.Select("select * from rply where r_name='"+session.getAttribute("uname")+"'");
            while (rs.next()) {
                 %>
                 <tr>
                      <td style="border: 2px solid black;color:black"><%=rs.getString("p_name")%></td>
                     <td style="border: 2px solid black;color:black"><%=rs.getString("query")%></td>
                       <td>
      
               <%
                
                        if(rs.getString("status").equals("1"))
                            
                  {
               %>
                    
               Replay Done
                      
                  <%
                  }
                  else
                  {
                  %>
                         <a href="quy2.jsp?sno=<%=rs.getInt("sno")%>">Wait For Replay</a></td>
                           <%
                  }
                       %>
                       
                       <td>
                           <font style="border: 0px solid black;color:black"><%=rs.getString("ans")%></font>
                       </td>
                      
                         
                 </tr>
                     
                 <%
            }%>
                                       </tr>
                                    </table>
                                        </div>
                                        
                                             </center>
                                </form>
                                <%
                                    String msg = (String) session.getAttribute("msg");
                                    if (msg != null) {
                                %>
                                <script>alert('<%=msg%>');</script>
                                <%
                                        session.removeAttribute("msg");
                                    }
                                %>		

                            </section>
                        </center>   

                    </div>

                </div>	

			
			
		
	</body>
</html>