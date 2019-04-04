<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationProcess.aspx.cs" Inherits="ApplicationProcess" %>

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

        .textarea {
            background-color: #fff;
        }

        #mainheader {
            /*background-color: #000000;*/
        }

        .form-control {
            margin: 0px 5px;
            top: 0px;
            left: 0px;
            width: 541px;
        }

        .heading1 {
            background: #F4D200;
        }

        .content1 {
            border-radius: 25px;
            background: #eeeeee;
            text-align: left;
            width: 60%;
            margin-left: auto;
            margin-right: auto;
            font-size: 130%;
            /*color: #fff;*/
            padding: 3em;
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

        .textarea {
            background: #fff;
        }

        .txtblack {
            color: #000;
        }
        #button{
            text-align: center;
        }
        h1{
            color: black;
        }

        #Label17 {
            width:inherit;
        }
        li
        {
            color:black;
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
<body class="contact1 text-center text-white text-uppercase">
    <form id="form1" runat="server">
       
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
                        <div class="collapse navbar-collapse" id="mainMenu" >
                            <ul class="navbar-nav ml-auto text-uppercase f1">
                                <li>
                                    <a href="RevisedLanding.aspx#home" rel="m_PageScroll2id" style="color:black;">Profile</a>
                                </li>
                                <li>
                                    <a href="ApplicationViewer.aspx" rel="m_PageScroll2id" data-ps2id-offset="50" style="color:black;">View Application</a>
                                </li>
                                <li>
                                    <a href="CommunityTEST.aspx" rel="m_PageScroll2id" style="color:black;">Post Timeline</a>
                                </li>

                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id" style="color:black;">View Community Insights</a>
                                </li>

                                <li>
                                    <asp:LinkButton runat="server" ID="logout" OnClick="LogOutUser" rel="m_PageScroll2id" style="color:black;">Logout</asp:LinkButton>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- /.container -->
           


        <%--END HEADER LINK--%>

        <br />
        

        <div>
            <div class="heading1">
            <h1>Application Viewing Page</h1>
            </div>
            <br />
                
            <div class="content1">
                
                

                <div id="appIDSelection" class="row form-group">
                    <asp:Label ID="Label17" runat="server" Text="Applicant Name" ForeColor="Black"></asp:Label>
                
                    <asp:DropDownList ID="ddName" runat="server" class="form-control col-sm-3"  DataSourceID="nameSource" DataTextField="FullName" DataValueField="FullName" SelectionMode="multiple" > </asp:DropDownList>
                    <asp:SqlDataSource ID="nameSource" runat="server" ConnectionString="<%$ ConnectionStrings:CuedInConnectionString %>" SelectCommand="SELECT [FirstName]+ ' ' +[LastName]AS [FullName] FROM [dbo].[Application] "></asp:SqlDataSource>
                </div>

                <br />
                <div id="stuff" class="row form-group">
                
           
                    <br />
                    <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Application ID "></asp:Label>

                    <asp:TextBox ID="txtAppID" runat="server" class="form-control col-sm-2" BackColor="White" MaxLength="50" placeholder="AppID" ReadOnly="True"></asp:TextBox>


                  

                   
                    <asp:Label ID="lblStudID" runat="server" ForeColor="Black" Text="Student ID" ></asp:Label>
                    <asp:TextBox ID="txtStudentID" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Student ID"></asp:TextBox>
               
                     <asp:Label ID="lblEmail" runat="server" ForeColor="Black" Text="Email" ></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Email"></asp:TextBox>

                </div>
                <br />
                <div id="GPA" class="row form-group">
                    <asp:Label ID="lblGPA" runat="server" ForeColor="Black" Text="GPA"></asp:Label>
                     <asp:TextBox ID="txtGPA" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="GPA"></asp:TextBox>
                </div>
                <br />
                <div id="satScores" class="row form-group">
                     
                     <asp:Label ID="lblSAT" runat="server" ForeColor="Black" Text="SAT Scores"></asp:Label>
                     <asp:TextBox ID="txtSATMath" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Math"></asp:TextBox>
                    <asp:TextBox ID="txtSATVerbal" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Verbal"></asp:TextBox>
                </div>

                
                <br />

                <div id="actScores" class="form-group row">
                    <asp:Label ID="lblACT" runat="server" ForeColor="Black" Text="ACT Scores"></asp:Label>
                     <asp:TextBox ID="txtACTMath" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Math"></asp:TextBox>
                    <asp:TextBox ID="txtACTEng" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="English"></asp:TextBox>
                    <asp:TextBox ID="txtACTRead" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Reading"></asp:TextBox>
                    <asp:TextBox ID="txtACTSci" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Science"></asp:TextBox>
                    <asp:TextBox ID="txtACTComp" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Composite"></asp:TextBox>
                    
                   
                    

                </div>
                <br />
                <div id="interests" class="form-group row">
                    <asp:Label ID="lblInterests" runat="server" ForeColor="Black" Text="Interests"></asp:Label>
                     <asp:TextBox ID="txtInt1" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="1"></asp:TextBox>
                     <asp:TextBox ID="txtInt2" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="2"></asp:TextBox>
                     <asp:TextBox ID="txtInt3" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="3"></asp:TextBox>
                </div>
                <br />
                <div id="exp" class="form-group row">
                    <asp:Label ID="lblExp" runat="server" ForeColor="Black" Text="Experience"></asp:Label>
                     <asp:TextBox ID="txtExperience" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Experience"></asp:TextBox>
                </div>
                <br />
                <div id="Documents" class="form-group row">
                    <asp:Label ID="lblRes" runat="server" ForeColor="Black" Text="Resume ID"></asp:Label>
                     <asp:TextBox ID="txtRes" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Resume"></asp:TextBox>
                     <asp:Label ID="lblCov" runat="server" ForeColor="Black" Text="Cover Letter ID"></asp:Label>
                     <asp:TextBox ID="txtCov" runat="server" class="form-control col-sm-2" BackColor="White" ReadOnly="True" placeholder="Cover Letter"></asp:TextBox>

                </div>

            </div>
        </div>

        <br />
        <asp:Button ID="btnQuery" runat="server" Text="Query" BackColor="Black" OnClick="btnQuery_Click" Height="50px" Width="132px" BorderColor="Black" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="Black"  Height="50px" Width="132px" OnClick="btnClear_Click" BorderColor="Black" ForeColor="White" />
        <br />
        <br />
    </form>
</body>


</html>
