
<%@page import="java.util.UUID"%>
<%@page import="java.util.UUID"%>
<%@page import="java.util.UUID"%>
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
            function displayDate()
            {

                var newdate = document.getElementById("inputDate").value;
                var d1 = new Date(newdate); //from date yyyy-MM-dd
                var d2 = new Date();
                var ds = d2;//to date yyyy-MM-dd (taken currentdate)
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
                    Years = Years - 1;
                Months = Months - (Years * 12);
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
                document.getElementById("C_Date").value = ds;
            }
        </script>
        <script>
            function ValidateDate()
            { 
 
                var doctor1 = document.getElementById("doctor").value;
                if (doctor1 == "")
                {
                    alert('doctor cant be empty');
                    return false;
                }
                var doctor11 = /^[A-Za-z\s]+$/.test(doctor1);
                if (!doctor11)
                {
                    alert('Doctor field should be in Alphabet');
                    return false;
                }
                var Height1 = document.getElementById("Height").value;
                if (Height1 == "")
                {
                    alert('Height cant be empty');
                    return false;
                }

                var Weight1 = document.getElementById("Weight").value;

                if (Weight1 == "")
                {
                    alert('Weight cant be empty');
                    return false;
                }

                var sugar1 = document.getElementById("sugar").value;
                if (sugar1 == "")
                {
                    alert(' Before sugar cant be empty');
                    return false;
                }

                var asugar1 = document.getElementById("asugar").value;
                if (asugar1 == "")
                {
                    alert(' After sugar cant be empty');
                    return false;
                }
                var comp1 = document.getElementById("comp").value;
                if (comp1 == "")
                {
                    alert('compalint cant be empty');
                    return false;
                }
                 if (!comp1.match(/^[a-zA-Z]+$/)) 
                {
                    alert('compalint field should be in Alphabet');
                    return false;
                }
                var Surgery1 = document.getElementById("Surgery").value;
                if (Surgery1 == "")
                {
                    alert('Surgery cant be empty');
                    return false;
                }
                if (!Surgery1.match(/^[a-zA-Z]+$/)) 
                {
                    alert('Surgery field should be in Alphabet');
                    return false;
                }
                var treat_given1 = document.getElementById("treat_given").value;
                if (treat_given1 == "")
                {
                    alert('Treatment cant be empty');
                    return false;
                }
                if (!treat_given1.match(/^[a-zA-Z ]+$/)) 
                {
                    alert('Treatment field should be in Alphabet');
                    return false;
                }
                var treat_days1 = document.getElementById("treat_days").value;
                if (treat_days1 == "")
                {
                    alert('Treatment days cant be empty');
                    return false;
                }
                var sugg1 = document.getElementById("sugg").value;
                if (sugg1 == "")
                {
                    alert('Suggested Medicines cant be empty');
                    return false;
                }
                if (!sugg1.match(/^[a-zA-Z ]+$/)) 
                                {
                    alert('Suggested Medicines field should be in Alphabet');
                    return false;
                }
                var cmnt1 = document.getElementById("cmnt").value;
                if (cmnt1 == "")
                {
                    alert('Comments cant be empty');
                    return false;
                }
               if (!cmnt1.match(/^[a-zA-Z ]+$/))       
                                {
                    alert('Comments Medicines field should be in Alphabet');
                    return false;
                }
                var allergy1 = document.getElementById("all").value;
                if (allergy1 == "")
                {
                    alert('allergy cant be empty');
                    return false;
                }
        if (!allergy1.match(/^[a-zA-Z]+$/))        
                        {
                    alert('allergy1 field should be in Alphabet');
                    return false;
                }
                  
                return  true;
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
                                <a class="nav-link" href="User_Phr.jsp">Add Health Information </a>
                            </li>

                            <li class="nav-item ">
                                <a class="nav-link" href="Add_Recprds.jsp">Add Reports</a>
                            

                         

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

            
            <br>
            <div id="page">
                <div class="container1">
                
                                
                             <div class="container1">
                <center>
                    <section id="content">
                        <a class="navbar-brand d-none d-lg-block">
                                ADD PERSONAL HEALTH RECORD INFORMATION
                                
                            </a> 
                        
                      <form action="Add_Phr" id="addHealthRecordForm" method="post" onsubmit="return ValidateDate();">
                            <table>
                                <tr>
                                    <%
                                            String ano = (String) session.getAttribute("email1");
                                        %>
                                    <td class="input-group">
                                        <label for="AADHAR CARD NO">AADHAR CARD NO</label>
                                       <input type="text" value="<%=ano%>" id="aadhar" name="Ano" readonly ></td>
                                        <div class="error"></div>
                                    </td>
                                </tr>
                                 <%
                                        Date dd = new Date();
                                        SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd");
                                    %>
                                <tr>  
 <td class="input-group">
 <label for="DATE">DATE</label>
<input  name="inputDate" value="<%=std.format(dd)%>" id="inputDate"readonly />
 <div class="error"></div>
 </td>
  <pre><script>
            $('#inputDate').DatePicker({
                format: 'yyyy-MM-dd',
                date: $('#inputDate').val(),
                current: $('#inputDate').val(),
                starts: 1,
                position: 'r',
                maxDate: "+1D",
                onBeforeShow: function() {
                    $('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
                },
                onChange: function(formated, dates) {
                    $('#inputDate').val(formated);
                    if ($('#closeOnSelect input').attr('checked')) {
                        $('#inputDate').DatePickerHide();
                    }
                }
            });
        </script></pre>
 
 
                                </tr>
                                
                                <tr>
 <td class="input-group">
 <label for="HOSPITAL NAME">HOSPITAL NAME</label>
 <input type="text" value="<%=session.getAttribute("provider1")%>" name="U_Name" id="hospital"  readonly  > <td><input type="checkbox" name="cb1" id="cb" value="1" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                             
 <td class="input-group">
 <label for="CONSULTANT DOCTOR">CONSULTANT DOCTOR</label>
<input type="text" value="" id ="doctor" name="U_Id" ><td><input type="checkbox" name="cb2" id="cb" value="2" style="width:30px;" ></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                         
 <td class="input-group">
 <label for="HEIGHT(CM)">HEIGHT(CM)</label>
<input type="text"  name="Height" id="Height" onkeypress="return number(event)" maxlength="3" ><td><input type="checkbox" name="cb3" id="cb" value="3" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                               
                               
                                <tr>
 <td class="input-group">
 <label for="WEIGHT">WEIGHT</label>
 <input type="text" value=""  name="Weight" onkeypress="return number(event)" id="Weight" maxlength="2" ><td><input type="checkbox" name="cb4" id="cb" value="4" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                            
 <td class="input-group">
 <label for="BP LEVEL">BP LEVEL</label>
 <select  name="BB" id="BB">
                                                <option>0-120</option>
                                                <option>120-139</option>
                                                <option>140-159</option>
                                                <option>160-More</option></select> <td><input type="checkbox" name="cb5" id="cb" value="5" style="width:30px;"></td>  
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
 <th rowspan="2">SUGAR LEVEL</th> 
  <td class="input-group">     
 <label for="BEFORE FOOD">BEFORE FOOD</label>
<input type="text" value="" name="bsugar" id="sugar" vertical-align: top" onkeypress="return number(event)" maxlength="3" > <td><input type="checkbox" name="cb6" id="cb" value="6" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>
 
 <td class="input-group">
 <label for="AFTER FOOD">AFTER FOOD</label>
<input type="text"  value="" name="asugar" id="asugar" vertical-align: top" onkeypress="return number(event)" maxlength="3" > <td><input type="checkbox" name="cb7" id="cb" value="7" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>             
  <td class="input-group">
 <label for="COMPLAINT">COMPLAINT</label>
 <input id="comp" name="comp" > <td><input type="checkbox" name="cb8" id="cb" value="8" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
 <label for="ANY SURGERY">ANY SURGERY</label>
<input name="Surgery" id="Surgery"> <td><input type="checkbox" name="cb9" id="cb" value="9" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                  <tr>                 
 <td class="input-group">
 <label for="TREATMENT GIVEN">TREATMENT GIVEN</label>
<input  name="treat_given" id="treat_given" > <td><input type="checkbox" name="cb10" id="cb" value="10" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                  <tr>                 
  <td class="input-group">
 <label for="TREATMENT DAYS">TREATMENT DAYS</label>
 <input type="text" value="" name="treat_days" id="treat_days"  onkeypress="return number(event)" maxlength="2"> <td><input type="checkbox" name="cb11" id="cb" value="11" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                  <tr>                 
  <td class="input-group">
 <label for="SUGGESTED MEDICINES">SUGGESTED MEDICINES</label>
<input  value="" name="sugg" id="sugg"> <td><input type="checkbox" name="cb12" id="cb" value="12" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                  <tr>                 
  <td class="input-group">
 <label for="COMMENTS">COMMENTS</label>
<input  name="cmnt" id="cmnt" > <td><input type="checkbox" name="cb13" id="cb" value="13" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
                                <tr>                 
  <td class="input-group">
 <label for="ALLERGIES(IF ANY)">ALLERGIES(IF ANY)</label>
 <input name="allergy" id="all" > <td><input type="checkbox" name="cb14" id="cb" value="14" style="width:30px;"></td>
 <div class="error"></div>
 </td>
                                </tr>
</table>
 <button type="submit" value="ADD DETAILS">SUBMIT </button>
                            
                        <%
                                String msg = (String) session.getAttribute("msg");
                                if (msg != null) {%>

                            <script>
            alert('<%=msg%>');
                            </script>
                            
                            
                            
                            


                            <%

                                }
                                session.removeAttribute("msg");

                            %>
                      
                      </form>
                    
                    </section>
                </center>
            </div>
        </div>
    </div>   
            
            
            
            
            
            
            
            <!--<div id="wrapper">

            <!-- Header 
           
            <!-- /Header 

            <div id="page">
                <div class="container">
                    <div class="row">
                        <center>
                            <form action="Add_Phr" method="post" onsubmit="return ValidateDate();">

                                <br><br>
                                  <a class="navbar-brand d-none d-lg-block">
                          ADD PERSONAL HEALTH RECORD INFORMATION
                                
                            </a>
                                
                                <br>
                                <br>
                                <table border="3">     
                                    <tr>
                                        
                                        <td>Aadhar Card No </td>
                                        <td>:</td>
                                        <td><input type="text" value="<%=ano%>" name="Ano" readonly style="width:195px;"></td>

                                    </tr>



                                   
                                    <tr>
                                        <td>Date</td><td>:</td><td> <p>
                                                <input  name="inputDate" value="<%=std.format(dd)%>" id="inputDate"   style="width: 196px;" readonly />
                                            <pre><script>
            $('#inputDate').DatePicker({
                format: 'yyyy-MM-dd',
                date: $('#inputDate').val(),
                current: $('#inputDate').val(),
                starts: 1,
                position: 'r',
                maxDate: "+1D",
                onBeforeShow: function() {
                    $('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
                },
                onChange: function(formated, dates) {
                    $('#inputDate').val(formated);
                    if ($('#closeOnSelect input').attr('checked')) {
                        $('#inputDate').DatePickerHide();
                    }
                }
            });
        </script></pre>
                                    <tr>
                                        <td>Hospital Name</td><td>:</td><td><input type="text" value="<%=session.getAttribute("provider1")%>" name="U_Name"   style="width: 204px;" readonly  ><input type="checkbox" name="cb" id="cb" value="1"></td>
                                    </tr>
                                    <tr>
                                        <td>Consultant Doctor</td><td>:</td><td><input type="text" value="" id ="doctor" name="U_Id" style="width: 204px;" ><input type="checkbox" name="cb" id="cb" value="2"></td>
                                    </tr>			
                                    <tr>
                                        <td>Height(cm) </td><td>:</td><td><input type="text"  name="Height" id="Height" onkeypress="return number(event)" style="width: 204px;" maxlength="3" ><input type="checkbox" name="cb" id="cb" value="3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Weight </td><td>:</td><td><input type="text" value=""  name="Weight" onkeypress="return number(event)" id="Weight" style="width: 204px;" maxlength="2" ><input type="checkbox" name="cb" id="cb" value="4"></td>
                                    </tr>


                                    <tr>
                                        <td>BP Level </td><td>:</td><td><select  name="BB" id="BB" style="width: 204px;">
                                                <option>0-120</option>
                                                <option>120-139</option>
                                                <option>140-159</option>
                                                <option>160-More</option></select><input type="checkbox" name="cb" id="cb" value="5"></td>
                                    </tr>
                                    <tr>
                                        <th rowspan="2">Sugar Level:</th> 


                                        <td> Before Food :</td>
                                        <td><input type="text" value="" name="bsugar" id="sugar" style="width: 204px;vertical-align: top" onkeypress="return number(event)" maxlength="3" ><input type="checkbox" name="cb" id="cb" value="6"></td>
                                    </tr>
                                    <tr><td>After Food:</td><td> <input type="text"  value="" name="asugar" id="asugar" style="width: 204px;vertical-align: top" onkeypress="return number(event)" maxlength="3" ><input type="checkbox" name="cb" id="cb" value="7"></td></tr>




                                    <tr><td>Complaint</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="comp" name="comp" ></textarea><input type="checkbox" name="cb" id="cb" value="8"></td></tr>
                                    <tr>
                                        <td>Any Surgery </td><td>:</td><td><textarea style="height:69px; width: 204px" name="Surgery" id="Surgery"  ></textarea><input type="checkbox" name="cb" id="cb" value="9"></td>
                                    </tr> 
                                    <tr>
                                        <td>Treatment Given </td><td>:</td><td><textarea style="height: 69px; width: 204px" name="treat_given" id="treat_given" ></textarea><input type="checkbox" name="cb" id="cb" value="10"></td>
                                    </tr>
                                    <tr>
                                        <td>Treatment Days </td><td>:</td><td><input type="text" value="" name="treat_days" id="treat_days" style="width: 204px;" onkeypress="return number(event)" maxlength="2"><input type="checkbox" name="cb" id="cb" value="11"></td>
                                    </tr>
                                    <tr>
                                        <td>Suggested Medicines </td><td>:</td><td><textarea style="height: 69px; width: 204px" value="" name="sugg" id="sugg"></textarea><input type="checkbox" name="cb" id="cb" value="12"></td>
                                    </tr> 
                                    <tr>
                                        <td>Comments </td><td>:</td><td><textarea style="height:69px; width: 204px" name="cmnt" id="cmnt" ></textarea><input type="checkbox" name="cb" id="cb" value="13"></td>
                                    </tr>     
                                    <tr>
                                        <td>Allergies(if any) </td><td>:</td><td><textarea style="height: 69px; width: 204px" name="allergy" id="all" ></textarea><input type="checkbox" name="cb" id="cb" value="14"></td>
                                    </tr>
                                     <!--<tr>
                                        <td>Apoitment Date </td><td>:</td><td><input type="text" value="" id="datepicker" readonly name="apdate" style="width: 204px;"><input type="checkbox" name="cb" id="cb" value="15"></td>
                                    </tr>
                                </table><br><br>
                                <input type="submit" value="ADD DETAILS">
                            </form>-->
                           
                        </center>



                        </section>
                        </center>   

                    </div>

                </div>	
            </div>

          

           

        </div>
    </body>
</html>