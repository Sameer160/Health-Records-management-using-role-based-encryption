
<%@page import="java.util.Random"%>
<html>
    <head>
         <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
        <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-panels.min.js"></script>
        <script src="js/init.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        </noscript>
        <link rel="stylesheet" href="css/ie/v8.css" />
        <link rel="stylesheet" href="css/ie/v9.css" />  
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
                                <a class="nav-link" href="Provider_Home.jsp">Home</a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="User_Register.jsp">User Register </a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link" href="Partner.jsp">Patient Medical</a>
                            </li>
                                <li class="nav-item ">
                                <a class="nav-link" href="User_Phr1.jsp">Add Patient Details</a>
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

            <!-- Header -->
           
            <!-- /Header -->

            <div id="page">
                <div class="container">
                   
                        <center>

                            <section id="content" >
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
                                <form name="form" enctype="multipart/form-data" action="UserReg" method="post" onsubmit="return form_validation();">
                                   <a class="navbar-brand d-none d-lg-block">
                             PATIENT REGISTRATION
                                
                            </a> 
                                   
                                <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="Patient Image">Patient Image</label>
                                        <input type="file" value="" id="file" name="Image"  accept="audio/*,video/*,image/*">
                                        <div class="error"></div>
                                    </td>
                                </tr>                       
                                <tr>
 <td class="input-group">
 <label for="Aadhaar Id">Aadhaar Id</label>
 <input type="id"  id="A_Name" name="A_Name" value=""  onkeypress="return number(event)">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
 <td class="input-group">
 <label for="Patient Name">Patient Name</label>
<input type="text" value="" id="U_Name" name="U_Name">
 <div class="error"></div>
 </td>
                                </tr>
                        <tr>                            
 <td class="input-group">
 <label for="Gender">Gender</label>
 <SELECT name="Gender"  id="sex" size=1 tabIndex=7 required>
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
<input type="text" value="2008-06-17" id="datepicker" readonly name="date">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                         
 <td class="input-group">
 <label for="Blood Group">Blood Group</label>
 <select name="BG" id="BG" >
   
                                                        <option>A-</option>
                                                        <option>B+</option>
                                                        <option>B-</option>
                                                        <option>AB+</option>
                                                        <option>AB-</option>
                                                        <option>O+</option>
                                                        <option>O-</option> 
 </select>
 <div class="error"></div>
 </td>
                                </tr>
                               
                               
                                <tr>
 <td class="input-group">
 <label for="Enter Answer">Contact Number</label>
<input type="text" value="" id="con" maxlength="10" name="con"  onkeypress="return number(event)">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                            
 <td class="input-group">
 <label for="Address">Address</label>
 <input type="text"  id="addr" name="addr" >
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
  <td class="input-group">
 <label for="City">City</label>
 <input type="text" value="" id="city" name="city">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
  <td class="input-group">
 <label for="Pin code">Pin code</label>
<input type="text" value="" id="pcode" name="pin"onkeypress="return number(event)" maxlength="6">
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>             
  <td class="input-group">
 <label for="Mail_Id">Mail_Id</label>
 <input type="text" value="" id="mail" name="mail" >
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
 <label for="Password">Password</label>
<input type="password" id="pw" name="pw">
 <div class="error"></div>
 </td>
                                </tr>
                                <br>
                                <br>
                                 <tr>                 
  <td class="input-group">

      <button type="Submit" value="Register">REGISTER</button>
      <br><br><button type="Reset" value="Clear">CLEAR</button>
 <div class="error"></div>
 </td>
                                </tr>
</table>

                               
                              
                                    
                                    <!--<center> <font face="Georgia" color="#0C6E69"><h1>PATIENT REGISTRATION</h1></font>-->
                                       <!-- <br>

                                        <table border="3">
                                            <tr><td><font face="Georgia" color="black">Patient Image</font></td><td>:</td><td><input type="file" value="" id="file" name="Image"  accept="audio/*,video/*,image/*" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Aadhaar Id</font></td><td>:</td><td><input type="id"  id="A_Name" name="A_Name" value="" style="width: 204px;" onkeypress="return number(event)" maxlength="12" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Patient Name</font></td><td>:</td><td><input type="text" value="" id="U_Name" name="U_Name" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Gender</font></td><td>:</td><td><SELECT name=Gender  id="sex" size=1 tabIndex=7> <OPTION value="Sex">Sex<OPTION value=Male>Male<OPTION value=Female>Female
                                                        </OPTION></SELECT></td></tr>   
                                            <tr><td><font face="Georgia" color="black">Date Of Birth</font></td><td>:</td><td><input type="text" value="2008-06-17" id="datepicker" readonly name="date" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Blood Group </font></td><td>:</td><td><select name="BG" id="BG" style="width: 204px;" >
                                                        <option>A+</option>
                                                        <option>A-</option>
                                                        <option>B+</option>
                                                        <option>B-</option>
                                                        <option>AB+</option>
                                                        <option>AB-</option>
                                                        <option>O+</option>
                                                        <option>O-</option>
                                                    </select></td>
                                            </tr> 
                                            <tr><td><font face="Georgia" color="black">Contact Number</font></td><td>:</td><td><input type="text" value="" id="con" maxlength="10" name="con"  onkeypress="return number(event)"style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Address</font></td><td>:</td><td><textarea style="height: 69px; width: 204px" id="addr" name="addr" ></textarea></td></tr>
                                            <tr><td><font face="Georgia" color="black">City</font></td><td>:</td><td><input type="text" value="" id="city" name="city" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Pin code</font></td><td>:</td><td><input type="text" value="" id="pcode" name="pin" style="width: 204px;" onkeypress="return number(event)" maxlength="6"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Mail Id</font></td><td>:</td><td><input type="text" value="" id="mail" name="mail" style="width: 204px;" ></td></tr>
                                            <tr><td><font face="Georgia" color="black">Password</font></td><td>:</td><td><input type="password" id="pw" name="pw"  style="width: 204px;"></td></tr>
                                            <br></br>
                                            <tr><td><font face="Georgia" color="black"><input type="Submit" value="Register">&nbsp;       
                                                    <input type="Reset" value="Clear"></font></td></tr>
                                        </table></center></form>-->
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

            

        
           
        </div>
    </body>
</html>


