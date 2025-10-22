

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

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item ">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Hospital</a>
                            </li>

                            <li class="nav-item active">
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
            
            
           <div id="wrapper">

            
            <br>
            <div id="page">
                <div class="container1">
                
                                
                       
                <center>
                    <section id="content">
                        <a class="navbar-brand d-none d-lg-block">
                                 BANKING INFORMATION
                                
                            </a> 
                        
                        <form action="banking_reg" method="post" enctype="multipart/form-data" onsubmit="return Validate_Data(this)">
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="Profile Image">Profile Image</label>
                                        <input type="file" value="" id="yer" name="profile" maxlength="4" onkeypress="return number(event)" maxlength="4" >
                                        <div class="error"></div>
                                    </td>
                                </tr>                       
                                <tr>
 <td class="input-group">
 <label for="Hospital Id">Hospital Id</label>
<input type="text" value="" id="pname" name="h_id">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
 <td class="input-group">
 <label for="Username">Username</label>
 <input type="text" value="" id="mail" name="user_name">
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
 <label for="Password">Password</label>
 <input type="password" value="" id="pass" name="P_Pass">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                            
 <td class="input-group">
 <label for="Confirm Password"> Confirm Password</label>
 <input type="password" value="" id="rpass" name="C_Pass">    
 <div class="error"></div>
 </td>
                                </tr>
                                
                           <tr>                            
 <td class="input-group">
 <label for="Gender">Gender</label>
 <SELECT name="Gender" id="sex" size=1 tabIndex=7 required>
                 <OPTION value="Sex">Sex</OPTION>
                 <OPTION value=Male>Male</OPTION>
                 <OPTION value=Female>Female</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr>                   
                                <tr>
 <td class="input-group">
 <label for="Date Of Birth">Date Of Birth</label>
 <input type="date" value="" id="ad" name="da_te">
 <div class="error"></div>
 </td>
                                </tr>
                             <tr>                            
 <td class="input-group">
 <label for="Occupation">Occupation</label>
 <SELECT name="Occupation" id="sex" size=1 tabIndex=7 required>
                 <OPTION value="Student">Student</OPTION>
                 <OPTION value=Self-Employed>Self-Employed</OPTION>
                 <OPTION value=Business>Business</OPTION>
                 <OPTION value=Others>Others</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr>  
                               <tr>                            
 <td class="input-group">
 <label for="Photos Id">Photos Id</label>
 <SELECT name="Photos" id="sex" size=1 tabIndex=7 required>
                 <OPTION value="Aadhar">Aadhar</OPTION>
                 <OPTION value=Passport>Passport</OPTION>
                 <OPTION value=Voter-Id>Voter-Id</OPTION>
                 <OPTION value=Others>Others</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr> 
                               
                                <tr>
  <td class="input-group">
 <label for="Mobile No">Mobile No</label>
<input type="text" value="" id="cit" name="mobile">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>             
  <td class="input-group">
 <label for="Permanent Address">Permanent Address</label>
<input value="" id="ad" name="P_Adrr">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
 <label for="Temporary Address">Temporary Address</label>
<input value="" id="ad" name="T_Adrr">
 <div class="error"></div>
 </td>
                                </tr>
                                
                                <tr>                            
 <td class="input-group">
 <label for="Address Proof">Address Proof</label>
 <SELECT name="Address_Proof" id="sex" size=1 tabIndex=7 required>
                 <OPTION value="Telephone Bill">Telephone Bill</OPTION>
                 <OPTION value="Electric Bill">Electric Bill</OPTION>
                 <OPTION value="Salary Slip">Salary Slip</OPTION>
                 <OPTION value="Others">Others</OPTION>
             </SELECT>
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
 <label for="Pin code">Pin code</label>
<input type="text" value="" id="pcode" name="pin" maxlength="6" onkeypress="return number(event)">
 <div class="error"></div>
 </td>
                                </tr>
                                   <tr>                 
  <td class="input-group">
 <label for="Year Of Starting">Year Of Starting</label>
 <input type="text" value="" id="yer" name="year" maxlength="4" onkeypress="return number(event)" maxlength="4" >
 <div class="error"></div>
 </td>
                                </tr>
                                
