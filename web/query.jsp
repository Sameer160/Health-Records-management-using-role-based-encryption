
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%@page import="java.util.Random"%>
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
            $(function() {
                $("#datepicker").datepicker({
                    changeMonth: true,
                    changeYear: true,
                    format: 'yyyy-MM-dd',
                    yearRange: '-100y:c+nn'

                });
            });
        </script>    
        <script>
            function File_validation(uid)
            {
                var uid_len = uid.value.length;
                var file = uid.files[0];
                var uid_len = uid.value.length;
                if (uid_len == 0)
                {
                    alert("Finger image Should not be empty");
                    document.getElementById('file').focus();
                    return false;
                }
                else if (uid_len > 0 && !/(\.bmp|\.gif|\.jpg|\.jpeg)$/i.test(uid.value))
                {
                    alert("Please Make Sure You Choosen only Image File");
                    return false;
                }
                else if (uid_len > 0 && uid_len > 0 && /(\.bmp|\.gif|\.jpg|\.jpeg)$/i.test(file) && file.size >= 1048576)
                {
                    alert("Fingerprint image Size Should be less than 1MB only");
                    document.getElementById('file').focus();
                    return false;
                }

                return true;
            }

            function File_validation1(uid)
            {
                var uid_len = uid.value.length;
                var file = uid.files[0];
                var uid_len = uid.value.length;
                if (uid_len == 0)
                {
                    alert("Fingerprint image Should not be empty");
                    document.getElementById('file').focus();
                    return false;
                }
                else if (uid_len > 0 && !/(\.bmp|\.png|\.gif|\.jpg|\.jpeg)$/i.test(uid.value))
                {
                    alert("Please Make Sure You Choosen only Image File");
                    return false;
                }
                else if (uid_len > 0 && uid_len > 0 && /(\.bmp|\.png|\.gif|\.jpg|\.jpeg)$/i.test(file) && file.size >= 1048576)
                {
                    alert("Fingerprint image Size Should be less than 1MB only");
                    document.getElementById('file').focus();
                    return false;
                }

                return true;
            }
        </script>

    </head>
    <%
       String user=(String)session.getAttribute("user_u");
       String Aadhar =(String)session.getAttribute("uname");
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

                        <li class="nav-item ">
                            <a class="nav-link" href="User_Home.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Partner1.jsp">Medical Details</a>
                        </li>                            

                        <li class="nav-item active">
                            <a class="nav-link" href="query.jsp"> Query To Researcher</a>
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
            <br>
            
        <div id="wrapper">
			
			
			
			<div id="page">
				<div class="container">
					
                                            <center>
						
						 <section id="content">
                                                <%
                                    Random randomGen = new Random();
                                    int randomInt = 0;
                                    for (int idx = 1; idx <= 10; ++idx) {
                                        randomInt = randomGen.nextInt(100);
                                    }
                                %>
                                <%
                                    String msg11 = (String) session.getAttribute("msg1");
                                    if (msg11 != null) {
                                %>
                                <script>
                                    var dd = '<%=msg11%>';
                                    alert(dd);
                                </script>
                                <%
                                        session.removeAttribute("msg11");
                                    }

                                %>
                                <%
                                    DbConnection con=new DbConnection();
                                    String query="select * from research";
                                    ResultSet rs=con.Select(query);
                                %>
                               
                                                
						
							  <form action="patient_rply" method="post">
                                  
                                                            <br>
                                                            
                                                                                              
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="PATIENT NAME">PATIENT NAME</label>
                                        <input  type="text" name="p_name" id="patient" >
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                                            
                                   <tr>
                                    <td class="input-group">
                                        <label for="EMAIL ID">EMAIL ID</label>
                                        <input  type="text" name="mail" id="email" >
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                                          
                                   <tr>
                                    <td class="input-group">
                                        <label for="SELECT RESEARCHER">SELECT RESEARCHER</label>
                                        <select name="research">
                                            <%
                                    while(rs.next())
                                    {
                                  %>
                                  
                                  <option value="<%=rs.getString("re_name")%>"><%=rs.getString("re_name")%></option>
                                  <%
                                    }
                                  %>
                                </select>
                                        <div class="error"></div>
                                    </td>
                                </tr>  
                                                          
                                   <tr>
                                    <td class="input-group">
                                        <label for="ENTER YOUR QUERY">ENTER YOUR QUERY</label>
                                       <input name="qry1" id="qry1">
                                        <div class="error"></div>
                                    </td>
                                </tr>       
                                                         
                            </table>  
                            <!--<input type="submit" name="submit" value="Send Request">-->   
                            <button type="submit" name="submit" value="Send Request">Send Request</button>
                                                         </form>
                                                </section>                
                                                </div> 	    
            
        
        
        
        <!--<div id="wrapper">

            <!-- Header 
          

            <div id="page">
                <div class="container">
                   
                        <center>

                            <section id="content" >
                                
                                  

                            <form action="patient_rply" method="post">
                             <font face="Georgia" color="black">Patient Name&nbsp;:&nbsp;<input  type="text" name="p_name" id="patient" ></font><br><br>
                             <font face="Georgia" color="black">Email Id &nbsp;:&nbsp;<input  type="text" name="mail" id="email" ></font><br><br>

                               <font face="Georgia" color="black"> Select Researcher Name&nbsp;:&nbsp;</font><select name="research">
                                  
                                <br><br>
                                <font face="Georgia" color="black">Enter Your Query&nbsp;:&nbsp;<textarea name="qry1" id="qry1" style="width: 250px; height: 113px;"></textarea></font><br><br>
                                <input type="submit" name="submit" value="Send Request"><br>
                            </form>-->
                                
                                <div style=" margin-left: 30px; margin-top: 60px; width:90%;">
                                    <table  style="width: 90%;border: 2px solid black"><tr>
                                        <tr style="background-color:lightskyblue;color: Black">
                                       <th style="font-weight: bold;"><center>Patient Name</center></th>
                                       <th style="font-weight: bold;"><center>Email Id</center></th>
                                       <th style="font-weight: bold;"><center>Research Name</center></th>
                                       <th style="font-weight: bold;"><center>Patient Query</center></th>
                                      <th style="font-weight: bold;"><center>Status</center></th>
                                  <th style="font-weight: bold;"><center>Answer</center></th>
                                          </tr>
                                          <%
            DbConnection db = new DbConnection();
            ResultSet rs1 = db.Select("select * from rply");
            while (rs1.next()) {
                 %>
               <tr>
                       <td style="border: 2px solid black;color:black"><%=rs1.getString("p_name")%></td>
                       <td style="border: 2px solid black;color:black"><%=rs1.getString("mail")%></td>
                       <td style="border: 2px solid black;color:black"><%=rs1.getString("r_name")%></td>
                       <td style="border: 2px solid black;color:black"><%=rs1.getString("query")%></td>


                       <td>
                      
               <%
                
                        if(rs1.getString("status").equals("Rply done"))
                            
                  {
                      %>
                     <font style="border: 0px solid black;color:black"> Replay Done</font>
                      <%
                  }
                  else
                  {
                  %>
                <font style="border: 0px solid black;color:black">Wait For Replay</font>
                           <%
                  }
                       %>
                       </td>
                       <td>
               <font style="border: 0px solid black;color:black"><%=rs1.getString("ans")%></font>
                       </td></tr>
                       <%
            }
                       %>
                                        
                               
                                    </table>
                                </div>
                                        
                                        
                                <div class="clear"> </div>
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

                                <script>
                                    function form_validation()
                                    {
                                        var filen = document.getElementById('file');
                                        if (!File_validation(filen))
                                        {
                                            return false;
                                        }

                                        var A_Name = document.getElementById("A_Name").value;
                                        var len = A_Name.length;

                                        if (A_Name == "")
                                        {
                                            alert('Enter license number');
                                            return false;
                                        }
                                        if (!A_Name.match(/^[0-9]+$/))
                                        {
                                            alert("Aadhar id only can be enter number")
                                            return false;
                                        }
                                        if ((len < 12) || (len > 12))
                                        {
                                            alert("Aadhar id Should Contain 12 Numbers");
                                            //document.getElementById("accno").style.border='1px solid red';
                                            // document.getElementById("lnum").focus();
                                            return false;
                                        }
                                        var H_Name = document.getElementById("U_Name").value;

                                        if (!H_Name.match(/^[a-zA-Z ]+$/))
                                        {
                                            alert("Invalid Patient Name or Don't Use Numbers")
                                            return false;
                                        }
                                        var ge = document.getElementById("sex").value;
                                        if (ge == "Sex")
                                        {
                                            alert('Please Select Sex');
                                            return false;
                                        }

                                        var BG = document.getElementById("BG").value;
                                        if (BG == "BG")
                                        {
                                            alert('Please Select Blood Group');
                                            return false;
                                        }
                                        var con = document.getElementById("con").value;
                                        var bcn = con.length;
                                        if (con == "")
                                        {
                                            alert("enter the contact number");
                                            return false;
                                        }
                                        if (!(con.charAt(0) == "9" || con.charAt(0) == "8" || con.charAt(0) == "7"))
                                        {
                                            alert("Cell Number  Should Start With only 9 / 8 / 7");
                                            return false;
                                        }
                                        if (bcn != 10)
                                        {
                                            alert("Cell Number  Should Contains 10 Numbers Only");
                                            return false;
                                        }

                                        var addr = document.getElementById("addr").value;
                                        if (addr == "")
                                        {
                                            alert("enter the address");
                                            return false;
                                        }
                                        var city = document.getElementById("city").value;
                                        if (city == "")
                                        {
                                            alert('City Cannot Be Empty');
                                            return false;
                                        }
                                        if (!city.match(/^[a-zA-Z]+$/))
                                        {
                                            alert("City field should be in Alphabet")
                                            return false;
                                        }
                                        var pcode = document.getElementById("pcode").value;
                                        var len1 = pcode.length;
                                        if (pcode == "")
                                        {
                                            alert('Enter Pincode  number');
                                            return false;
                                        }
                                        if ((len1 < 6) || (len1 > 6))
                                        {
                                            alert("Pincode number Should Contain 6 Numbers");
                                            //document.getElementById("accno").style.border='1px solid red';
                                            // document.getElementById("lnum").focus();
                                            return false;
                                        }
                                        var Mail = document.getElementById("mail").value;
                                        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;

                                        if (!filter.test(Mail)) {
                                            alert("Invalid Mail ID");
                                            return false;
                                        }
                                        var uploadfile = document.getElementById("image").value;
                                        // var uid_len = uploadfile.value.length;
                                        // var file = uploadfile.files[0];
                                        // var uid_len = uploadfile.value.length;
                                        var ext = uploadfile.substring(uploadfile.lastIndexOf('.') + 1);

                                        if (uploadfile == "")
                                        {
                                            alert("image Should not be empty");
                                            document.getElementById('image').focus();
                                            return false;
                                        }
                                        if (!(ext == "gif" || ext == "GIF" || ext == "JPEG" || ext == "jpeg" || ext == "jpg" || ext == "JPG" || ext == "png" || ext == "PNG"))
                                        {
                                            alert("Please Make Sure You Choosen only Image File");
                                            return false;
                                        }
                                        return true;
                                        var filen1 = document.getElementById('file1');
                                        if (!File_validation1(filen1))
                                        {
                                            return false;
                                        }
                                        return true;
                                    }
                                </script>
                                <%
                                    String msg = (String) session.getAttribute("msg");
                                    if (msg != null) {
                                %>
                                <script>
                                    var ss = '<%=msg%>';
                                    alert(ss);
                                </script>
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


