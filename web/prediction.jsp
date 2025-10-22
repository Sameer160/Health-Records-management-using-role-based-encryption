

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
        <%
            String name=(String) session.getAttribute("uname");
             String mail=(String) session.getAttribute("mail_id");
             if(name!="" && mail!="")
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
                            <li class="nav-item active">
                                <a class="nav-link " href="prediction.jsp">Diseases Prediction</a>
                            </li>
                            <li class="nav-item">
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
              <br>
            <br>
             <div id="wrapper">
			
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
                                            <center>
						
                                                
                                                
                                                <div class="container1">
             
                    <section id="content">
                                                
                                                
						
							 <form action="prediction" method="post" onsubmit="return Validate_Data(this)">
                                  <a class="navbar-brand d-none d-lg-block">DISEASES PREDICTION</a> 
                                                            <br>
                              
                                                            
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED NAME">RESEARCH ID</label>
                                        <input type="text" value="<%=name%>" id="hname" name="I_name">
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                        <tr>
                                    <td class="input-group">
                                        <label for="EMAIL ID">EMAIL ID</label>
                                       <input type="text" value="<%=mail%>" id="hname" name="Mail">
                                        <div class="error"></div>
                                    </td>
                                </tr>     
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED NAME">DISEASES NAME</label>
                                       <input type="text" value="" id="hname" name="D_Name">
                                        <div class="error"></div>
                                    </td>
                                </tr>     
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED NAME">SYMPTOMS 1</label>
                                        <input type="text" value="" id="hname" name="sympton_1">
                                        <div class="error"></div>
                                    </td>
                                </tr>     
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED NAME">SYMPTOMS 2</label>
                                        <input type="text" value="" id="pname" name="sympton_2">
                                        <div class="error"></div>
                                    </td>
                                </tr>     
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED NAME">SYMPTOMS 3</label>
                                        <input type="text" value="" id="pname" name="sympton_3">
                                        <div class="error"></div>
                                    </td>
                                </tr>     
                                
                                                         
                                                        
                            </table> 
                                                        
                               
                     <button type="submit">SUBMIT</button>
                         </form>                                     
                         </section>                         
                                                </div> 
            
            
            
            
            
		<!--<div id="wrapper">
			
			<!-- Header 
			
			
			    <div id="page">
                <div class="container">
                  
                        <center>

                            <section id="content" >
                                <form action="prediction" method="post" onsubmit="return Validate_Data(this)">
                                  <a class="navbar-brand d-none d-lg-block">
                              DISEASES PREDICTION
                                
                            </a>    
                                   <!-- <center><font face="Georgia" color="#0C6E69"><h4>DISEASES PREDICTION</h4></font><br>
                                        <br>

                                        <center><table border="3">
                                            <tr><td><font face="Georgia" color="black">Researcher Id:</font></td><td>:</td><td><input type="text" value="<%=name%>" id="hname" name="I_name" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Email Id:</font></td><td>:</td><td><input type="text" value="<%=mail%>" id="hname" name="Mail" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Diseases Name:</font></td><td>:</td><td><input type="text" value="" id="hname" name="D_Name" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Symptoms 1:</font></td><td>:</td><td><input type="text" value="" id="hname" name="sympton_1" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Symptoms 2:</font></td><td>:</td><td><input type="text" value="" id="pname" name="sympton_2" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Symptoms 3:</font></td><td>:</td><td><input type="text" value="" id="pname" name="sympton_3" style="width: 204px;" ></td></tr>
                                                    
                                        </table>

                                       <br>
                                        <input type="submit" value="SUBMIT">
                                             </center>
                                </form>-->
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

			
			
		</div>
	</body>
</html>