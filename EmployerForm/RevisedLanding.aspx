<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RevisedLanding.aspx.cs" Inherits="RevisedLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>


    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Mojo - Bootstrap 4 Multipurpose One Page Template" />
    <meta name="author" content="theme_xpress" />
    <link rel="shortcut icon" href="img/favicon.png" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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

      <!-- Bootstrap -->

    


    <style>
        .emp-profile {
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #ffffff;
        }

        .profile-img {
            text-align: center;
        }

            .profile-img img {
                width: 70%;
                height: 100%;
            }

            .profile-img .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #edd416;
            }

                .profile-img .file input {
                    position: absolute;
                    opacity: 0;
                    right: 0;
                    top: 0;
                }

        .profile-head h5 {
            color: #333;
        }

        .profile-head h6 {
            color: #8fc73e;
        }

        .profile-edit-btn {
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #8fc73e;
            cursor: pointer;
        }

        .proile-rating {
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }

            .proile-rating span {
                color: #495057;
                font-size: 15px;
                font-weight: 600;
            }

        .profile-head .nav-tabs {
            margin-bottom: 5%;
        }

            .profile-head .nav-tabs .nav-link {
                font-weight: 600;
                border: none;
            }

                .profile-head .nav-tabs .nav-link.active {
                    border: none;
                    border-bottom: 2px solid #0062cc;
                }

        .profile-work {
            padding: 14%;
            margin-top: -15%;
        }

            .profile-work p {
                font-size: 12px;
                color: #818182;
                font-weight: 600;
                margin-top: 10%;
            }

            .profile-work a {
                text-decoration: none;
                color: #495057;
                font-weight: 600;
                font-size: 14px;
            }

            .profile-work ul {
                list-style: none;
            }

        .profile-tab label {
            font-weight: 600;
        }

        .profile-tab p {
            font-weight: 600;
            color: #0062cc;
        }

        textarea#ProfileSummary {
            width: 500px;
        }

        p#subheader {
            width: 500px;
            color: #d3e6a1;
        }

        .control-lbl{
            display:none;
        }

        .yellowbutton {
              background-color: #f4d200;
              border: none;
              color: white;
              padding: 10px 24px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 16px;
              margin: 4px 2px;
              cursor: pointer;
              border-radius:4px;

         }
         .greenbutton {
              background-color: #8fc73e;
              border: none;
              color: white;
              padding: 15px 32px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 16px;
              margin: 4px 2px;
              cursor: pointer;
              border-radius:4px;
        }

         #imgprofile{
             border-radius: 50%;
         }

         body{
             /*background-color: #cbbaa6;*/
         }
         .heading{
             background: #f4d200;
         }
         .content1{
             border-radius: 25px;
             background: #eeeeee;
             text-align: left;
             width: 60%;
             margin-left: auto;
             margin-right: auto;
             font-size: 130%;
             padding: 3em;
            
         }
         #backpic{
                text-align:center;
                }
         .modal {

  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 800px;
  max-width: 100%;
  max-height: 100%;
}

    </style>
    
    <script type="text/javascript">
         function displayEditName(){
             var NameResult = document.getElementById("NameResult");
             var fNameEdit = document.getElementById("fNameEdit");
             //var mNameEdit = document.getElementById("mNameEdit");
             var lNameEdit = document.getElementById("lNameEdit");
             var JobResult = document.getElementById("JobResult");
             var PhoneResult = document.getElementById("PhoneResult");
             var jobtitleEdit = document.getElementById("jobtitleEdit");
             var phoneEdit = document.getElementById("phoneEdit");
             //var CompanyResult = document.getElementById("CompanyResult");
             //var companyEdit = document.getElementById("companyEdit");
             var btnSaveEdits = document.getElementById("btnSaveEdits");

             if (document.getElementById("btnEdit").click) {
                 fNameEdit.style.display = "block";
                 //mNameEdit.style.display = "block";
                 lNameEdit.style.display = "block";
                 jobtitleEdit.style.display = "block";
                 phoneEdit.style.display = "block";
                 //companyEdit.style.display = "block";
                 

                 btnSaveEdits.style.display = "block";
                 
                 NameResult.style.display = "none";
                 JobResult.style.display = "none";
                 PhoneResult.style.display = "none";
                 //CompanyResult.style.display = "none";
            }
             else {
                 NameResult.style.display = "block";
                 JobResult.style.display = "block";
                 PhoneResult.style.display = "block";
                 //CompanyResult.style.display = "block";

                 fNameEdit.style.display = "none";
                 //mNameEdit.style.display = "none";
                 lNameEdit.style.display = "none";
                 jobtitleEdit.style.display = "none";
                 phoneEdit.style.display = "none";
                 //companyEdit.style.display = "none";

                 btnSaveEdits.style.display = "none";
            }
        }

    </script>


