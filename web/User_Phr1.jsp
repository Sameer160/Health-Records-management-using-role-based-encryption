<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<!DOCTYPE HTML>

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

                            <li class="nav-item ">
                                <a class="nav-link" href="Partner.jsp">Patient Medical</a>
                            </li>
                                <li class="nav-item active ">
                                <a class="nav-link" href="User_Phr1.jsp">Add Patient Details</a>
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
            <br>
            <br>
            <br>
         <div id="wrapper">
			
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
                                     
						
                                                
                                                
                                                <div class="container1">
             
                    <section id="content">
            <%
                                    String id=(String)session.getAttribute("P_Id");
                                    String name=(String)session.getAttribute("provider");
                                    session.setAttribute("P_Id",id);
                                    session.setAttribute("provider",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from provider_details where P_Name='"+id+"' and P_Name='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("H_Name");
                                    
             %>
		
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
                   
                         <center>
                 <form enctype="multipart/form-data"  action="checking1"   method="post" onsubmit="form_validation()">
                                  <a class="navbar-brand d-none d-lg-block"> VERIFICATION PROCESS</a> 
                                                            <br>
                              
                                                            
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="AADHAR ID">AADHAR ID </label>
                                        <input type="text" id="A_Name" name="P_Name">
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                                            
                                   <tr>
                                    <td class="input-group">
                                        <label for="OTP PASSWORD">OTP PASSWORD</label>
                                        <input type="password" value="" id="otp" name="otp">
                                        <div class="error"></div>
                                    </td>
                                </tr>                          
                                    <tr>
                                    <td class="input-group">
                                        <label for="PASSWORD">PASSWORD</label>
                                        <input type="password" value="" id="otp" name="password">
                                        <div class="error"></div>
                                    </td>
                                </tr>                          
                            </table>
                                                 
                           
                     <button type="submit" >Submit</button>
                                                             
                                   </form>  
                   
                          </section> 
                              </div>   
                  
                  
                  
                  <!-- <form enctype="multipart/form-data"  action="checking1"   method="post" onsubmit="form_validation()">
                                  <a class="navbar-brand d-none d-lg-block">
                            VERIFICATION PROCESS
                                
                            </a>
                                <br>
                                <!--<center> <br>  <br><br> <font face="Georgia" color="#0C6E69"><h2>VERIFICATION PROCESS</h2> </font><br><br>
                                      <center><table border="5">
                                          
                    <tr><td> <font face="Georgia" color="black">Aadhar ID :</font></td><td><input type="text" value="" id="A_Name" name="P_Name" onkeypress="return  number(event)" maxlength="12"></td></tr>
                    <tr></tr><tr></tr><br>
                     <tr><td> <font face="Georgia" color="black">OTP Password :</font></td><td><input type="password" value="" id="otp" name="otp"></td></tr>
                <tr><td> <font face="Georgia" color="black">Password :</font></td><td><input type="password" value="" id="otp" name="password"></td></tr>

                  
                    </table>
                                      <br><br>
                                      <input type="submit" value="Submit"></center>
                                        </form>   
  
								
							</section>
                                            </center> -->  
						<%
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("Provider.jsp");
                                    }
                                        %>
					</div>

				</div>	
			</div>

			

			
			
		
	</body>
</html>