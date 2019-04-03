<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Application" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Account</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Mojo - Bootstrap 4 Multipurpose One Page Template" />
    <meta name="author" content="theme_xpress" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Futura:300,400,500,600,700,800,900|Source+Sans+Pro:300,400,600,700,900" rel="stylesheet" />

    <!-- css libraries -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/icofont.min.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/lightbox.css" rel="stylesheet" />
    <link href="css/hamburgers.min.css" rel="stylesheet" />

    <!-- main style -->
    <link href="style.css" rel="stylesheet" />
    <!-- responsive.css -->
    <link href="css/responsive.css" rel="stylesheet" />




    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            background-color: #fff;
        }

        #buttons {
            text-align: center;
        }

        #SAT #ACT {
            display: none;
        }

        .textareas {
            background-color: #fff;
        }

        #mainheader {
            /*background-color: #000000;*/
        }

        .form-control {
            margin-top: 0px;
            margin-right: 5px;
            margin-left: 5px;
            margin-bottom: 0px;
        }

        .content1 {
            text-align: left;
            width: 60%;
            margin-left: auto;
            margin-right: auto;
            font-size: 130%;
            color: #fff;
        }

        .row {
            margin-left: -.15em;
        }

        .pop {
            display: none;
        }

        .interests {
            display: inline;
        }
    </style>

    <script type="text/javascript">
        function displayGPA() {
            var item = document.getElementById("GPA");
            if (document.getElementById("YesGPA").checked) {
                item.style.display = "block";
            }
            else if (document.getElementById("NoGPA").checked) {
                item.style.display = "none";
            }
            else {
            }
        }
        function displaySAT() {
            var item = document.getElementById("SAT");
            if (document.getElementById("YesSAT").checked) {
                item.style.display = "block";
            }
            else if (document.getElementById("NoSAT").checked) {
                item.style.display = "none";
            }
            else {
            }
        }
        function displayACT() {
            var item = document.getElementById("ACT");
            if (document.getElementById("YesACT").checked) {
                item.style.display = "block";
            }
            else if (document.getElementById("NoACT").checked) {
                item.style.display = "none";
            }
            else {
            }
        }
        function UploadResume() {
            var item1 = document.getElementById("fileRes");
            var item2 = document.getElementById("textRes");
            if (document.getElementById("UploadResume").checked) {
                item1.style.display = "block";
            }
            else if (document.getElementById("TextResume").checked) {
                item2.style.display = "block";
            }
            else {
                item1.style.display = "none";
                item2.style.display = "none";
            }
        }
    </script>