</head>



<body>

    <form runat="server" id="form1">

        <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        
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
                            <ul class="navbar-nav ml-auto text-uppercase f1">
                                <li>
                                    <a href="RevisedLanding.aspx" rel="m_PageScroll2id" style="color: #000000">Profile</a>
                                </li>
                                <li>
                                    <a href="ApplicationViewer.aspx" rel="m_PageScroll2id" style="color: #000000">View Applications</a>
                                </li>
                                <li>
                                    <a href="CommunityTEST.aspx" rel="m_PageScroll2id" style="color: #000000">Post Timeline</a>
                                </li>
                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id"style="color: #000000" >View Community Insights</a>
                                </li>
                                <li>
                                    <asp:linkbutton runat="server" ID="logout" onclick="LogOutUser" rel="m_PageScroll2id" style="color: #000000">Logout</asp:linkbutton>
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
    
    
        
        
      
        <div class="content1 emp-profile" runat="server">

            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                       <img id="imgprofile" src="https://www.vachamber.com/wp-content/uploads/2018/06/CUED-In-Logo.jpg" alt="" />
                        
                        
                       
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            <asp:Label ID="BigNameResult" runat="server" Text=""></asp:Label>
                        </h5>
                        
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" id="hometab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" runat="server">About</a>
                            </li>

                        </ul>
                    </div>
                    

                </div>
                <div class="col-md-2">
                    <input class="yellowbutton" runat="server" type="button" id="btnEdit" name="btnEdit" value="Edit Profile" onclick="displayEditName()" />
                    <br />
                    <asp:Button ID="btnSaveEdits" runat="server" Text="Save my profile edits" OnClick="SaveEdits_Click" class="control-lbl" CssClass="yellowbutton" ValidationGroup="ReqChanges" />

                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">
                        <p>Employer View</p>
                        <a href="TableauData.aspx">View Student Interests</a><br />

                        <p>Actions</p>
                    <div class="form-group" runat="server">
             
                    </div>
                    <asp:Button ID="ShowSum" runat="server" Text="View my summary" OnClick="ShowSummary" CssClass="greenbutton" /> <!--"btn btn-info" />-->
                    <asp:Button ID="btnCreateOpportunity" runat="server" Text="Post new Opportunity" CssClass="greenbutton" data-toggle="modal" data-target="#modal1" OnClientClick ="return false" />
                          <div class="container">
                              <br />
                              <div class="row">
                                  <div class="col-lg">
      
                              <asp:Label id="lblSuccess" runat="server" CssClass="alert alert-success alert-dismissible" visible="false"><strong>Successfully Posted!</strong></asp:Label>

                              </div>
                                  </div>
                                  <div class="col-lg">
                                      <br>
                                  <asp:Button ID="btnCloseSuccess" CssClass="smallButton" Text="Close Confirmation" runat="server" Visible="false" OnClick="btnCloseSuccess_Click"></asp:Button>
                                      </div>
                              
 <div id="modal1" class="modal">
     <div class="modal-dialog-centered"> 
    <div class="modal-content">
         <div class="modal-header" style="background-color:#FFB014">
             <h2 class="display-4" style="text-align:center"><strong>Post New Opportunity</strong></h2>
             </div>

        <br />
        <asp:Label id="lblOpportunityName" runat="server"><strong>Opportunity Name:</strong></asp:Label>
                <div class="input-group">
        <asp:TextBox id="txtOpportunityName" runat="server" CssClass="form-control rounded-0" placeholder="Enter the title of this position"></asp:TextBox>
                    </div>
        <asp:RequiredFieldValidator ID="opportunityNameValidator" runat="server" ControlToValidate="txtOpportunityName" Text="Enter the name of this opportunity" cssclass="alert-danger" ValidationGroup="OpportunityPostGroup"></asp:RequiredFieldValidator>

        <asp:Label ID="lblOpportunityDescription" runat="server"><strong>Description:</strong></asp:Label>
        <div class="input-group">

        <asp:TextBox id="txtOpportunityDescription" TextMode="MultiLine" columns="50" Rows="10" runat="server" CssClass="form-control rounded-0" placeholder="Provide a description of this work based learning opportunity"></asp:TextBox>
            </div>
        <asp:RequiredFieldValidator ID="opportunityDescriptionValidator" runat="server" ControlToValidate="txtOpportunityDescription" Text="Enter a description for this opportunity" CssClass="alert-danger" ValidationGroup="OpportunityPostGroup"></asp:RequiredFieldValidator>

                <asp:Label ID="modallabel" runat="server"><strong>Select the interests you would like associate this opportunity with</strong></asp:Label>
         <asp:ListBox ID="listBoxInterestChoice" runat="server" DataSourceID="InterestSqlDataSource" DataTextField="InterestName" DataValueField="InterestID" SelectionMode="Multiple" CssClass="table-bordered table-hover" Height="100"></asp:ListBox>
                            <asp:SqlDataSource ID="InterestSqlDataSource" 
                            SelectCommand="Select * from interest"
                            ConnectionString="<%$Connectionstrings:CuedInConnectionString%>"
                            DataSourceMode="DataReader"
                            runat="server"></asp:SqlDataSource>
        <br />
        <asp:Label id="lblSchoolChoice" runat="server"><strong>Select the schools you would like to post this opportunity to</strong></asp:Label>
        <asp:ListBox ID="listBoxSchoolChoice" runat="server" DataSourceID="SchoolSqlDataSource" DataTextField="SchoolName" DataValueField="SchoolID" SelectionMode="Multiple" CssClass="table-bordered table-hover" Height="100"></asp:ListBox>
                            <asp:SqlDataSource ID="SchoolSqlDataSource" 
                            SelectCommand="Select * from school"
                            ConnectionString="<%$Connectionstrings:CuedInConnectionString%>"
                            DataSourceMode="DataReader"
                            runat="server"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="schoolSelectionValidator" runat="server"          
        InitialValue=""
        ControlToValidate="listBoxSchoolChoice" 
        ErrorMessage="Atleast one school required" 
        CssClass="alert-danger"  
        Text="Atleast one school required"
        ValidationGroup="OpportunityPostGroup">
        </asp:RequiredFieldValidator> 

                        <asp:DropDownList id="DropDownOpportunityType" runat="server" CssClass="dropdown-item">
            <asp:ListItem Enabled="true" Text="Opportunity Duration?" Value="-1"></asp:ListItem>
            <asp:ListItem>Summer</asp:ListItem>
            <asp:ListItem>Year-round</asp:ListItem>
            <asp:ListItem>Not Specified</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="opportunitytypevalidator" runat="server" ControlToValidate="DropDownOpportunityType" Text="Select an option" cssclass="alert-danger"
    InitialValue="-1" ValidationGroup="OpportunityPostGroup">
