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
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }

        #buttons {
            text-align: center;
        }
        #SAT #ACT {
            display: none;
        }
        .textareas{
            background-color: #fff;
        }
        #mainheader{
            
            background-color: #000000;
            
            
        }
    </style>

    <script type="text/javascript">
        function displaySAT() {


        }
        function hindSAT() {
            textbox.style.display="none";
        }
    </script>
</head>
<body style="background-color: #7D7D7D;">
    <form id="form1" runat="server">
        <div>
            <header id="mainheader" class="main-header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg main-nav px-0">
                        <a class="navbar-brand" href="#home" rel="m_PageScroll2id">
                            <img src="img/tinylogo.png" alt="Logo" width="400" height="100">
                        </a>
                        <button class="hamburger hamburger--collapse navbar-toggler" type="button" data-toggle="collapse" data-target="#mainMenu">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                        <div class="collapse navbar-collapse" id="mainMenu">
                            <ul class="navbar-nav ml-auto text-uppercase f1">
                                <li>
                                    <a href="CUEDIN.aspx#home" rel="m_PageScroll2id">home</a>
                                </li>
                                <li>
                                    <a href="#about" rel="m_PageScroll2id" data-ps2id-offset="50">about</a>
                                </li>
                                <li>
                                    <a href="#service" rel="m_PageScroll2id">View Schools</a>
                                </li>

                                <li>
                                    <a href="#team" rel="m_PageScroll2id">Create Post</a>
                                </li>

                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id">Community Insights</a>
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
        <br />
        <br />
        <br />
        
        
        <h1>Cued-In Common Application</h1>
        
        <br />
        <div id="name">

            
            <asp:Label ID="Label13" runat="server" ForeColor="White" Text="First Name"></asp:Label>
           
            <asp:TextBox ID="txtFirstName" runat="server" BackColor="White" MaxLength="50"></asp:TextBox>

            
            <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Last Name"></asp:Label>
            
            <asp:TextBox ID="txtLastName" runat="server" BackColor="White" MaxLength="50"></asp:TextBox>

        </div>

        <br />
        <br />

        <div id="contactInfo">


            <asp:Label ID="Label15" runat="server" ForeColor="White" Text="Email Address"></asp:Label>

            <asp:TextBox ID="txtEmail" runat="server" BackColor="White"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Confirm Email Address"></asp:Label>

            <asp:TextBox ID="txtConfirmEmail" runat="server" BackColor="White"></asp:TextBox>
        </div>

        <br />
        <br />
        
        <div id="DropDowns">

           <%-- <asp:Label ID="studentid" runat="server" ForeColor="White" Text="StudentID"></asp:Label>--%>

            <asp:DropDownList ID="ddStudentID" runat="server" DataSourceID="StudentID" DataTextField="StudentID" DataValueField="StudentID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="StudentID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [StudentID] FROM [Student]"></asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="School ID" ForeColor="White"></asp:Label>

            <asp:DropDownList ID="ddSchoolID" runat="server" DataSourceID="SchoolID" DataTextField="SchoolName" DataValueField="SchoolID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SchoolID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [SchoolID], [SchoolName] FROM [School]"></asp:SqlDataSource>


            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="RequestID"></asp:Label>


            <asp:DropDownList ID="ddRequest" runat="server" DataSourceID="ReqID" DataTextField="RequestID" DataValueField="RequestID">
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="ReqID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [RequestID] FROM [Request]"></asp:SqlDataSource>


            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="EmployerID"></asp:Label>


            <asp:DropDownList ID="ddEmployer" runat="server" DataSourceID="EmpID" DataTextField="EmployerID" DataValueField="EmployerID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EmpID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [EmployerID] FROM [Employer]"></asp:SqlDataSource>


            <asp:Label ID="Label4" runat="server" ForeColor="White" Text="OpportunityID"></asp:Label>


            <asp:DropDownList ID="ddOpportunity" runat="server" DataSourceID="OppID" DataTextField="OpportunityID" DataValueField="OpportunityID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="OppID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [OpportunityID] FROM [Opportunity]"></asp:SqlDataSource>

        </div>

        <br />
        <br />
        <div>
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
            <input type="radio" name="SAT" id="YesSAT" onclick="displaySAT()"/>
            <label for="NoSAT">No</label>
            <input type="radio" name="SAT" id="NoSAT" onclick="hindSAT()"/>
        </div>
        <div id="SAT">
         
           
            <asp:Label ID="lblmathsat" runat="server" ForeColor="White" Text="SAT Math"></asp:Label>
            <asp:TextBox ID="txtSATMath" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

            <asp:Label ID="lblverbalsat" runat="server" ForeColor="White" Text="SAT Verbal"></asp:Label>

            <asp:TextBox ID="txtSATVerbal" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

        </div>

        <br />
        <br />
        <div>
            <p>Do you want to submit your ACT scores?</p>
            <label for="YesACT">Yes</label>
            <input type="radio" name="SAT" id="YesACT" onclick="displayACT()"/>
            <label for="NoACT">No</label>
            <input type="radio" name="SAT" id="NoACT" onclick="hindACT()"/>
        </div>
        <div id="ACT">

            <asp:Label ID="Label8" runat="server" ForeColor="White" Text="ACT Math"></asp:Label>

            <asp:TextBox ID="txtACTMath" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>

            <asp:Label ID="Label9" runat="server" ForeColor="White" Text="ACT English"></asp:Label>

            <asp:TextBox ID="txtACTEnglish" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>

            <asp:TextBox ID="txtACTReading" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>

            <asp:TextBox ID="txtACTScience" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" ForeColor="White" Text="ACT Composite"></asp:Label>

            <asp:TextBox ID="txtComposite" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
            <br />
        </div>

        <br />
        <br />
        <div>
            <label for="txtareaExperience">Experience in this Industry?</label>
            <br />
            <textarea id="txtareaExperience"class="textareas" rows="6" cols="120"></textarea>
        </div>
        <br />
        <div>
            <p>Sumbit Your Resume</p>
            <label for="UploadResume">Upload</label>
            <input type="radio" name="rdResume" id="UploadResume" onclick="UploadResume()"/>
            <label for="TextResume">Text</label>
            <input type="radio" name="rdResume" id="TextResume" onclick="textResume()"/>
        </div>
        <br />
        <div>
            <label for="fileResume">Upload Resume File</label>
            <br />
            <input type="file" id="fileResume" />
            <br />
            <label for="txtareaResume">Input Resume as Text</label>
            <br />
            <textarea id="txtareaResume"class="textareas" rows="6" cols="120"></textarea>
        </div>
        <br />
        <div>
            <p>Sumbit Your Cover Letter</p>
            <label for="UploadCoverLetter">Upload</label>
            <input type="radio" name="rdCover" id="UploadCoverLetter" onclick="UploadCoverLetter()"/>
            <label for="TextCoverLetter">Text</label>
            <input type="radio" name="rdCover" id="TextCoverLetter" onclick="textCoverLetter()"/>
        </div>
        <br />
        <div>
            <label for="fileCoverLetter">Upload Cover Letter File</label>
            <br />
            <input type="file" id="fileCoverLetter" />
            <br />
            <label for="txtareaCoverLetter">Input Resume as Text</label>
            <br />
            <textarea id="txtareaCoverLeter"class="textareas" rows="6" cols="120"></textarea>
        </div>
           
        <div id="buttons">

            <input type="submit" name="Apply" />

            <asp:Button ID="Apply" runat="server" BackColor="#CCCCCC" Text="Apply" OnClick="Apply_Click1" Width="87px" />


            <asp:Button ID="Populate" runat="server" BackColor="#CCCCCC" Text="Populate" Width="87px" OnClick="Populate_Click" />


            <asp:Button ID="Clear" runat="server" BackColor="#CCCCCC" Text="Clear" Width="87px" OnClick="Clear_Click" />
            <br />
        </div>


    </form>
</body>


</html>


