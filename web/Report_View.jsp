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
			
			
			<div id="page">
				<div class="container">
					<div class="row">
                                            <center>
						
							<section id="content" >
							  <div style="overflow: auto; margin-left: 788px;">
          <div id="a">
              <%
                  String dd=request.getParameter("rprt");
                  %>
          <form action="Report_View.jsp"><table cellspacing="10">
              <tr><td>Reports</td> <td>:</td><td><select name="rprt">
                         
                          
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
           
      </div>
		    
                        <%
                            //String dd=request.getParameter("rprt");
                            String ano=(String)session.getAttribute("A_Name1");
                            DbConnection db=new DbConnection();
                             ResultSet rs=null;
                            if(dd.equals("All"))
                            {
                                 rs=db.Select("SELECT * FROM user_report where Aadhar_No='"+ano+"'  ");
                            
                            }
                        else
                            {
                              rs=db.Select("SELECT * FROM user_report where Aadhar_No='"+ano+"' and Type='"+dd+"'");
                               
                            }
                            
                            %>
  
                            <div ><center>
                                <table border="1">
                                    <tr>
                                        <th style="width: 204px;">
                                           Date
                                        </th>
                                        <th style="width: 204px;">
                                        Hospital Name
                                        </th>
                                        
                                        <th style="width: 204px;">
                                           Description
                                        </th >
                                       
                                        <th style="width: 204px;">
                                           Image
                                        </th>
                                    </tr>
                                    <%
                            int i1=1;
                            while(rs.next())
                            {
                              %>
                              <tr>
                                  <td><%=rs.getString("Date")%></td>
                                   
                                      <td><%=rs.getString("H_Care")%></td>
                                     
                                      <td><%=rs.getString("Desc")%></td>
                                        <td>  <a href="newjsp.jsp?name=<%=rs.getString("S_No")%>" target="_top"><img src="newjsp.jsp?name=<%=rs.getString("S_No")%>" style="width: 200px;height: 150px"></a></td>
                              </tr>
                              <%
                                
                            }
                            
                            %>
  </table>  
								
							</section>
                                            </center>   
						
					</div>

				</div>	
			</div>

			<!-- Footer -->
			
			
		</div>
	</body>
</html>