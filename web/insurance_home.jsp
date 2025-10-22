


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
                           
                            <li class="nav-item active ">
                                <a class="nav-link" href="research_home.jsp">Home</a>
                            </li>
                            
                             <li class="nav-item ">
                                <a class="nav-link" href="apply.jsp">Apply Insurances</a>
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
			
			<!-- Header -->
			<div id="header">
				<div class="container"> 
					
					<nav id="nav">
						<ul>
							<!--<li class="active"><a href="research_home.jsp">Home</a></li>
							<li><a href="apply.jsp">Apply Insurances</a></li>
                                                        <li><a href="home.jsp">Logout</a></li>-->

						</ul>
					</nav>
				</div>
			</div>
			<!-- /Header -->
			
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
                                                            <h1><font face="Algerian" color="#0C6E69">WELCOME TO <%=name%></font></h1>
                                                            <br>
								 <a><img src="images/slide-four.jpg" title="logo" style="width: 1000px; margin-left: 75px; height: 500px;"/></a>                 
								
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

			
			
		</div>
	</body>
</html>