</asp:RequiredFieldValidator>

        <asp:DropDownList id="dropdownApprenticeship" runat="server" CssClass="dropdown-item">
            <asp:ListItem Enabled="true" Text="Paid Apprenticeship?" Value="-1"></asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="apprenticeshipvalidator" runat="server" ControlToValidate="dropdownApprenticeship" Text="Select an option" cssclass="alert-danger"
    InitialValue="-1" ValidationGroup="OpportunityPostGroup">
</asp:RequiredFieldValidator>

                <asp:DropDownList id="DropDownFulltime" runat="server" CssClass="dropdown-item">
            <asp:ListItem Enabled="true" Text="Full or part time?" Value="-1"></asp:ListItem>
            <asp:ListItem>Part-time</asp:ListItem>
            <asp:ListItem>Full-time</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="fulltimevalidator" runat="server" ControlToValidate="DropDownFulltime" Text="Select an option" cssclass="alert-danger" ValidationGroup="OpportunityPostGroup"
    InitialValue="-1">
</asp:RequiredFieldValidator>

        <br />
        <div class="col-8">
        <asp:Label ID="lblDeadlineDate" runat="server"><strong>Please provide a deadline for applications to this opportunity</strong></asp:Label>
        <asp:TextBox id="txtDeadlineDate" runat="server" textmode="Date"></asp:TextBox></div>
            <div class="modal-footer" style="color:black">
        <asp:Button ID="AgreeSubmit" runat="server" Text="Submit New Opportunity" ValidationGroup="OpportunityPostGroup"  OnClick="AgreeSubmit_Click" BorderStyle="Solid" height="25" width="150" CssClass="btn-warning" href="alertbox"/>
                <asp:Button ID="btnclose" runat="server" Text="Close" BorderStyle="Solid" height="25" width="150" CssClass="btn-dark" OnClick="Close_Click"/>
    </div>
    </div>

         </div>
  </div>
  
