
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
<!--

TemplateMo 566 Aadhar Card Based Health Records

https://templatemo.com/tm-566-medic-care

-->
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
                                <a class="nav-link" href="view.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="User_Register.jsp">User Register </a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="Partner.jsp">Patient Medical</a>
                            

                           <li class="nav-item ">
                                <a class="nav-link" href="User_Phr1.jsp">Add Patient Details</a>
                            </li>


                           

                             <li class="nav-item ">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>

                             
                          
                        </ul>
                    </div>

                </div>
            </nav>
            <br>
            <br>
            <br>  
            
		<div id="wrapper">
			
			<!-- Header -->
			
			
			<div id="page">
				<div class="container">
					<div class="row">
                                            <center>
						
							<section id="content" >
                                                            <form action="VerifyOTP" method="post">
                                                            Enter OTP:<input type="text" value="" name="otp" required>
                                                            <input type="hidden" value="<%=request.getParameter("id")%>" name="id">
                                                            <input type="submit" value="Verify">
                                                            </form>
								
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

			
		</div>
	</body>
</html>