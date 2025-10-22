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
        <script>
            videojs.options.flash.swf = "video-js.swf";
        </script>
       <script type="text/javascript">
            var specialKeys = new Array();
            specialKeys.push(8); //Backspace
            function IsNumeric(e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                document.getElementById("error").style.display = ret ? "none" : "inline";
                return ret;
            }
            function IsNumeric1(e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                document.getElementById("error1").style.display = ret ? "none" : "inline";
                return ret;
            }

            function IsNumeric2(e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                document.getElementById("error2").style.display = ret ? "none" : "inline";
                return ret;
            }
            function form(f)
            {

                if (document.getElementById('cardtype').selectedIndex == 0)
                {
                    alert("Select your card type")
                    return false;
                }
                else if (document.getElementById('cardnum').value == "")
                {
                    alert("Enter your card number")
                    return false;
                }
                else if (document.getElementById('amt').value == "")
                {
                    alert("Enter Amount")
                    return false;
                }

                else if (document.getElementById('amt1').value == "")
                {
                    alert("Enter your card number")
                    return false;
                }
                else if (document.getElementById('year').selectedIndex == 0)
                {
                    alert("Enter your card Expiry year")
                    return false;
                }
                else if (document.getElementById('cvv').value == "")
                {
                    alert("Enter your card CVV number")
                    return false;
                }
                else if (document.getElementById('scode').value == "")
                {
                    alert("Enter your secret pin number")
                    return false;
                }
                else
                {
                    return true;
                }

            }


            function onlyAlphabets(e, t) {

                try {

                    if (window.event) {

                        var charCode = window.event.keyCode;
                    }

                    else if (e) {

                        var charCode = e.which;
                        //  alert(charCode);

                    }

                    else {
                        return true;
                    }
                    if ((charCode == 8) || (charCode == 46))
                        return true;
                    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                        return true;

                    else
                        return false;

                }

                catch (err) {

                    alert(err.Description);

                }

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
                                <a class="nav-link" href="banking_home.jsp">Home</a>
                            </li>

                            

                            
                             <li class="nav-item active">
                                <a class="nav-link" href="payment.jsp">Payment Process</a>
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
             <br>
            <br>
            <br>
            <div id="wrapper">
			
			
			
			<div id="page">
				<div class="container">
					
                                          <center>
                                                 <%
            String name=(String)session.getAttribute("uname");
            if(name!="")
            {
        %>
        <%
            }
        %>    
                                    
                                   
						
						 <section id="content">
                                                
                                                
						
							<form action="payment1" onsubmit="return form(this);" method="post">
                                  
                                                            <br>
                                                            
                                                             <a class="navbar-brand d-none d-lg-block"> PAYMENT INFORMATION </a>                                 
                            <table>
                                <tr>
                                    <td class="input-group">
                                        <label for="CARD TYPE">CARD TYPE</label>
                                      <select name="ctype" id="cardtype">
                                          <option>select your card type</option>
                                        <option>Visa</option>
                                        
                                    </select>
                                        <div class="error"></div>
                                    </td>
                                </tr>                                 
                                                            
                                   <tr>
                                    <td class="input-group">
                                        <label for="ENTER YOUR CARD NUMBER">ENTER YOUR CARD NUMBER</label>
                                        <input type="text" id="cardnum" name="cnum"placeholder="Card Number"  maxlength="12" onkeypress="return IsNumeric(event);">
                                        <div class="error"></div>
                                    </td>
                                </tr>                          
                                         <tr>
                                    <td class="input-group">
                                        <label for="ENTER YOUR AMOUNT">ENTER YOUR AMOUNT</label>
                                        <input type="text" id="amt" name="amt" placeholder="enter Amount" maxlength="6" onkeypress="return IsNumeric(event);">
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                
                                 <tr>
                                    <td class="input-group">
                                        <label for="ADMIN ACCOUNT NUMBER">ADMIN ACCOUNT NUMBER</label>
                                        <input type="text" id="amt1"name="fnum"placeholder="Admin Account number"maxlength="12" onkeypress="return IsNumeric(event);">
                                        <div class="error"></div>
                                    </td>
                                </tr> 
                                 <input type="hidden" value="<%=session.getAttribute("uname")%>" name="from">
                            </table>  
                            
                               
                    <button type="submit"style="margin-left:5px" id="close-image"><img src="images/ProceedToPayment.jpg"></button>
                                                
                                  <p style="font-size: initial;color: black;font-weight: lighter;margin-left:10px"></p>


                                    <p style="font-size: initial;color: black;margin-left:10px"></p>
                                    <input type="hidden" id="cvv" placeholder="CVV" style="height: 30px;width:50px;margin-left:10px;" onkeypress="return IsNumeric1(event)" maxlength="3">

                                    <input type="hidden" id="scode" placeholder="pin" style="height: 30px;width:50px;margin-left:10px;" onkeypress="return IsNumeric2(event)"maxlength="4">
                                    <span id="error2" style="color: Red; font-size: 15px; display: none"></span><br>
                                    <br>                       
                                                        
                                                        </form></center>
                                                             
        </section>              
                                                </div> 	
            
            
            
            
		<!--<div id="wrapper">
			
			
			<!-- /Header 
			
			<div id="page">
				<div class="container">
					
                                          
						
							<section id="content" >
                                                            
								
                                                            <center> <form action="payment1" onsubmit="return form(this);" method="post"><br>

                                                                 <center>  <h4><font face="Algerian" color="#0C6E69">PAYMENT INFORMATION</font></h4></center>
                                                                 <br><br>
                                  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font face="Georgia" color="black">Card Type </font>:<select name="ctype" id="cardtype"style="height: 30px;width:200px;font-size: 15px;margin-left:10px;">
                                        <option>select your card type</option>
                                        <option>Visa</option>
                                        
                                    </select><br><br>
                                  <font face="Georgia" color="black"> Enter Your Card Number</font>: <input type="text" id="cardnum" name="cnum"placeholder="Card Number" style="height: 30px;width:200px;;margin-left:10px;" maxlength="12" onkeypress="return IsNumeric(event);"><br><br>

                                   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font face="Georgia" color="black"> Enter Your Amount</font>:<input type="text" id="amt" name="amt" placeholder="enter Amount" style="height: 30px;width:200px;;margin-left:10px;" maxlength="6" onkeypress="return IsNumeric(event);"><br><br>

                                   <font face="Georgia" color="black"> Admin Account Number</font>:<input type="text" id="amt1"name="fnum"placeholder="Admin Account number" style="height: 30px;width:200px;;margin-left:10px;" maxlength="12" onkeypress="return IsNumeric(event);">
                                    <span id="error" style="color: Red; font-size: 15px; display: none"></span><br><br><br>
                                    <input type="hidden" value="<%=session.getAttribute("uname")%>" name="from">
                                    <button type="submit"style="margin-left:5px" id="close-image"><img src="images/ProceedToPayment.jpg"></button>
                                    <p style="font-size: initial;color: black;font-weight: lighter;margin-left:10px"></p>


                                    <p style="font-size: initial;color: black;margin-left:10px"></p>
                                    <input type="hidden" id="cvv" placeholder="CVV" style="height: 30px;width:50px;margin-left:10px;" onkeypress="return IsNumeric1(event)" maxlength="3">

                                    <input type="hidden" id="scode" placeholder="pin" style="height: 30px;width:50px;margin-left:10px;" onkeypress="return IsNumeric2(event)"maxlength="4">
                                    <span id="error2" style="color: Red; font-size: 15px; display: none"></span><br>
                                    <br >-->
                               
                                                               
                                                            
                                                            
                                                            
                                                            
                                                            
							
                                           
					</div>

				</div>	
			</div>

			<!-- Footer -->
			
			
		
	</body>
</html>