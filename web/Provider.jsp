

<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>

<!DOCTYPE HTML>
<!--
	Synchronous by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
--> 
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
                <script>
                          function Hide()
                          {
                              document.getElementById("test").style.display="none";
                              
                          }
                      </script>   
                      <%!
 String li="";
 %>
                      <script>
                          function Selection_Process()
                          {
                              var match1 =document.getElementById("sec").value;
                         
                              
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
                           <a class="navbar-brand d-none d-lg-block" href="home.jsp">
                              Aadhar  Card
                                <strong class="d-block">Based Health Records Monitoring System</strong>
                            </a>  
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                           
                            <li class="nav-item ">
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link" href="Provider_Reg.jsp">Hospital Register</a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="Provider.jsp">Hospital Login</a>
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
			
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
                                            <center>
						
                                                
                                                
                                                <div class="container1">
             
                    <section id="content">
                                                
                                                
						
							<form action="Provider_Login" method="post" onsubmit="return AdminValidate();">
                                  <a class="navbar-brand d-none d-lg-block">HOSPITAL LOGIN PAGE</a> 
                                                            <br>
                              
                                                            
                            
                                        <label for="LICENSE ID">LICENSE ID</label>
                                        <input type="text" id="A_Name" name="P_Name">
                                        
                                        <label for="PASSWORD">PASSWORD</label>
                                        <input type="password" id="A_Pass" name="P_Pass">
                                        
                                       <a href="Provider.jsp?id=forget">Forget Password</a>
                                           
                           
                     <button type="submit" >Submit</button>
                                                             
                                   </form>                    
                          </section> 
                              </div>                               <!-- <center> <font face="Georgia" color="#0C6E69"> <h2>HOSPITAL LOGIN PAGE</h2></font> <br><br>-->
                                 <!-- <br><table border="5">
                                          
                    <tr><td> <font face="Georgia" color="black"> LICENSE ID :</td><td><input type="text" value="" id="A_Name" name="P_Name" onkeypress="return  number(event)" maxlength="6"></td></tr>
                    <tr></tr><tr></tr>
                    <tr><td><font face="Georgia" color="black">PASSWORD :</td><td><input type="password" value="" id="A_Pass" name="P_Pass"></td></tr>
                    <tr><td><a href="Provider.jsp?id=forget">Forget Password</a></td></tr>
                    </table>
                                      <br><br>
                                      <input type="submit" value="Submit"></center>
                                        </form>-->
                            
                            	 <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                       session.removeAttribute("msg");
                  }
                
                 
                  %>
                                        <script>
        function AdminValidate()
        {
            var ss = document.getElementById("P_Name").value;
            if (ss === "")
            {
                alert("User Name Can't be Empty");
                document.getElementById("P_Name").value.focus;
                return false;
            }
            var ss1 = document.getElementById("P_Pass").value;
            if (ss1 === "")
            {
                alert("Password Can't be Empty");
                return false;
            }
            return true;
        }
                                </script>
                                <%
                 String stt=request.getParameter("id");
                 if(stt!=null)
                 {
                     %>
                     <form action="Provider.jsp" method="get">
                     <table>
                         
                         <tr>
                                    <td class="input-group">
                                        <label for="LICENSE ID">LICENSE ID</label><input type="text" id="license" name="license" value="" required onkeypress="return  number(event)" maxlength="6"></td><td><input type="submit" value="Getkey">
                                        <br><input type="hidden" name="id1" value="forget">
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                         
                            <!-- <tr><td>LICENSE ID</td><td>:</td><td><input type="text" id="license" name="license" value="" required onkeypress="return  number(event)" maxlength="6"></td><td><input type="submit" value="Getkey"></td></tr>
                             <input type="hidden" name="id1" value="forget">-->
                            
                     </table></form>
                     <%
                 }
                   String stt1=request.getParameter("id1");
                   System.out.println("stt1"+stt1);
                   if(stt1!=null)
                   {
                       String lic=request.getParameter("license");
                        System.out.println("stt1"+lic);
                       DbConnection db=new DbConnection();
                       ResultSet rs=db.Select("select * from provider_details where UP_Name='"+lic+"'");
                       if(rs.next())
                       {
                     %>
                            <form action="forget" method="post">
                          <table>
                               <tr>
                                    <td class="input-group">
                                        <label for="LICENSE ID">LICENSE ID</label>
                                       <input type="text" id="license" name="license" value="<%=lic%>" required readonly>
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="input-group">
                                        <label for="SECURITY QUESTION">SECURITY QUESTION</label>
                                       <textarea id="sec" name="sec" readonly style="width: 248px;height: 100px;"><%=rs.getString("sec")%></textarea>
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="input-group">
                                        <label for="ENTER ANSWER">ENTER ANSWER </label>
                                        <input type="text" name="ans" value="" required>
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="input-group">
                                      
                                        <input type="submit" value="Get Password">
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                              
                               <!--<tr><td>License Id</td><td>:</td><td><input type="text" id="license" name="license" value="<%=lic%>" required readonly></td></tr>
                            
                               <tr><td>Security Question</td><td>:</td><td><textarea id="sec" name="sec" readonly style="width: 248px;height: 100px;"><%=rs.getString("sec")%></textarea></td></tr>
                            
                                     <tr>
                                        <td>
                                           Enter Answer 
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" name="ans" value="" required>
                                        </td>
                                    </tr>
                                    <tr><td><input type="submit" value="getPassword"></td></tr>-->
                        </table>
                     </form>
                     <%
                       }
                       else
                       {
                           %>
                           <script>
                               alert('Invalid Licence Number');
                               </script>
                           <%
                       }
                 }
                  %>
								
							</section>
                                            </center>   
						
					</div>

				</div>	
			</div>

			
			
	</body>
</html>