

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
                <script>
            window.onload = function Generate_Keys() {
                var dcv = "908654712365047896541230125878566841587415";
                var sxc = "";
                for (var dc = 0; dc < 12; dc++) {
                    sxc += dcv.charAt(Math.floor(Math.random() * dcv.length));
                }
                document.getElementById("key1").value = sxc;
            }
   </script>
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

                            <li class="nav-item active">
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
            
          <div id="wrapper">

            
            <br>
            <div id="page">
                <div class="container1">
                
                                
                             <div class="container1">
                <center>
                    <section id="content">
                        <a class="navbar-brand d-none d-lg-block">
                                  INSURANCE REGISTRATION
                                
                            </a> 
                        
                        <form action="insurances" method="post" enctype="multipart/form-data" onsubmit="return Validate_Data(this)">
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="Insured Name">Insured Name</label>
                                        <input type="text" value=""  name="I_Name">
                                        <div class="error"></div>
                                    </td>
                                </tr>                       
                                <tr>
 <td class="input-group">
 <label for="Email Id">Email Id</label>
 <input type="text" value="" id="mail" name="Mail">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
 <td class="input-group">
 <label for="PassWord">PassWord</label>
 <input type="password" value="" id="pass" name="P_Pass">
 <div class="error"></div>
 </td>
                                </tr>
                                
                                <tr>                         
 <td class="input-group">
<label for="Confirm Password">Confirm Password</label>
<input type="password" value="" id="rpass" name="C_Pass">
 <div class="error"></div>
 </td>
                                </tr>                              
                                <tr>                            
 <td class="input-group">
 <label for="Address">Address</label>
 <input type="text" id="ad" name="P_Adrr">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
  <td class="input-group">
 <label for="City">City</label>
<input type="text" value="" id="cit" name="city">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
  <td class="input-group">
 <label for="Pincode">Pincode</label>
 <input type="text" id="pcode" name="pin">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>             
  <td class="input-group">
<label for="Year Of Starting">Year Of Starting</label>
<input type="text" value="" id="yer" name="year" maxlength="4"onkeypress="return number(event)" maxlength="4" >
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
<label for="Year Of Starting">Profile Image</label>
<input type="file" value="" id="yer" name="file" maxlength="4"  onkeypress="return number(event)" maxlength="4" >
 <div class="error"></div>
 </td>
                                </tr>
 <tr>                 
  <td class="input-group">
<input type="hidden" name="key" id="key1" readonly=""/>
 <div class="error"></div>
 </td>
 </tr>         
</table>

                            <button type="submit">Register</button>&nbsp;&nbsp;&nbsp;<a href="insurance_login.jsp"><font face="Georgia" color="blue">LOGIN</font
                                            ></a>
                        </form>

                        <!-- Your existing script tags -->

                    </section>
                </center>
            </div>
        </div>
    </div>   
                    
            
            
	
		<!--<div id="wrapper">
			
			
			
			    <div id="page">
                <div class="container">
                  
                        <center>

                            <section id="content" >
                                <form action="insurances" method="post" enctype="multipart/form-data" onsubmit="return Validate_Data(this)">
                                     <a class="navbar-brand d-none d-lg-block">
                               INSURANCE REGISTRATION
                                
                            </a>  
                                    <!--<center><font face="Georgia" color="blue"><h4>INSURANCE REGISTRATION</h4></font><br>
                                        <br>

                                        <center> <table border="3">
                                            <tr><td><font face="Georgia" color="black"> Insured Name:</font></td><td>:</td><td><input type="text" value=""  name="I_Name" style="width: 204px;" ></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Email Id: </font></td><td>:</td><td><input type="text" value="" id="mail" name="Mail" style="width: 204px;" ></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> PassWord:</font></td><td>:</td><td><input type="password" value="" id="pass" name="P_Pass" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black"> Confirm Password:</font></td><td>:</td><td><input type="password" value="" id="rpass" name="C_Pass" style="width: 204px;" ></td></tr> 
                                            <td> <font face="Georgia" color="black"> Address:</font></td><td>:</td><td><input value="" id="ad" name="P_Adrr" style="width: 204px;"></td></tr>                                        
                                            <tr><td><font face="Georgia" color="black">  City :</font></td><td>:</td><td><input type="text" value="" id="cit" name="city" style="width: 204px;" ></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Pin code:</font></td><td>:</td><td><input type="text" value="" id="pcode" name="pin" maxlength="6" style="width: 204px;" onkeypress="return number(event)"></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Year Of Starting:</font> </td><td>:</td><td><input type="text" value="" id="yer" name="year" maxlength="4" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Profile Image:</font> </td><td>:</td><td><input type="file" value="" id="yer" name="file" maxlength="4" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>
                                            <input type="hidden" name="key" id="key1" readonly=""/>

                                        </table>

                                        <br><br>
                                        <input type="submit" value="Register" > &nbsp;&nbsp;&nbsp;<a href="insurance_login.jsp"><font face="Georgia" color="blue">LOGIN</font
                                            ></a>  </center>
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