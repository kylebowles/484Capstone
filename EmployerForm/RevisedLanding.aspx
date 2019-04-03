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

         img{
             border-radius: 50%;
         }

         body{
             background-color: #cbbaa6;
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
                                    <a href="JobSearchPage.aspx" rel="m_PageScroll2id">Search Posts</a>
                                </li>

                                <li>
                                    <a href="The Community.aspx" rel="m_PageScroll2id">Create Post</a>
                                </li>
                                <li>
                                    <a href="" rel="m_PageScroll2id">Post Timeline</a>
                                </li>
                                <li>
                                    <a href="TableauData.aspx" rel="m_PageScroll2id">View Community Insights</a>
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
        <br />
    
    
        
        

        <div class="container emp-profile" runat="server">

            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                       <img src="https://www.vachamber.com/wp-content/uploads/2018/06/CUED-In-Logo.jpg" alt="" />
                        
                        
                       
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
                    <input class="yellowbutton" runat="server" type="button" id="btnEdit" ame="btnAddMore" value="Edit Profile" onclick="displayEditName()" />
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
                </div>

                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent" runat="server">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" runat="server">
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
                                    <asp:TextBox class="control-lbl" ID="companyEdit" runat="server" placeholder="Company" BorderColor="Black" BorderStyle="Solid" BackColor="#CBBAA6"></asp:TextBox>
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
