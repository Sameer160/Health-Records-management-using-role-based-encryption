
<%@page import="java.util.Random"%>
<html>
    <head>
        <title>Aadher Card Base Health Records</title>
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
        <script language="javkascript" type="text/javascript" src="datetimepicker.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        </noscript>
        <link rel="stylesheet" href="css/ie/v8.css" />
        <link rel="stylesheet" href="css/ie/v9.css" />                

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
    <body class="homepage">
        <div id="wrapper">

            <!-- Header -->
            <div id="header">
                <div class="container"> 

                    <!-- Logo -->
                    <div id="logo">
						<h1><a href="#">Aadhar Card Based Health Records Monitoring System</a></h1>
                    </div>

                    <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li><a href="Provider_Home.jsp">Home</a></li>
                            <li ><a href="User_Register.jsp">User Register</a></li>
                            <li><a href="Partner.jsp">Patient Medical</a></li>
                            <li><a href="User_Phr1.jsp">Add Patient Details</a></li>
                            <li><a href="query.jsp">Patient Query To Researcher</a></li>
                            <li class="active"><a href="emergency.jsp">Emergency Department</a></li>
                                                         <li><a href="don_reg.jsp">Donar</a></li>
                           
                            <li><a href="home.jsp">Logout</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
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
                                <form name="form" enctype="multipart/form-data" action="emer" method="post" onsubmit="return form_validation();">
                                    <center> <font face="Georgia" color="#0C6E69"><h1>Emergency Department</h1></font>
                                        <br>

                                        <table border="3">
                                            <tr><td><font face="Georgia" color="black">Patient Image</font></td><td>:</td><td><input type="file" value="" id="file" name="Image" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Patient Name</font></td><td>:</td><td><input type="id"  id="" name="A_Name" value="" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">DOB</font></td><td>:</td><td><input type="date" value="" id="U_Name" name="dob" style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Patient Height</font></td><td>:</td><td><input type="text" value="" id="U_Name" name="pat_hig" style="width: 204px;">                                                        </OPTION></SELECT></td></tr>   
                                            <tr><td><font face="Georgia" color="black">Patient Weight</font></td><td>:</td><td><input type="text" value="" id="" name="pat_wei" style="width: 204px;"></td></tr>
                                            
                                            <tr><td><font face="Georgia" color="black">PatientAAdhaar  Id</font></td><td>:</td><td><input type="text" value="" id="con" maxlength="10" name="pat_aa_id"  onkeypress="return number(event)"style="width: 204px;"></td></tr>
                                            <tr><td><font face="Georgia" color="black">Reason For Seeing the Doctor</font></td><td>:</td><td><textarea style="height: 69px; width: 204px" id="addr" name="reason" ></textarea></td></tr>
                                            <tr><td><font face="Georgia" color="black">Include Other Comments <br>Regarding Your Medical History</font></td><td>:</td><td><input type="text" value="" id="city" name="comment" style="width: 204px;" ></td></tr>
                                            <br></br>
                                            <tr><td><font face="Georgia" color="black"><input type="Submit" value="SUBMIT">&nbsp;       
                                                    <input type="Reset" value="Clear"></font></td></tr>
                                        </table></center></form>
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

            <!-- Footer -->
            <div id="footer">
                <div class="container">

                </div>
            </div>

            <!-- Copyright -->
            <div id="copyright">
                <div class="container">
                    Design: <a href="#">TEMPLATED</a> Images: <a href="#">Unsplash</a> (<a href="#">CC0</a>)
                </div>
            </div>

        </div>
    </body>
</html>


