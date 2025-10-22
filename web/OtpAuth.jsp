<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
                <%

 String Servlet_Msg = (String) session.getAttribute("msg");
              String color = (String) session.getAttribute("color");


%>
	</head>
        <script>
      function formValidation()
{
    var otp = document.form1.otp;
    if(OTP_validation(otp,5))
{
  return true;  
}
return false;
}
function OTP_validation(uid,mx)
{ 
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("OTP Field Should not be empty");
uid.focus();
return false;
}
else if(uid_len > 0 && uid_len < mx)
    {
       alert("OTP Length Should be "+mx+" Alphanumeric letters");
uid.focus();
return false;
    }
return true;
}



</script>
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
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="Provider_Reg.jsp">Hospital Register</a></li>
							<li><a href="Provider.jsp">Hospital Login</a></li>
							<li><a href="admin.jsp">Admin</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					<div class="row">
                                            <center>
						
							<section id="content" >
								fuisdfhsduifh   
								
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