</head>
<body class="contact text-center text-white text-uppercase">
    <form id="form1" runat="server">
        <div>
            <header class="main-header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg main-nav px-0">
                        <a class="navbar-brand" href="#home" rel="m_PageScroll2id">
                            <img src="img/tinylogo.png" alt="Logo" width="400" height="100" />
                        </a>
                        <button class="hamburger hamburger--collapse navbar-toggler" type="button" data-toggle="collapse" data-target="#mainMenu">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                        <div class="collapse navbar-collapse" id="mainMenu">
                            <ul class="navbar-nav ml-auto text-uppercase f1" >
                                    <li>
                                    <a href="RevisedLanding.aspx" rel="m_PageScroll2id">Home</a>
                                </li>
                                <li>
                                    <a href="Application.aspx" rel="m_PageScroll2id">Search Posts</a>
                                </li>
                                <li>
                                    <a href="CommunityTEST.aspx" rel="m_PageScroll2id" >Post Timeline</a>
                                </li>
                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id" >View Community Insights</a>
                                </li>
                                <li>
                                    <asp:linkbutton runat="server" ID="logout" onclick="LogOutUser" rel="m_PageScroll2id">Logout</asp:linkbutton>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- /.container -->
            </header>
        </div>
           


        <%--END HEADER LINK--%>

        <br />
        <br />
        <br />
        <br />


        <div>
            <div class="content1">
                <h1>Cued-In Common Application</h1>

                <br />
                <div id="name" class="row form-group">


                    <asp:Label ID="Label13" runat="server" ForeColor="White" Text="Name "></asp:Label>

                    <asp:TextBox ID="txtFirstName" runat="server" class="form-control col-sm-2" BackColor="White" MaxLength="50" placeholder="First Name.."></asp:TextBox>


                    <%--<asp:Label ID="Label14" runat="server" ForeColor="White" Text="Last Name"></asp:Label>--%>

                    <asp:TextBox ID="txtLastName" runat="server" class="form-control col-sm-2" BackColor="White" MaxLength="50" placeholder="Last Name.."></asp:TextBox>

                    &nbsp;&nbsp;&nbsp;
           
                <asp:TextBox ID="txtTest" runat="server" BackColor="White"></asp:TextBox>

                </div>

                <br />
                <br />

                <div id="contactInfo" class="form-group row">


                    <asp:Label ID="Label15" runat="server" ForeColor="White" Text="Email Address"></asp:Label>

                    <asp:TextBox ID="txtEmail" runat="server" class="form-control col-sm-2" BackColor="White"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Confirm Email Address"></asp:Label>

                    <asp:TextBox ID="txtConfirmEmail" runat="server" class="form-control col-sm-2" BackColor="White"></asp:TextBox>
                </div>

                <br />
                <br />

                <div id="DropDowns" class="row form-group">

                    <%-- <asp:Label ID="studentid" runat="server" ForeColor="White" Text="StudentID"></asp:Label>--%>

                    <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Student ID"></asp:Label>

                    <asp:DropDownList ID="ddStudentID" runat="server" class="form-control col-sm-1" DataSourceID="StudentID" DataTextField="StudentID" DataValueField="StudentID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="StudentID" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [StudentID] FROM [Student]"></asp:SqlDataSource>

                    <asp:Label ID="Label1" runat="server" Text="School ID" ForeColor="White"></asp:Label>

                    <asp:DropDownList ID="ddSchoolID" runat="server" class="form-control col-sm-1" DataSourceID="SchoolID" DataTextField="SchoolName" DataValueField="SchoolID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SchoolID" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [SchoolID], [SchoolName] FROM [School]"></asp:SqlDataSource>


                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="EmployerID"></asp:Label>


                    <asp:DropDownList ID="ddEmployer" runat="server" class="form-control col-sm-1" DataSourceID="EmpID" DataTextField="EmployerID" DataValueField="EmployerID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="EmpID" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [EmployerID] FROM [Employer]"></asp:SqlDataSource>


                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="OpportunityID"></asp:Label>


                    <asp:DropDownList ID="ddOpportunity" runat="server" class="form-control col-sm-1" DataSourceID="OppID" DataTextField="OpportunityID" DataValueField="OpportunityID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="OppID" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [OpportunityID] FROM [Opportunity]"></asp:SqlDataSource>

                </div>

                <div>
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Select Your Top 3 Interests"></asp:Label>

                    <div class="row">
                        <asp:DropDownList ID="ddInterest1" class="form-control col-sm-3" runat="server" DataSourceID="SqlDataSource1" DataTextField="InterestName" DataValueField="InterestName" SelectionMode="multiple"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [InterestName] FROM [Interest]"></asp:SqlDataSource>
                        <asp:DropDownList ID="ddInterest2" class="form-control col-sm-3" runat="server" DataSourceID="SqlDataSource1" DataTextField="InterestName" DataValueField="InterestName" SelectionMode="multiple"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [InterestName] FROM [Interest]"></asp:SqlDataSource>
                        <asp:DropDownList ID="ddInterest3" class="form-control col-sm-3" runat="server" DataSourceID="SqlDataSource1" DataTextField="InterestName" DataValueField="InterestName" SelectionMode="multiple"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [InterestName] FROM [Interest]"></asp:SqlDataSource>
                    </div>




                </div>

                <br />
                <br />
                <div>
                    <p>Do you want to submit your GPA?</p>
                    <label for="YesGPA">Yes</label>
                    <input type="radio" name="gpa" id="YesGPA" onclick="displayGPA()" />
                    <label for="NoGPA">No</label>
                    <input type="radio" name="gpa" id="NoGPA" onclick="displayGPA()" />
                </div>
                <div id="GPA" class="pop">
                    <p>What is your GPA?</p>
                    <span>0</span>
                    <input type="range" name="gpa" id="gpaNum" min="0" max="4.0" step=".1" onchange="showgpa.value=gpa.valueAsNumber" />

                    <!--calculated right on this like above-->

                    <span>4.0</span>
                    <br />
                    <span id="GPAout">GPA
               
                    <output for="gpaNum" name="showgpa">2.0</output></span>

                </div>
                <br />
                <div>
                    <p>Do you want to submit your SAT scores?</p>
                    <label for="YesSAT">Yes</label>
                    <input type="radio" name="SAT" id="YesSAT" onclick="displaySAT()" />
                    <label for="NoSAT">No</label>
                    <input type="radio" name="SAT" id="NoSAT" onclick="displaySAT()" />
                </div>
                <div id="SAT" class="row form-group pop">


                    <asp:Label ID="lblmathsat" runat="server" ForeColor="White" Text="SAT Math"></asp:Label>
                    <asp:TextBox ID="txtSATMath" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

                    <asp:Label ID="lblverbalsat" runat="server" ForeColor="White" Text="SAT Verbal"></asp:Label>

                    <asp:TextBox ID="txtSATVerbal" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

                </div>

                <br />
                <br />
                <div>
                    <p>Do you want to submit your ACT scores?</p>
                    <label for="YesACT">Yes</label>
                    <input type="radio" name="SAT" id="YesACT" onclick="displayACT()" />
                    <label for="NoACT">No</label>
                    <input type="radio" name="SAT" id="NoACT" onclick="displayACT()" />
                </div>
                <div id="ACT" class="row form-group pop">

                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="ACT Math"></asp:Label>

                    <asp:TextBox ID="txtACTMath" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

                    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="ACT English"></asp:Label>

                    <asp:TextBox ID="txtACTEnglish" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>

                    <asp:TextBox ID="txtACTReading" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
                    <asp:Label ID="Label11" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>

                    <asp:TextBox ID="txtACTScience" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
                    <asp:Label ID="Label12" runat="server" ForeColor="White" Text="ACT Composite"></asp:Label>

                    <asp:TextBox ID="txtComposite" runat="server" class="form-control col-sm-1" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
                    <br />
                </div>

                <br />
                <br />
                <div class="row form-group">
                    <label for="txtareaExperience">Experience in this Industry?</label>
                    <br />
                    <textarea id="txtareaExperience" class="textareas form-control" rows="6" cols="120"></textarea>
                </div>
                <%--<br />--%>
                <%--   <div class="form-group">
                    <p>Sumbit Your Resume</p>
                    <label for="UploadResume">Upload</label>
                    <input type="radio" name="rdResume" id="UploadResume" onclick="UploadResume()" />
                    <label for="TextResume">Text</label>
                    <input type="radio" name="rdResume" id="TextResume" onclick="UploadResume()" />
                </div>--%>
                <br />
                <div id="fileRes" class="form-group">
                    <label for="fileResume">Upload Resume File</label>
                    <br />
                    <input type="file" id="fileResume" />
                    <br />
                    <%--  </div>--%>
                    <%--<div id="textRes" class="form-group">
                    <label for="txtareaResume">Input Resume as Text</label>
                    <br />
                    <textarea id="txtareaResume" class="textareas form-control" rows="6" cols="120"></textarea>
                </div>--%>
                    <br />
                    <%-- <div class="form-group">
                    <p>Sumbit Your Cover Letter</p>
                    <label for="UploadCoverLetter">Upload</label>
                    <input type="radio" name="rdCover" id="UploadCoverLetter" onclick="UploadCoverLetter()" />
                    <label for="TextCoverLetter">Text</label>
                    <input type="radio" name="rdCover" id="TextCoverLetter" onclick="UploadCoverLetter()" />
                </div>--%>
                    <br />
                    <div id="fileCov" class="form-group">
                        <label for="fileCoverLetter">Upload Cover Letter File</label>
                        <br />
                        <input type="file" id="fileCoverLetter" />
                        <br />
                        <br />
                    </div>
                    <%--<div id="textCov" class="form-group pop">
                    <label for="txtareaCoverLetter">Input Resume as Text</label>
                    <br />
                    <textarea id="txtareaCoverLeter" class="textareas form-control" rows="6" cols="120"></textarea>
                </div>--%>

                    <div>
                        <label for="txtLaborLaws">Read The Virginia Labor Laws</label>
                        <br />
                        <textarea id="txtlabor Laws" class="textareas form-control" rows="15" cols="120" readonly="readonly">
