<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployerLanding.aspx.cs" Inherits="EmployerLanding" %>

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


    <link href="path/to/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="path/to/jquery/jquery-1.8.2.min.js"></script>
    <script src="path/to/bootstrap/js/bootstrap.min.js"></script>

    <link href="path/to/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet" />
    <script src="path/to/bootstrap-editable/js/bootstrap-editable.min.js"></script>
    
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" />
     <link href="bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet" />

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

    <link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>

</head>
<body style="background-color:#0099ff;">
    
<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script> 
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="bootstrap-editable/js/bootstrap-editable.js"></script>

<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
   
<script src="bootstrap-editable/js/bootstrap-editable.js"></script>

    <script type="text/javascript">
        $.fn.editable.defaults.mode = 'inline';
        $('#Exp').editable({
                           type:  'text',
                           pk:    1,
                           name:  'Exp',
                           url:   'post.php',  
                           title: 'Desired Experience'
                        });
    </script>
    <div>
   <%-- <div class="container emp-profile" visible="true" /> --%>
    <form id="form1" runat="server" method="post">
        <script type="text/javascript">
        $.fn.editable.defaults.mode = 'inline';
        $('#Exp').editable({
                           type:  'text',
                           pk:    1,
                           name:  'username',
                           url:   'post.php',  
                           title: 'Enter username'
                        });
    </script>
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

<%--     <div class="container emp-profile" visible="true" /> 
    <form id="form1" runat="server" method="post">--%>

         
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

        
        
        


   <%-- POST MODAL--%>
      
  <div class="modal fade" id="PostModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Employment Posting</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
        <div class="modal-body mx-3">
        <div class="md-form mb-5">
          
            <asp:label data-error="wrong" data-success="right" for="defaultForm-email" id="JobName" runat="server">Job Name</asp:label>
            <input type="text" id="JobNameText" class="form-control validate" runat="server"/>
          
           <asp:label data-error="wrong" data-success="right" for="defaultForm-email" id="JobType" runat="server">Job Type(Technical, Construction, etc.)</asp:label>
           <input type="text" id="JobTypeText" class="form-control validate" runat="server"/>

             <asp:label data-error="wrong" data-success="right" for="defaultForm-email" id="Apprenticeship" runat="server">Is this an Apprenticeship? (Y or N)</asp:label>
            <input type="text" id="ApprenText" class="form-control validate" runat="server"/>
          
            <asp:label data-error="wrong" data-success="right" for="defaultForm-email" id="Deadline" runat="server">Deadline(yyyy/mm/dd)</asp:label>
            <input type="text" id="DeadlineText" class="form-control validate" runat="server"/>
          
        </div>
      </div>
      <div class="modal-footer">
         <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="SubmitPost" CssClass="btn btn-primary"></asp:Button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
        
      </div>
    </div>
  </div>
</div>
            
        <%--END POST MODAL--%>

       
        



        

        <div id="PostAlert" class="alert alert-success collapse">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> Opportunity posted.
                        </div>
                        <script type="text/javascript">
                            function ShowPostAlert() {
                            $('#PostAlert').show();
                
                        }
                        </script>

<!-- Bootstrap -->
<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />


        <script type="text/javascript">
    function ShowPopup(/*title, body*/) {
        //$("#PostModal .modal-title").html(title);
        //$("#PostModal .modal-body").html(body);
        $("#PostModal").modal("show");
    }
</script>






<div class="container emp-profile" visible="true" /> 
            
    <%--<form method="post" runat="server" id="form1">--%>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <asp:Label ID="lblDisplayName" runat="server"></asp:Label>
                                    </h5>
                                    <h5>
                                        <asp:Label ID="Employer" runat="server" Text="Cued-In Employer"></asp:Label>
                                    </h5>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item active">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">What I'm looking for</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnShowPopup" runat="server" Text="New Post" OnClick="ShowPopup"
                         CssClass="btn btn-info btn-lg" />
                        <br />
                        <br />

                         <asp:Button ID="btnEditProf" runat="server" Text="Edit Profile"
                         CssClass="btn btn-primary" />
                        

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab active" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row active">
                                            <div class="col-md-6 active">
                                                <label>Username / Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label id="lblUserEmail" runat="Server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row active">
                                            <div class="col-md-6">
                                                <label>Phone Number</label>
                                            </div>
                                            <div class="col-md-6">
                                               <asp:Label id="lblPhone" runat="Server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row active">
                                            <div class="col-md-6">
                                                <label>Company</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label id="lblCompany" runat="Server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row active">
                                            <div class="col-md-6">
                                                <label>Job Title</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label id="lblJobTitle" runat="Server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row active">
                                            <div class="col-md-6">
                                                <label>Location</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label id="lblLocation" runat="Server"></asp:Label>
                                            </div>
                                        </div>
                          
                        </div>

                            
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                         
                                <div class="form-group">
                                   <asp:Button ID="ShowSum" runat="server" Text="Show my summary" OnClick="ShowSummary" CssClass="btn btn-info"/>
                                  
                                  
                                      
                                  <textarea class="form-control" rows="5" id="ProfileSummary" runat="server" visible="false"></textarea>
                                </div>

                                <p class="h6" id="subheader" runat="server" visible="false">Enter information about yourself, your company, students you're interested in, and potential opportunities!</p>

                                <br />
                                <asp:Button ID="BtnEdit" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="EditSummary" Visible="false"/>
                                <br />

                                            
                                </div>
                               
                   </div>
                        
                    </div>
                </div>
            </form>           
        </div>



   
     
</body>
   

</html>