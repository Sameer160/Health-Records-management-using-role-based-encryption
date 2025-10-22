
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
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
        function displayDate() 
        {

var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date();
            var ds=d2;//to date yyyy-MM-dd (taken currentdate)
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
      document.getElementById("C_Date").value =ds;
        }
    </script>
    <script>
        function ValidateDate()
        {
            
var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date();
            var ds=d2;//to date yyyy-MM-dd (taken currentdate)
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
      document.getElementById("C_Date").value =ds;
          
          var Prof=document.getElementById("Prof").value;
             if (!Prof.match(/^[a-zA-Z ]+$/)) 
    {
        alert('Profession Should be alphabets ');
        return false;
    }
       var Surgery=document.getElementById("Surgery").value;
             if (!Surgery.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Surgery  Should be alphabets ');
        return false;
    }
        var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    } 
    var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    }
      var Weight=document.getElementById("Weight").value;
              if(!Weight.match(/^\d{1,3}$/))  
    {
        alert(' Weight  Should be 1 to 3 Digits ');
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

                            <li class="nav-item ">
                                <a class="nav-link" href="User_Phr.jsp">Add Health Information </a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="Add_Recprds.jsp">Add Reports</a>
                            
                            </li>
                         

                             <li class="nav-item ">
                                <a class="nav-link" href="logout1.jsp">Logout</a>
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
			
			
			<!-- /Header -->
			
			<div id="page">
				<div class="container">
					
                                            <center>
						
                                                
                                                
                                                <div class="container1">
             
                    <section id="content">
                                                
                                                
						
							<form name="form" enctype="multipart/form-data" action="Add_Report" method="post" onsubmit="return ValidateDate();">
                                  <a class="navbar-brand d-none d-lg-block"> ADD REPORT</a> 
                                                            <br>
                              
                                                            
                            <table>
                                <tr>
                                     <%
                                                 String ano=(String)session.getAttribute("email1");
                                                %>
                                    <td class="input-group">
                                        <label for="AADHAR CARD NO">AADHAR CARD NO</label>
                                        <input type="text" value="<%=ano%>" name="Ano" readonly>
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                    <%
                                Date dd=new Date();
                                SimpleDateFormat std=new SimpleDateFormat("yyyy-MM-dd");
                                %>                        
                                   <tr>
                                    <td class="input-group">
                                        <label for="DATE">DATE</label>
                                        <input type="text" id="C_Date" name="cdate" value="<%=std.format(dd) %>" readonly>
                                        <div class="error"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="input-group">
                                        <label for="REPORT">REPORT</label>
                                        <select name="rprt">
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                                                 </select>
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="input-group">
                                        <label for="DESCRIPTION">DESCRIPTION</label>
                                        <input type="text" id="des" name="des" value="" required>
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                <tr>
                                    <td class="input-group">
                                        <label for="IMAGE">IMAGE</label>
                                        <input type="file" id="file1" name="file1" accept="image/*" required>
                                        <div class="error"></div>
                                    </td>
                                </tr>      
                                                          
                            </table>
                                                 
                           
                     <button type="submit" value="ADD DETAILS">ADD DETAILS</button>
                                                             
                                   </form>                    
                          </section> 
                              </div>
		<!--<div id="wrapper">
			
			
			
			<div id="page">
				<div class="container">
					<div class="row">
                                            <center>
						
							<section id="content" >
								 <form name="form" enctype="multipart/form-data" action="Add_Report" method="post" onsubmit="return ValidateDate();">
                                    <br><br>
                                     <a class="navbar-brand d-none d-lg-block">
                           ADD REPORT
                                
                            </a>
                                    
                                    <br>
                                    <br>
 <table border="3">     
                                        <tr>
                                           
                                                <td>Aadhar Card No: </td>
                                                <td><input type="text" value="<%=ano%>" name="Ano" readonly></td>
                                            
                                        </tr>
                                    </table>
                                    <table border="3">     
                                       
                                            
                                             
                                         <tr>
                                             <td>Date</td><td>:</td><td><input type="text" id="C_Date" name="cdate" value="<%=std.format(dd) %>" readonly></td> 
                                         </tr>
                                         <tr>
                                             <td>Report Type</td><td>:</td><td><select name="rprt">
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                                                 </select></td>
                                         </tr>
                                         <tr><td>Description</td><td>:</td><td><input type="text" id="des" name="des" value="" required></td></tr>
                                         <tr><td>Image</td><td>:</td><td><input type="file" id="file1" name="file1" accept="image/*" required></td></tr>
                                         <p>
                               
                                         </table><br><br>
                                        <input type="submit" value="ADD DETAILS">
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
                            </center>
							 
								
							</section>
                                            </center>   
						
					</div>

				</div>	
			</div>

			

			
			
		</div>
	</body>
</html>
