<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationViewer.aspx.cs" Inherits="ApplicationViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Revised Profile</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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
    <style type="text/css">
        #center {
            text-align: center;
        }
        .Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:Calibri; color: #474747;   width:1000px;
    margin-left:auto;
    margin-right:auto;}

        .Grid td {

        padding: 2px;

        border: solid 1px #c1c1c1; }

        .Grid th  {

        padding : 4px 2px;

        color: #fff;

        background: #363670 url(Images/grid-header.png) repeat-x top;

        border-left: solid 1px #525252;

        font-size: 0.9em; }

        .Grid .alt {

        background: #fcfcfc url(Images/grid-alt.png) repeat-x top; }

        .Grid .pgr {background: #363670 url(Images/grid-pgr.png) repeat-x top; }

        .Grid .pgr table { margin: 3px 0; }

        .Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  

        .Grid .pgr a { color: Gray; text-decoration: none; }

        .Grid .pgr a:hover { color: #000; text-decoration: none; }

            #Div1{
        width:600px;
        margin-left:auto;
        margin-right:auto;
        }
       
            body{
      background: #f2f2f2;
      font-family: 'Open Sans', sans-serif;
         }

        .search {
          width: 100%;
          position: relative
        }

        .searchTerm {
          float: left;
          width: 100%;
          border: 3px solid #00B4CC;
          padding: 5px;
          height: 20px;
          border-radius: 5px;
          outline: none;
          color: #9DBFAF;
        }

        .searchTerm:focus{
          color: #00B4CC;
        }

        .searchButton {
          position: absolute;  
          right: -50px;
          width: 40px;
          height: 36px;
          border: 1px solid #00B4CC;
          background: #00B4CC;
          text-align: center;
          color: #fff;
          border-radius: 5px;
          cursor: pointer;
          font-size: 20px;
        }

        /*Resize the wrap to see the search bar change!*/
        .wrap{
          width: 30%;
          position: relative;
          top: 60%;
          left: 50%;
          transform: translate(-50%, -50%);
        }
    </style>
</head>
<body class="content text-center text-black text-uppercase">
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
                        <div class="collapse navbar-collapse" id="mainMenu">
                            <ul class="navbar-nav ml-auto text-uppercase f1">
                                <li>
                                    <a href="RevisedLanding.aspx#home" rel="m_PageScroll2id" style="color: black;">Profile</a>
                                </li>
                                <li>
                                    <a href="ApplicationViewer.aspx" rel="m_PageScroll2id" data-ps2id-offset="50" style="color: black;">View Applications</a>
                                </li>
                                <li>
                                    <a href="CommunityTest.aspx" rel="m_PageScroll2id" style="color: black;" >Post Timeline</a>
                                </li>

                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id" style="color: black;">View Community Insights</a>
                                </li>

                                <li>
                                    <asp:LinkButton runat="server" ID="logout" OnClick="LogOutUser" rel="m_PageScroll2id" style="color: black;">Logout</asp:LinkButton>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- /.container -->
            
   <br />
       

        

         <br />

         <div class="heading1">
             <h1>Application Viewer</h1>
         </div>
         <br />
        
     
             
             
             <br />
             <div class="wrap">
                <div class="search">
                <input type="text" class="searchTerm" placeholder="Who are you looking for?"/>
                <button type="submit" class="searchButton"/>
                <i class="fa fa-search"></i>
                    <br />
                </div>
         <label class="radio-inline" for="name" >   
            <input type="radio" name="name" value= checked/>
         </label>
         <label class="radio-inline" for="exp">
             <input type="radio" name="exp" value="Expirience"/>
         </label>
        <label class="radio-inline" for="interest">
            <input type="radio" name="interest" value="Interest"/>
        </label>
                
             
             <br />
            </div>
         

          
             <br />
             
             <asp:GridView ID="GridView1"  DataSourceId="MyDataSource"  DataKeyNames="ApplicationID"
        AutoGenerateColumns="false"       AutoGenerateEditButton="false"
        AutoGenerateDeleteButton="false" CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                        HorizontalAlignment="center"
                      PagerStyle-CssClass="pgr" OnRowCommand="ApplicationProcess" runat="server">
    <Columns>
         <asp:TemplateField HeaderText="AppID">
            
            <ItemTemplate>
                <%#Eval("ApplicationID")%>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:ImageField DataImageUrlField="Email" nullImageURL="https://picsum.photos/200/300" DataImageUrlFormatString="https://robohash.org/{0}" HeaderText="Picture" ItemStyle-Height ="100px" ItemStyle-Width ="50px" ></asp:ImageField>
        <asp:TemplateField HeaderText="Name">
            
            <ItemTemplate>
                <%#Eval("Name")%>
            </ItemTemplate>
        </asp:TemplateField>
          <asp:TemplateField  HeaderText="Opportunity" HeaderStyle-Width="150px" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <%#Eval("OpportunityName1")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Academic Year" HeaderStyle-Width="150px" HeaderStyle-HorizontalAlign="Center">
        <ItemTemplate>
                <%#Eval("AcademicYear")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" HeaderStyle-Width="250px" HeaderStyle-HorizontalAlign="Center">
       
            <ItemTemplate>
                <%#Eval("Email")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Phone Number" HeaderStyle-Width="150px" HeaderStyle-HorizontalAlign="Center">
        <ItemTemplate>
                <%#Eval("PhoneNumber")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="View Application" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate >
        <asp:LinkButton ID ="lnkvendorname" runat ="server" CommandArgument='
          <%#Eval("applicationid")%>
            ' CommandName ="application" Text ='View Application'></asp:LinkButton>
      </ItemTemplate>
        </asp:TemplateField>
      

    </Columns>
    </asp:GridView>
                
     
      

        </form>
<asp:SqlDataSource ID="MyDataSource" 
ConnectionString="<%$Connectionstrings:CuedInConnectionString%>"
SelectCommand="SELECT DISTINCT Application.ApplicationID, Application.FirstName + ' ' + Application.LastName + ' ' as Name, Application.Email, Student.AcademicYear, Person.PhoneNumber, ' ' + Opportunity.OpportunityName as OpportunityName1
FROM Application
    inner join Employer on Application.EmployerID = @EmployerID
    inner join Opportunity on Application.OpportunityID = Opportunity.OpportunityID
    inner join Student on Application.StudentID = Student.StudentID
    inner join Person on Student.PersonID = Person.PersonID;" runat="server">
    <SelectParameters>
                 <asp:sessionparameter name="employerID" sessionfield="employerID" />
    </SelectParameters>
</asp:SqlDataSource>
 

</body>
</html>
