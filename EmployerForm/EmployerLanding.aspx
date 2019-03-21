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

       
        



        <center>
    <asp:Button ID="btnShowPopup" runat="server" Text="New Post" OnClick="ShowPopup"
        CssClass="btn btn-info btn-lg" />
</center>

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


        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4>
                            James Madison</h4>
                        <small><cite title="San Francisco, USA">Harrisonburg, VA <i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>james@madison.edu
                            <br />
                            <i class="glyphicon glyphicon-globe"></i><a href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
                            <br />
                            <i class="glyphicon glyphicon-gift"></i>June 02, 1988</p>
                        <!-- Split button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Business</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span><span class="sr-only">Social</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Twitter</a></li>
                                <li><a href="https://plus.google.com/+Jquery2dotnet/posts">Google +</a></li>
                                <li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Github</a></li>
                            </ul>
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
