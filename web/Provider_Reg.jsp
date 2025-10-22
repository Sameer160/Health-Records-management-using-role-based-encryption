

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

        <!--
        
        TemplateMo 566 Aadhar Card Based Health Records
        
        https://templatemo.com/tm-566-medic-care
        
        -->
        <style>
            /* Define animations */
            @keyframes fadeInDown {
                from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
            }
            /* Apply styles */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            form {
                width: 60%;
                margin: 0 auto;
                margin-top: 50px;
                margin-bottom: 50px;
                padding: 20px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                animation: fadeInDown 0.5s ease-in-out;
            }
            h2 {
                text-align: center;
            }
            label {
                display: flex;
                margin-bottom: 5px;
            }
            input[type="text"], input[type="number"], input[type="address"], input[type="file"], input[type="Password"], input[type="submit"] {
                width: 100%;
                padding: 10px 2px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                transition: border-color 0.3s ease-in-out;
            }
            select{
                width:100%;
                padding:10px 2px;           
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            input[type="text"]:focus, input[type="password"]:focus {
                border-color: #0C6E69;
            }
            input[type="submit"] {
                background-color: #0C6E69;
                color: #fff;
                border: none;
                cursor: pointer;
                position: center;
                transition: background-color 0.3s ease-in-out;
            }
            input[type="submit"]:hover {
                background-color: #08554F;
               
            }

            form h2{
                text-align: center;
                color: blue;
            }
            
        </style>    


        <script>
            function Hide()
            {
                document.getElementById("test").style.display = "none";
            }
        </script>   

        <script>
            function Selection_Process()
            {

                var match1 = document.getElementById("ques").value;
                if (match1.match("4.Others"))
                {
                    var qstn = prompt("Please Enter Security Question", "Enter Here");
                    if (qstn != null)
                    {


                        document.getElementById("other1").value = qstn + "?";
                        document.getElementById("test").style.display = "block";

                    }
                }
                else
                {
                    document.getElementById("test").style.display = "none";
                }

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

                        <li class="nav-item active">
                            <a class="nav-link" href="Provider_Reg.jsp">Hospital Register</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Provider.jsp">Hospital Login</a>
                        </li>




                        <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Logout</a>
                        </li>

                    </ul>
                </div>

            </div>
        </nav>



        

        <form action="ProviderReg" method="post" onsubmit="return Validate_Data(this)">
            <h2> HOSPITAL REGISTRATION</h2>
            <label for="Hospital Name">Hospital Name</label>
            <input type="text" id="hname" name="H_Name">

            <label for="Provider Name">Provider Name</label>
            <input type="text" id="pname" name="P_Name">


            <label for="License Number">License Number</label>
            <input type="text" id="lnum" name="UP_Name">


            <label for="Password">Password</label>
            <input type="password" id="pass" name="P_Pass">

            <label for="Confirm Password">Confirm Password</label>
            <input type="password" id="rpass" name="C_Pass">

            <label for="Security Question">Security Question</label>
            &nbsp;<select name="sec" id="ques" onchange="Selection_Process();">
                <option>What is First Mobile Number?</option>
                <option>What is Your First Pet Name?</option>
                <option>Where were you Born?</option>
            </select>

            <input type="hidden" name="other1" id="other1" value="" readonly>

            <label for="Enter Answer">Your Answer</label>
            <input type="text" name="ans" id="ans" value="">

            <label for="Address">Address</label>
            <input type="text" id="ad" name="P_Adrr">

            <label for="City">City</label>
            <input type="text" id="cit" name="city">

            <label for="Pincode">Pincode</label>
            <input type="text" id="pcode" name="pin">

            <label for="Mail_Id">Mail_Id</label>
            <input type="text" id="mail" name="Mail">

            <label for="Year Of Starting">Year Of Starting</label>
            <input type="text" id="yer" name="year">


            <button type="submit">Register</button>
        </form>

        <!-- Your existing script tags -->








        <!-- Your existing script tags -->



        <!--<center><font face="Georgia" color="#0C6E69"><h4>HOSPITAL REGISTRATION</h4></font><br>
            <br>

            <table border="3">
                <tr><td><font face="Georgia" color="black"> Hospital Name</font></td><td>:</td><td><input type="text" value="" id="hname" name="H_Name" style="width: 204px;" ></td></tr>
                <tr><td><font face="Georgia" color="black"> Provider Name</font></td><td>:</td><td><input type="text" value="" id="pname" name="P_Name" style="width: 204px;" ></td></tr>
                <tr><td> <font face="Georgia" color="black">License Number</font></td><td>:</td><td><input type="text" value="" id="lnum" name="UP_Name" style="width: 204px; required " onkeypress="return  number(event)" maxlength="6"></td></tr>
                <tr><td> <font face="Georgia" color="black"> PassWord</font></td><td>:</td><td><input type="password" value="" id="pass" name="P_Pass" style="width: 204px;" ></td></tr>
                <tr><td><font face="Georgia" color="black"> Confirm Password</font></td><td>:</td><td><input type="password" value="" id="rpass" name="C_Pass" style="width: 204px;" ></td></tr> 
                <tr><td><font face="Georgia" color="black">Security Question</font></td><td>:</td><td><select name="sec" id="ques" onchange="Selection_Process();"><option>What is First Mobile Number?</option>
                            <option>What is Your First Pet Name?</option>
                            <option>Where were you Born?</option>
                        </select></td></tr>
                <tr id="test">

                    <td>
                        <input type="hidden" name="other1" id="other1" value="" readonly>
                    </td>
                </tr>
                <tr>
                    <td>
                       <font face="Georgia" color="black"> Enter Answer </font>
                    </td>
                    <td>:</td>
                    <td>
                        <input type="text" name="ans" id="ans" value="">
                    </td>
                </tr>
                <td> <font face="Georgia" color="black"> Address</font></td><td>:</td><td><textarea value="" id="ad" name="P_Adrr" style="width: 204px; height: 76px;" ></textarea></td></tr>                                        
                <tr><td><font face="Georgia" color="black">  City </font></td><td>:</td><td><input type="text" value="" id="cit" name="city" style="width: 204px;" ></td></tr>
                <tr><td> <font face="Georgia" color="black"> Pincode </font></td><td>:</td><td><input type="text" value="" id="pcode" name="pin" maxlength="6" style="width: 204px;" onkeypress="return number(event)"></td></tr>
                <tr><td> <font face="Georgia" color="black"> Mail_Id </font></td><td>:</td><td><input type="text" value="" id="mail" name="Mail" style="width: 204px;" ></td></tr>
                <tr><td> <font face="Georgia" color="black"> Year Of Starting</font> </td><td>:</td><td><input type="text" value="" id="yer" name="year" maxlength="4" style="width: 204px;" onkeypress="return number(event)" maxlength="4" ></td></tr>


            </table>

            <br><br>
            <input type="submit" value="Register" >   </center>-->
    </form>
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

<!-- Footer -->
<div id="footer">
    <div class="container">
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
            function Validate_Data(f)
            {
                var number = "/^[a-zA-Z ]+$/";
                var charreg = ""
                var numreg = "";
                var hname = document.getElementById("hname").value;
                if (hname == "")
                {
                    alert('Enter Hospital Name should not be empty');
                    return false;
                }
                if (!hname.match(/^[a-zA-Z ]+$/))
                {
                    alert("Name field should be in Character")
                    return false;
                }
                var pname = document.getElementById("pname").value;
                if (pname == "")
                {
                    alert('Enter Provider Name');
                    return false;
                }
                if (!pname.match(/^[a-zA-Z]+$/))
                {
                    alert("provider field should be in Alphabet")
                    return false;
                }
                var lnum = document.getElementById("lnum").value;
                var len = lnum.length;

                if (lnum == "")
                {
                    alert('Enter license number');
                    return false;
                }
                if (!lnum.match(/^[0-9]+$/))
                {
                    alert(" license number only can be enter")
                    return false;
                }
                if ((len < 6) || (len > 6))
                {
                    alert(" license number Should Contain 6 Numbers");
                    //document.getElementById("accno").style.border='1px solid red';
                    // document.getElementById("lnum").focus();
                    return false;
                }
                var pass = document.getElementById("pass").value;

                if (pass === "") {
                    alert('Password cant be empty');
                    return  false;

                }
                if (!pass) {
                    alert('Invaild password');
                    return false;
                }
                var rpass = document.getElementById("rpass").value;
                if (rpass === "") {
                    alert('Confirm Password cant be empty');
                    return  false;

                }
                if (!rpass) {
                    alert('Invalid Confirm Password ');
                    return false;
                }

                if (pass != rpass)
                {
                    alert('Please give Correct password');
                    return false;
                }
                var ans1 = document.getElementById("ans").value;
                if (ans1 == "")
                {
                    alert('Answer cant be empty');
                    return false;
                }
                var ad = document.getElementById("ad").value;
                if (ad == "")
                {
                    alert('Enter Hospital Address');
                    return false;
                }
                var cit = document.getElementById("cit").value;
                if (cit == "")
                {
                    alert('City Cannot Be Empty');
                    return false;
                }
                if (!cit.match(/^[a-zA-Z]+$/))
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
                if (Mail == "")
                {
                    alert('Mail Id Cannot Be Empty');
                    return false;
                }

                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;
                if (!filter.test(Mail)) {
                    alert("Invalid Mail ID");
                    return false;
                }
                var yer = document.getElementById("yer").value;
                var len2 = yer.length;
                if (yer == "")
                {
                    alert('Enter Year Of Hospital');
                    return false;
                }

                if ((len2 < 4) || (len2 > 4))
                {
                    alert("year Should be Contain 4 Numbers");
                    //document.getElementById("accno").style.border='1px solid red';
                    // document.getElementById("lnum").focus();
                    return false;
                }








                return true;
            }

        </script>
    </div>
</div>

<!-- Copyright -->

</body>
</html>
