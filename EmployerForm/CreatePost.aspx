<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreatePost.aspx.cs" Inherits="CreatePost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Mojo - Bootstrap 4 Multipurpose One Page Template" />
    <meta name="author" content="theme_xpress">
    <title>CUED-IN</title>
    <link rel="shortcut icon" href="img/favicon.png">

    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Futura:300,400,500,600,700,800,900|Source+Sans+Pro:300,400,600,700,900" rel="stylesheet">

    <!-- css libraries -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/icofont.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/lightbox.css" rel="stylesheet">
    <link href="css/hamburgers.min.css" rel="stylesheet">

    <!-- main style -->
    <link href="style.css" rel="stylesheet">
    <!-- responsive.css -->
    <link href="css/responsive.css" rel="stylesheet">

                                        <script type="text/javascript">
                                            function ShowPostBox() {
                                                $('#NewPosting').show();
                
                                            }
                                        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                <a href="#home" rel="m_PageScroll2id">home</a>
                            </li>
                            <li>
                                <a href="#about" rel="m_PageScroll2id" data-ps2id-offset="50">about</a>
                            </li>
                            <li>
                                <a href="#service" rel="m_PageScroll2id">our community</a>
                            </li>

                            <li>
                                <a href="#team" rel="m_PageScroll2id">contact</a>
                            </li>
                            <li>
                                <a href="#contact" rel="m_PageScroll2id">Login/Create Account</a>
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

    <br />
    <br />
    <br />
    <br />
    <br />


   
                                          



                                <div class="modal" tabindex="-1" role="textbox" id="NewPosting">
                                    <div class="modal-textbox" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">New Posting</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Enter your opportunity here!</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-primary">Submit Post</button>
                                                <button type="button" class="btn btn-secondary">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                        
        

                                       
                                        
                                           
                                       

                                        

                                        


</asp:Content>