VIRGINIA'S CHILD LABOR LAWS 

Laws ~ Hours ~ Job Types 
From the Virginia Department of Labor and Industry 
 
Do you plan to work part-time, after school, or during the summer? Then you need to be aware of the following guidelines regarding employment of minors, that is, anyone under the age of 18. 
 
Minimum age for a work permit: 
Generally, 14 years of age. 
 
The primary requirements for working minors: 
•	Must be 14 to work in most jobs  
•	Minors who are 14 and 15  o Must have a work permit  o Have limited hours they can work, and  o Cannot work in certain jobs  
•	Minors who are 16 and 17 do not have to obtain a work permit and do not have limited hours, but are barred from working in certain particularly hazardous jobs.  
  
Work permits are required before beginning work: 
For minors under age 16. 
 
Obtaining a work permit: 
See your school guidance counselor 
There are two forms – 
1.	Intention to Employ, which is completed by your employer and must clearly state the work you will be doing.  
2.	Permission for Employment, which is completed by your parent. It is a good idea for the parent and child to complete and sign the form in the school guidance office.   You 
may be asked to provide proof of age. Acceptable proof includes a birth certificate, or a Bible or baptismal record, or an insurance policy at least 12 months old, or a school record.  
 
The work permit has three copies: 
•	Take the first part to your employer, who will keep it at your work location.  
•	The second copy is kept at the school. 
•	The third copy is sent to the Department of Labor and Industry, along with the Intention to Employ and the Parent’s Permission Form. 
 
