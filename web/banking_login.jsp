

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
                           
                            <li class="nav-item ">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link" href="index.jsp">Hospital </a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="banking.jsp">Banking</a>
                            </li>

                          

                            <li class="nav-item">
                                <a class="nav-link" href="insurance.jsp">Insurance</a>
                            </li>

                            
                             <li class="nav-item">
                                <a class="nav-link" href="researcher.jsp">Researcher</a>
                            </li>
                          <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">About</a>
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
        <div id="wrapper">
			
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
                                            <center>
						
                                                
                                                
                                                <div class="container1">
             
                    <section id="content">
                                                
                                                
						
							 <form action="banking" method="post" onsubmit="return Validate_Data(this)">
                                  <a class="navbar-brand d-none d-lg-block">  BANKING LOGIN</a> 
                                                            <br>
                              
                                                            
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="Username">USERNAME</label>
                                        <input type="text" value="" id="hname" name="user">
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                                            
                                   <tr>
                                    <td class="input-group">
                                        <label for="PASSWORD">PASSWORD</label>
                                       <input type="password" value="" id="pname" name="pass">
                                        <div class="error"></div>
                                    </td>
                                </tr>                          
                                                        
                            </table>
                                                               </section> 
                                       
                                            </center>
                                                     
                        <button type="submit">LOGIN</button>
                            
                    
                
                                                             
                                                </div>
                    
                    
                    
                    
			
			<!-- /Header -->
			
			   <!-- <div id="page">
                <div class="container">
                  
                        <center>

                            <section id="content" >
                                <form action="banking" method="post" onsubmit="return Validate_Data(this)">
                                      <a class="navbar-brand d-none d-lg-block">
                              BANKING LOGIN
                                
                            </a>  
                                    <!--<center><font face="Georgia" color="#0C6E69"><h4>User LOGIN</h4></font><br>
                                        <br>

                                        <center><table border="3">
                                            <tr><td><font face="Georgia" color="black"> Username</font></td><td>:</td><td><input type="text" value="" id="hname" name="user" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black"> Password</font></td><td>:</td><td><input type="password" value="" id="pname" name="pass" style="width: 204px;" ></td></tr>
                                            

                                        </table>

                                       <br>
                                        <input type="submit" value="LOGIN">
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

                </div>-->

			
			
			
		</div>
	</body>
</html>