</div>
                </div>

                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent" runat="server">
                        <div class="tab-pane show active" id="home" role="tabpanel" aria-labelledby="home-tab" runat="server">
                            <b><asp:Label ID="Personalinfo" runat="server" Text="Personal Information"></asp:Label></b>
                            <div class="row">
                                <div class="col-md-6">
                                    <i><asp:Label ID="Usernamelbl" runat="server" Text="Username:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="UsernameResult" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <i><asp:Label ID="Namelbl" runat="server" Text="Name:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="NameResult" runat="server" Text=""></asp:Label>
                                    <asp:TextBox class="control-lbl" ID="fNameEdit" runat="server" placeholder="First Name" BorderColor="Black" BorderStyle="Solid" BackColor="#CBBAA6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqFname" runat="server" ErrorMessage="First Name Required" ControlToValidate="fNameEdit" ForeColor="red" validationgroup="ReqChanges"></asp:RequiredFieldValidator>
                                    <!--<asp:TextBox class="control-lbl" ID="mNameEdit" runat="server" placeholder="Middle Name" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>-->
                                    <asp:TextBox class="control-lbl" ID="lNameEdit" runat="server" placeholder="Last Name"  BorderColor="Black" BorderStyle="Solid" BackColor="#CBBAA6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqLname" runat="server" ErrorMessage="Last Name Required" ControlToValidate="lNameEdit" ForeColor="red" validationgroup="ReqChanges"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <i><asp:Label ID="Phonelbl" runat="server" Text="Personal Phone Number:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="PhoneResult" runat="server" Text=""></asp:Label>
                                    <asp:TextBox class="control-lbl" ID="phoneEdit" runat="server" placeholder="Phone Number" BorderColor="Black" BorderStyle="Solid" BackColor="#CBBAA6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqPhone" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="phoneEdit" ForeColor="red" validationgroup="ReqChanges"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <i><asp:Label ID="Joblbl" runat="server" Text="Job Title:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="JobResult" runat="server" Text=""></asp:Label>
                                    <asp:TextBox class="control-lbl" ID="jobtitleEdit" runat="server" placeholder="Job Title" BorderColor="Black" BorderStyle="Solid" BackColor="#CBBAA6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqJT" runat="server" ErrorMessage="Job Title Required" ControlToValidate="jobtitleEdit" ForeColor="red" validationgroup="ReqChanges"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <br />
                            <br />
                            <b><asp:Label ID="Companyinfo" runat="server" Text="Company Information"></asp:Label></b>
                            <div class="row">
                                <div class="col-md-6">
                                    <i><asp:Label ID="Companylbl" runat="server" Text="Company Name:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="CompanyResult" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <i><asp:Label ID="Locationlbl" runat="server" Text="Location:"></asp:Label></i>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="LocationResult" runat="server" Text=""></asp:Label>
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-md-6">
                                    <br />
                                    
                                    <br />
                                    <br />
                                    <textarea class="form-control" rows="5" id="ProfileSummary" runat="server" visible="false"></textarea>
                                    <br />
                                    <asp:Label ID="lblSummary" runat="server" Text="Update your profile summary here" Visible="false" ForeColor="#9f9693"></asp:Label>
                                    <asp:Button ID="btnEditSum" runat="server" Text="Save Changes" CssClass="greenbutton" OnClick="EditSummary" visible="false"/>
                                   
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