Note: If you change jobs, you will need a new work permit. 
 
Permits can be revoked or refused: 
If you received it by mistake or by misrepresenting any facts or evidence. 
 
 
HOURS TEENS MAY WORK IN VIRGINIA 
 
Twelve and thirteen years of age 
•	Newspaper carriers may not work during school hours, before 4:00 a.m., or after 7:00p.m.  
•	Work on a farm, garden or orchard is allowed outside of school hours with a parent’s express written permission.  
 
Fourteen and fifteen years of age 
•	Are limited to three (3) hours of work on a school day.  
•	Are limited to eighteen (18) hours of work in a school week.  
•	Are limited to eight (8) hours of work on non-school days.  
•	Are not allowed to work before 7:00 a.m. or after 7:00 p.m. except between June 1st and Labor Day, when you may work until 9:00 p.m.  
•	Are not allowed to work during school hours unless you are participating in a worktraining program offered by the school.  
•	Are required to take a half-hour rest break or meal break after working five consecutive hours.  
  
Note: The above restrictions do not apply to teens working on farms, in gardens or orchards, but you are not allowed to work during school hours, and you must be allowed the meal break.  
 
Sixteen and seventeen years of age  No restrictions on work hours.  
 
All teenagers, regardless of age, may work unrestricted hours in the following: 
•	A parent-owned non-agricultural job.  
•	Clerk or page in either the Virginia House of Delegates or the Virginia Senate.   	House and /or yard work for your parent.  
•	A parent-owned/operated orchard, farm or garden  
•	Acting jobs, with a valid theatrical permit obtained by the theatrical production management from the Department of Labor and Industry.  
•	Work done for the state or local government.  
•	Work done for a volunteer rescue squad.  
 
Note: Work permits are not required for these activities, or for volunteer work. 
 
 
JOBS THAT CAN BE HELD BY TEENAGERS IN THE STATE OF VIRGINIA 
 
Age 12 and older 
•	Newspaper delivery  
•	Farm, garden or orchard work  
 
Age 14 and older 
•	Restaurants  
•	Office work  
•	Gasoline service establishments  
•	Skating rinks  
•	Concessions and gatekeepers at swimming pools  
•	Veterinary establishments  
•	Helper on commercial vehicles or trucks with no more than two axles  
•	Grass cutting  
•	Kitchen work, tray service, and hall cleaning in hospitals and nursing homes   	Advertising agencies  
•	Retail stores  
•	Radio and TV stations  
•	Bowling alleys equipped with automatic pin setters  
•	Hotel and motel food service departments  
•	Branch stores or laundries and dry cleaning establishments where no processing is performed on the premises.  
•	Kennels  
•	Greenhouses and real estate  
•	Caddies  
 
Age 16 and older 
•	Manufacturing  
•	Laundries and dry cleaners  
•	Printing and publishing firms  
•	School bus drivers  
•	Scaffolding work  
•	Canneries  
•	Hotels and motels  
•	Feed mills  
•	Theaters  
•	Ice plants  
•	Warehouses  
•	Garages and auto repair shops  
•	Radio and TV repair  
•	Wholesale houses  
•	Undertaking establishments and funeral homes  
•	Construction trades  
•	Hospitals and nursing homes  
•	Processing  
•	Fire fighting except entering “burning structures  
•	Fairs and carnivals  
•	Service of veterinarian when treating farm animals or horses  
 
Note: In many of these occupations you may not operate machinery which has been declared hazardous in regulations of the Department of Labor and Industry. Contact the Department for additional information. 
  
For more information call the central Department of Labor and Industry office in Richmond, Virginia at 804-786-2386.  
                    </textarea>
                        <p>Did you read and understand the document above?</p>
                        <label for="YesSAT">Yes</label>
                        <input type="radio" name="law" id="YesLaw" />
                        <label for="NoSAT">No</label>
                        <input type="radio" name="law" id="NoLaw" />
                        <br />
                        <br />
                    </div>

                    <div class="row form-group" id="buttons">

                        <input type="submit" name="Apply" />

                        <asp:Button ID="Apply" runat="server" BackColor="#CCCCCC" class="form-control col-sm-1" Text="Apply" OnClick="Apply_Click1" Width="87px" />


                        &nbsp;&nbsp;&nbsp;


           


                <asp:Button ID="Populate" runat="server" BackColor="#CCCCCC" class="form-control col-sm-1" Text="Populate" Width="87px" OnClick="Populate_Click" />


                        &nbsp;&nbsp;&nbsp;


           


                <asp:Button ID="Clear" runat="server" BackColor="#CCCCCC" class="form-control col-sm-1" Text="Clear" Width="87px" OnClick="Clear_Click" />
                        <br />
                    </div>
                </div>
            </div>
    </form>
</body>


</html>

