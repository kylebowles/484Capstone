<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TableauData.aspx.cs" Inherits="TableauData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Community Insights</title>
    <style>
        body {
            background-color: gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="page-wrapper">
        <!-- ----------------- -->
        <!-- main-header start -->
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
        <div class="container">
            <div class="row justify-content-center">

                <div class='tableauPlaceholder' id='viz1554346616401' style='position: relative'>
                    <noscript><a href='#'>
                        <img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cu&#47;Cued-In&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript>
                    <object class='tableauViz' style='display: none;'>
                        <param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />
                        <param name='embed_code_version' value='3' />
                        <param name='site_root' value='' />
                        <param name='name' value='Cued-In&#47;Dashboard1' />
                        <param name='tabs' value='no' />
                        <param name='toolbar' value='yes' />
                        <param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cu&#47;Cued-In&#47;Dashboard1&#47;1.png' />
                        <param name='animate_transition' value='yes' />
                        <param name='display_static_image' value='yes' />
                        <param name='display_spinner' value='yes' />
                        <param name='display_overlay' value='yes' />
                        <param name='display_count' value='yes' />
                        <param name='filter' value='publish=yes' />
                    </object>
                </div>
                <script type='text/javascript'>                    var divElement = document.getElementById('viz1554346616401'); var vizElement = divElement.getElementsByTagName('object')[0]; vizElement.style.width = '1000px'; vizElement.style.height = '827px'; var scriptElement = document.createElement('script'); scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js'; vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
            </div>
        </div>



        <div class="back2Top bg-dark wave">
            <i class="fa fa-sort-asc text-white"></i>
        </div>
        <script type='text/javascript'>                   
            var divElement = document.getElementById('viz1552958666651'); var vizElement = divElement.getElementsByTagName('object')[0]; vizElement.style.width = '1000px'; vizElement.style.height = '827px'; var scriptElement = document.createElement('script'); scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js'; vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
        <script src="js/jquery-1.12.4.min.js"></script>
        <script src="js/queryloader2.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.filterizr.min.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/lightbox.js"></script>
        <script src="js/jquery.malihu.PageScroll2id.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/main.js"></script>
</asp:Content>


