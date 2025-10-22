

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
            
		<%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                       session.invalidate();
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

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Hospital</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="banking.jsp">Banking</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href="home.jsp">
                              Aadhar  Card 
                                <strong class="d-block">Based Health Records Monitoring System</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href="insurance.jsp">Insurance</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="researcher.jsp">Researcher</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="User_Login.jsp">User</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin.jsp">Admin</a>
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
            <br>
            <br>
            <br>
		<div id="wrapper">
			
			<!-- Header -->
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
						<div class="12u">
							
                                                                   
                               <div class="container1">
                <center>
                  
                                                
                                  <section id="content" >
								<form action="Admin_Check" method="post" onsubmit="JavaScript:return AdminValidate(true);">
                                  <a class="navbar-brand d-none d-lg-block">
                              ADMIN LOGIN PAGE
                                
                            </a>                
						
                              
                                                            
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="ADMIN NAME">ADMIN NAME:</label>
                                        <input type="text" id="A_Name" name="A_Name">
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                                            
                                   <tr>
                                    <td class="input-group">
                                        <label for="PASSWORD">PASSWORD</label>
                                        <input type="password" id="A_Pass" name="A_Pass">
                                        <div class="error"></div>
                                    </td>
                                </tr>                          
                                                       
                            </table>  
                               </section>  
                     <button type="submit">Submit</button>
                                                             
                                                </div>                                        
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    <!--<center> <font face="Georgia" color="#0C6E69"> <h2>ADMIN LOGIN PAGE</h2></font> <br><br>-->
                                                                    <!--<center><br><table border="5">
                                          
                    <tr><td> <font face="Georgia" color="black"> ADMIN NAME :</td><td><input type="text" value="" id="A_Name" name="A_Name"></td></tr>
                    <tr></tr><tr></tr>
                    <tr><td><font face="Georgia" color="black">PASSWORD :</td><td><input type="password" value="" id="A_Pass" name="A_Pass"></td></tr>
                
                    </table>
                                      <br><br>
                                      <input type="submit" value="Submit"></center>-->
                                        </form>
                                        <script >
        function AdminValidate()
        {
            var ss = document.getElementById("A_Name").value;
            if (ss === "")
            {
                alert("User Name Can't be Empty");
                document.getElementById("A_Name").value.focus;
                return false;
            }
            var ss1 = document.getElementById("A_Pass").value;
            if (ss1 === "")
            {
                alert("Password Can't be Empty");
                return false;
            }
            return true;
        }
                                </script>
                                  
							</section>
						</div>
					</div>

				</div>	
			</div>


			

			<!-- Copyright -->
			
			
		</div>
	</body>
</html>