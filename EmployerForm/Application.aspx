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

    </head>
    <body style="background-color:#FF0000;">
    <form id="form1" runat="server">
        <div>
            <header class="main-header">
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
        <br />
        <br />
        <br />
        <br />

        <div id="name">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" ForeColor="White" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" BackColor="White" MaxLength="50"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server" BackColor="White" MaxLength="50"></asp:TextBox>

        </div>
        
         <br />
        <br />

        <div id="contactInfo">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" ForeColor="White" Text="Email Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" BackColor="White"></asp:TextBox>

        </div>

         <br />
        <br />


        <div id="DropDowns">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="White" Text="StudentID"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="ddStudentID" runat="server" DataSourceID="StudentID" DataTextField="StudentID" DataValueField="StudentID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="StudentID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [StudentID] FROM [Student]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="School ID" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddSchoolID" runat="server" DataSourceID="SchoolID" DataTextField="SchoolName" DataValueField="SchoolID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SchoolID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [SchoolID], [SchoolName] FROM [School]"></asp:SqlDataSource>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="RequestID"></asp:Label>
&nbsp;&nbsp;&nbsp;

            <asp:DropDownList ID="ddRequest" runat="server" DataSourceID="ReqID" DataTextField="RequestID" DataValueField="RequestID">
                <asp:ListItem Value="1">1</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="ReqID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [RequestID] FROM [Request]"></asp:SqlDataSource>

            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="EmployerID"></asp:Label>
&nbsp;&nbsp;&nbsp;

            <asp:DropDownList ID="ddEmployer" runat="server" DataSourceID="EmpID" DataTextField="EmployerID" DataValueField="EmployerID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EmpID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [EmployerID] FROM [Employer]"></asp:SqlDataSource>

            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="White" Text="OpportunityID"></asp:Label>
&nbsp;&nbsp;&nbsp;

            <asp:DropDownList ID="ddOpportunity" runat="server" DataSourceID="OppID" DataTextField="OpportunityID" DataValueField="OpportunityID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="OppID" runat="server" ConnectionString="<%$ ConnectionStrings:LocalhostConnectionString %>" SelectCommand="SELECT [OpportunityID] FROM [Opportunity]"></asp:SqlDataSource>

        </div>

        <br />
        <br />
        

        <div id="SAT">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" ForeColor="White" Text="SAT Math"></asp:Label>
&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtSATMath" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" ForeColor="White" Text="SAT Verbal"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSATVerbal" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
    &nbsp;
        </div>

        <br />
        <br />

        <div id="ACT">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label8" runat="server" ForeColor="White" Text="ACT Math"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtACTMath" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label9" runat="server" ForeColor="White" Text="ACT English"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtACTEnglish" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtACTReading" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="90px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="White" Text="ACT Reading"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtACTScience" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="White" Text="ACT Composite"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtComposite" runat="server" BorderColor="Black" BorderStyle="None" BackColor="White" Width="89px"></asp:TextBox>
    <br />
        </div>

        <br />
        <br />

        <div id="button">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Apply" runat="server" BackColor="#CCCCCC" Text="Apply" OnClick="Apply_Click1" Width="87px" />

        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Populate" runat="server" BackColor="#CCCCCC" Text="Populate" Width="87px" OnClick="Populate_Click" />

        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Clear" runat="server" BackColor="#CCCCCC" Text="Clear" Width="87px" OnClick="Clear_Click" />

        </div>

        
        </form>
        </body>

       
        </html>


