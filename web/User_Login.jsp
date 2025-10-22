<%-- 
    Document   : User_Login
    Created on : 17 Feb, 2025, 3:48:02 PM

--%>
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
                            <li class="nav-item">
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
                             <li class="nav-item active">
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
							
                                                                   
                               
    
<style>      
        .container2 {
            display: none; /* Initially hide the second form */
        }
    </style>
  
       <script>
        function sendOTP(event) {
            event.preventDefault(); // Prevent the form from submitting normally

            var email = document.getElementById('email').value;

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'SendOTP', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                if (xhr.status === 200) {
                    // Hide the first form and show the second form
                    document.querySelector('.container1').style.display = 'none';
                    document.querySelector('.container2').style.display = 'block';
                } else {
                    alert('An error occurred while sending the OTP.');
                }
            };
            xhr.send('email=' + encodeURIComponent(email));
        }
    </script>
    
    
    <h2 class="header-title" style="text-align:center;">User Login</h2>
            
    
    <div class="container1">
            <div class="formbold-main-wrapper">

  <div class="formbold-form-wrapper">
    
    <form  action="SendOTP" method="post" onsubmit="sendOTP(event)">
      <div class="formbold-mb-3">
        <div>
          <label for="firstname" class="formbold-form-label"> Email Id</label>
          <input type="text"  name="email"   id="email"  placeholder="Enter your Email Id" class="formbold-form-input" required />
        </div>
      </div>  <br>
      <button class="formbold-btn" >Send OTP</button>
    </form>
  </div>
</div>
    </div>
    
    
    <div class="container2">
            
            <div class="formbold-main-wrapper">

  <div class="formbold-form-wrapper">
    
    <form action="User_Login" method="post" >      
      <div class="formbold-mb-3">
        <div>
          <label for="firstname" class="formbold-form-label"> Email</label>
          <input type="text"  name="email" id="email" placeholder="Enter your Email" class="formbold-form-input" required />
        </div><br>

        
      </div>
        
        <div class="formbold-mb-3">
        <div>
          <label for="firstname" class="formbold-form-label">OTP </label>
          <input type="text" name="otp"  id="otp"  placeholder="Enter your OTP" class="formbold-form-input" required />
        </div><br>

      </div>
        
        <div class="formbold-mb-3">
        <div>
          <label for="firstname" class="formbold-form-label">Password </label>
          <input type="text" name="password"  id="password" placeholder="Enter your Password" class="formbold-form-input" required />
        </div><br>

      </div>

      <button class="formbold-btn" >Login Now</button>
    </form>
  </div>
</div>

    
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