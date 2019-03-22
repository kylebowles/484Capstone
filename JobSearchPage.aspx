<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSearchPage.aspx.cs" Inherits="JobSearchPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <body>
        <!-- page-wrapper start -->
        <div class="page-wrapper">
            <!-- ----------------- -->
            <!-- main-header start -->
            <header class="main-header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg main-nav px-0">
                        <a class="navbar-brand" href="#home" rel="m_PageScroll2id">
                            <img src="img/tinylogo.png" alt="Logo" height="100">
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
                                    <a href="CUEDIN.aspx#about" rel="m_PageScroll2id" data-ps2id-offset="50">about</a>
                                </li>
                                <li>
                                    <a href="CUEDIN.aspx#service" rel="m_PageScroll2id">our community</a>
                                </li>

                                <li>
                                    <a href="CUEDIN.aspx#team" rel="m_PageScroll2id">contact</a>
                                </li>
                                <li>
                                    <a href="CUEDIN.aspx#contact" rel="m_PageScroll2id">Login/Create Account</a>
                                </li>
                                <li>
                                    <a href="JobSearchPage.aspx#search" rel="m_PageScroll2id">Job Search</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- /.container -->
            </header>
            <div id="search">
                <div>
                    <div class="contact text-center text-white text-uppercase">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-xl-10">

                                    <!-- Registration Form -->

                                    <div class="contact-content">

                                        <a href="JobSearchPage.aspx#search" rel="m_PageScroll2id" data-animation="animated fadeInUp" class="thm-btn text-white f2 fw-7 text-left" onclick="history.back(-1)">BACK</a>

                                        <h1 class="f1 fw-7">Opportunity Search</h1>

                                        <form>
                                            <div id="dangerAlert" class="alert alert-danger collapse">
                                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                <strong>Try again!</strong> Unavailable Search
                       
                                            </div>
                                            <script type="text/javascript">
                                                function ShowDangerAlert() {
                                                    $('#dangerAlert').show();

                                                }
                                            </script>

                                        </form>
                                    </div>
                                </div>

                            </div>

                            <div class="container col-xl-10">

                                <div>
                                    <asp:Label for="txtSearch" runat="server">Search:</asp:Label>
                                </div>
                                <div class="row form-group">
                                    <input type="text" class="form-control w-75 p-3" id="txtSearch" name="firstname" placeholder="Work Based Learning Opportunities..." runat="server" />
                                    
                                    <asp:Button ID="btnSearch" data-animation="animated fadeInUp" class="btn btn-light w-25" runat="server" Text="Search" OnClick="btnSearch_Click"/>
                                </div>
                                <div class="form-group">
                                    <asp:Label for="row TxtOppType" runat="server">Opportunity Type:</asp:Label>
                                    <select class="row form-control" id="TxtOppType" placeholder="Select Opprotunity Type..." runat="server">
                                        <option>Full Time</option>
                                        <option>Part Time</option>
                                        <option>Apprenticeship</option>
                                        <option>Intership</option>
                                    </select>
                                </div>
                                <div class="form-group ">
                                    <asp:GridView ID="searchGV" runat="server" AlternatingRowStyle-BorderStyle="Outset" BackColor="White" BorderStyle="Solid" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="OpportunityID" DataSourceID="SqlDataSource1" Width="95%">
                                        <AlternatingRowStyle BorderStyle="Outset"></AlternatingRowStyle>

                                        <Columns>
                                            <asp:BoundField DataField="OpportunityID" HeaderText="OpportunityID" InsertVisible="False" ReadOnly="True" SortExpression="OpportunityID" />
                                            <asp:BoundField DataField="OpportunityName" HeaderText="OpportunityName" SortExpression="OpportunityName" />
                                            <asp:BoundField DataField="OpportunityType" HeaderText="OpportunityType" SortExpression="OpportunityType" />
                                            <asp:BoundField DataField="isApprenticeship" HeaderText="isApprenticeship" SortExpression="isApprenticeship" />
                                        </Columns>
                                        <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cued-InConnectionString %>" SelectCommand="SELECT * FROM [Opportunity] WHERE ([OpportunityName] LIKE '%' + @OpportunityName + '%')">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="&quot;&quot;" Name="OpportunityName" SessionField="temp" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                </div>
                                </div>



                                <div class="back2Top bg-dark wave">
                                    <i class="fa fa-sort-asc text-white"></i>
                                </div>
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