</table>
                           <button type="submit">Register</button>
                           &nbsp;&nbsp;&nbsp;<a href="banking_login.jsp"><font face="Georgia" color="blue">LOGIN</font></a> 
                        </form>

                        <!-- Your existing script tags -->

                    </section>
                </center>
            </div>
        </div>
    </div>     
            
            
            
            
            
            
            
            
            
            
            
       <!-- <div id="wrapper">

           
           

            <div id="page">
                <div class="container">

                    <center>

                        <section id="content" >
                            <form action="banking_reg" method="post" enctype="multipart/form-data" onsubmit="return Validate_Data(this)">
                                 <a class="navbar-brand d-none d-lg-block">
                              BANKING INFORMATION
                                
                            </a>  
                               <!-- <center><font face="Georgia" color="#0C6E69"><h4>BANKING INFORMATION</h4></font><br>
                                    <br>

                                    <center> <table border="3">
                                        <tr><td> <font face="Georgia" color="black"> Profile Image:</font> </td><td>:</td><td><input type="file" value="" id="yer" name="profile" maxlength="4" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>

                                        <tr><td><font face="Georgia" color="black"> Hospital Id:</font></td><td>:</td><td><input type="text" value="" id="pname" name="h_id" style="width: 204px;" ></td></tr>
                                        <tr><td> <font face="Georgia" color="black"> Username: </font></td><td>:</td><td><input type="text" value="" id="mail" name="user_name" style="width: 204px;" ></td></tr>

                                        <tr><td> <font face="Georgia" color="black"> Email Id: </font></td><td>:</td><td><input type="text" value="" id="mail" name="Mail" style="width: 204px;" ></td></tr>
                                        <tr><td> <font face="Georgia" color="black"> PassWord:</font></td><td>:</td><td><input type="password" value="" id="pass" name="P_Pass" style="width: 204px;" ></td></tr>
                                        <tr><td><font face="Georgia" color="black"> Confirm Password:</font></td><td>:</td><td><input type="password" value="" id="rpass" name="C_Pass" style="width: 204px;" ></td></tr> 
                                        <td> <font face="Georgia" color="black"> Gender:</font></td><td>:</td><td>Male <input type="checkbox" name="Gender" value="Male">Female <input type="checkbox" name="Gender" value="Female"></td></tr>                                      
                                        <td> <font face="Georgia" color="black">Date Of Birth:</font></td><td>:</td><td><input type="date" value="" id="ad" name="da_te" style="width: 204px;"></td></tr>                                        
                                        <td> <font face="Georgia" color="black"> Occupation:</font></td><td>:</td><td>Student <input type="checkbox" name="Occupation" value="Student" >Self-Employed <input type="checkbox" name="Occupation" value="Self-Employed"> Business<input type="checkbox" name="Occupation" value="Business">Others <input type="checkbox" name="Occupation" value="Others"></td></tr>                                      
                                    <td> <font face="Georgia" color="black"> Photos Id:</font></td><td>:</td><td>Aadhar <input type="checkbox" name="Photos" value="Aadhar">Passport <input type="checkbox" name="Photos" value="Passport"> Voter-Id<input type="checkbox" name="Photos" value="Voter-Id">Others <input type="checkbox" name="Photos" value="Others"></td></tr>                                      
                                        <tr><td><font face="Georgia" color="black">  Mobile No :</font></td><td>:</td><td><input type="text" value="" id="cit" name="mobile" style="width: 204px;" ></td></tr>
                                        <td> <font face="Georgia" color="black"> Permanent Address:</font></td><td>:</td><td><textarea value="" id="ad" name="P_Adrr" style="width: 204px;"></textarea></td></tr>                                        

                                        <td> <font face="Georgia" color="black"> Temporary Address:</font></td><td>:</td><td><textarea value="" id="ad" name="T_Adrr" style="width: 204px;"></textarea></td></tr>                                        
                                    <td> <font face="Georgia" color="black"> Address Proof:</font></td><td>:</td><td>Telephone Bill <input type="checkbox" name="Address_Proof" value="Telephone Bill" >Electric Bill <input type="checkbox" name="Address_Proof" value="Electric Bill"> Salary Slip<input type="checkbox" name="Address_Proof" value="Salary Slip">Others <input type="checkbox" name="Address_Proof" value="Others"></td></tr>                                      

                                        <tr><td><font face="Georgia" color="black">  City :</font></td><td>:</td><td><input type="text" value="" id="cit" name="city" style="width: 204px;" ></td></tr>
                                        <tr><td> <font face="Georgia" color="black"> Pin code:</font></td><td>:</td><td><input type="text" value="" id="pcode" name="pin" maxlength="6" style="width: 204px;" onkeypress="return number(event)"></td></tr>
                                        <tr><td> <font face="Georgia" color="black"> Year Of Starting:</font> </td><td>:</td><td><input type="text" value="" id="yer" name="year" maxlength="4" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>


                                    </table>

                                    <br><br>
                                    <input type="submit" value="Register" > &nbsp;&nbsp;&nbsp;<a href="banking_login.jsp"><font face="Georgia" color="blue">LOGIN</font
                                        ></a>  </center>
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


       
       

    </div>
</body>
</html>