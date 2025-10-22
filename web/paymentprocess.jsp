

<!DOCTYPE HTML>
<!--
	Synchronous by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
           <meta http-equiv="refresh" content="5; url=paysucess.jsp" />
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
                                <a class="nav-link" href="banking_home.jsp">Home</a>
                            </li>

                            

                            
                             <li class="nav-item active">
                                <a class="nav-link" href="payment.jsp">Payment Process</a>
                            </li>
                          <li class="nav-item">
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
                                                 <%
            String name=(String)session.getAttribute("uname");
            if(name!="")
            {
        %>
        <%
            }
        %>
						
							<section id="content" >
                                                            <h1><font face="Algerian" color="#0C6E69" size="6px">WELCOME <%=name%></font></h1>
                                                            <br>
								<h1><font face="Algerian" color="blue" size="9px">Payment Process Ongoing.Dont click BackSpace</font></h1>
                                                                <br>
                                                                     <img src="468.GIF" height="100" width="100">
                                                          <p  style="color:black;font-size: large">Page will be redirect  5 seconds</p>                 
								
							</section>
                                            </center>   
						
					</div>

				</div>	
			</div>

			
			
	</body>
</html>