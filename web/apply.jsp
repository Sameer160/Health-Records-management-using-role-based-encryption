

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
            String u_key=(String)session.getAttribute("key");
            String name=(String)session.getAttribute("uname");

            if(u_key!="" && name!="")
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
                           
                            <li class="nav-item  ">
                                <a class="nav-link" href="research_home.jsp">Home</a>
                            </li>
                            
                             <li class="nav-item active">
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

            
            <br>
            <div id="page">
                <div class="container1">
                
                                
                             <div class="container1">
                <center>
                    <section id="content">
                        <a class="navbar-brand d-none d-lg-block">
                               APPLY INSURANCES
                                
                            </a> 
                        
                      <form action="apply" method="post"  onsubmit="return Validate_Data(this)">
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="INSURED MEMBER ID CARD NO">INSURED MEMBER ID CARD NO</label>
                                        <input type="text" name="card_no" value="<%=u_key%>">
                                        <div class="error"></div>
                                    </td>
                                </tr>                       
                                <tr>
 <td class="input-group">
 <label for="PATIENT NAME">PATIENT NAME</label>
 <input type="text" value="<%=name%>" id="pname" name="p_Name">
 <div class="error"></div>
 </td>
                                </tr>
                                 <tr>                            
 <td class="input-group">
 <label for="Gender">Gender</label>
 <SELECT name="gender" id="sex" size=1 tabIndex=7 required>
                 <OPTION value="Sex">Sex</OPTION>
                 <OPTION value=Male>Male</OPTION>
                 <OPTION value=Female>Female</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr> 
                                <tr>                             
 <td class="input-group">
 <label for="AGE">AGE</label>
<input type="text" value="" id="age" name="age">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                         
 <td class="input-group">
 <label for="DATE OF BIRTH">DATE OF BIRTH</label>
 <input type="date" value="date" id="rpass" name="date">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                            
 <td class="input-group">
 <label for="ADDRESS">ADDRESS</label>
 <input type="text"  name="P_Adrr">
 <div class="error"></div>
 </td>
                                </tr>
                  <tr>                            
 <td class="input-group">
 <label for="CURRENTLY DO YOU HAVE ANY MEDICLIAM<br>/HEALTH INSURANCES">CURRENTLY DO YOU HAVE ANY MEDICLIAM<br>/HEALTH INSURANCES</label>
 <SELECT name="Insurances" id="mail" size=1 tabIndex=7 required>
                
                 <OPTION value="YES">YES</OPTION>
                 <OPTION value="NO">NO</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr>                 
                                      </tr>
                  <tr>                            
 <td class="input-group">
 <label for="DO YOU HAVE FAMILY PHYSICIAN">DO YOU HAVE FAMILY PHYSICIAN</label>
 <SELECT name="Physician" id="mail" size=1 tabIndex=7 required>
                
                 <OPTION value="YES">YES</OPTION>
                 <OPTION value="NO">NO</OPTION>
             </SELECT>
 <div class="error"></div>
 </td>
                                </tr>         
                                
                               
                               
                                <tr>             
  <td class="input-group">
 <label for="NAME OF THE FAMILY PHYSICIAN">NAME OF THE FAMILY PHYSICIAN</label>
 <input type="text" value="" id="yer" name="fa_phy" maxlength="24" onkeypress="return number(event)" maxlength="4" >
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
 <label for="CONTACT NO, IF ANY">CONTACT NO, IF ANY</label>
 <input type="text" value="" id="yer" name="con_no" maxlength="10" onkeypress="return number(event)" maxlength="4" >
 <div class="error"></div>
 </td>
                                </tr>
</table>

                            <button type="submit">Register</button>
                        </form>
		
            
            
            <!--<div id="wrapper">
			
			
			
			    <div id="page">
                <div class="container">
                  
                        <center>

                            <section id="content" >
                                <form action="apply" method="post"  onsubmit="return Validate_Data(this)">
                                <a class="navbar-brand d-none d-lg-block">
                               APPLY INSURANCES
                                
                            </a>       
                                    <!--<center><font face="Georgia" color="#0C6E69"><h4>APPLY INSURANCES</h4></font><br>
                                        <br>

                                        <center><table border="3">
                                             
                                            <tr><td><font face="Georgia" color="black">Insured Member Id Card No:</font></td><td>:</td><td><input type="text" name="card_no" value="<%=u_key%>" style="width: 204px;"></td></tr>

                                            <tr><td><font face="Georgia" color="black"> Patient Name:</font></td><td>:</td><td><input type="text" value="<%=name%>" id="pname" name="p_Name" style="width: 204px;" readonly=""></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Gender: </font></td><td>:</td><td>Male:<input type="checkbox" value="Yes" id="mail" name="gender">Female:<input type="checkbox" value="No" id="mail" name="gender"></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Age:</font></td><td>:</td><td><input type="text" value="" id="age" name="age" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black"> Date Of Birth:</font></td><td>:</td><td><input type="date" value="date" id="rpass" name="date" style="width: 204px;" ></td></tr> 
                                            <td> <font face="Georgia" color="black"> Address:</font></td><td>:</td><td><input type="text"  name="P_Adrr" style="width: 204px;"></td></tr>                                        
                                            <tr><td><font face="Georgia" color="black">  Currently Do You Have Any Medicliam<br>/Health Insurances:</font></td><td></td><td>Yes:<input type="checkbox" value="Yes" id="mail" name="Insurances">No:<input type="checkbox" value="No" id="mail" name="Insurances"></tr><br>
                                            <tr><td> <font face="Georgia" color="black"> Do You Have Family Physician:</font></td><td>:</td><td>Yes:<input type="checkbox" value="Yes" id="mail" name="Physician">No:<input type="checkbox" value="No" id="mail" name="Physician"></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Name Of The Family Physician:</font> </td><td>:</td><td><input type="text" value="" id="yer" name="fa_phy" maxlength="24" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>
                                            <tr><td> <font face="Georgia" color="black"> Contact No, If Any:</font> </td><td>:</td><td><input type="text" value="" id="yer" name="con_no" maxlength="10" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>

                                        </table>

                                        <br><br>
                                        <input type="submit" value="Register" >
                                            </a>  </center>
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