<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSearchPage.aspx.cs" Inherits="JobSearchPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .rounded_corners {
            border: 1px solid #A1DCF2;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            overflow: hidden;
        }

        .rounded_corners td, .rounded_corners th {
            border: 1px solid #A1DCF2;
            font-family: Arial;
            font-size: 10pt;
            text-align: center;
        }

        .rounded_corners table table td {
            border-style: none;
        }
    </style>
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
                                <div class="row form-group ">
                                    <input type="text" class="form-control w-75 p-3" id="txtSearch" name="PostSearch" placeholder="Posts..." runat="server" />

                                    <asp:Button ID="btnSearch" data-animation="animated fadeInUp" class="btn btn-light w-25" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                                </div>

                                <%--<div class="">
                                    <input id="FTCheck" type="checkbox" name="OppType" value="Full Time" checked onclick="checkboxFunction()" />&nbsp;Full Time&nbsp;&nbsp;
                                    <input id="PTCheck" type="checkbox" name="OppType" value="Part Time" checked />&nbsp;Part Time&nbsp;&nbsp;
                                    <input id="AppCheck" type="checkbox" name="OppType" value="Apprenticeship" checked />&nbsp;Apprenticship&nbsp;&nbsp;
                                    <input id="Intcheck" type="checkbox" name="OppType" value="Intership" checked />&nbsp;Intership&nbsp;&nbsp;
                                    <input id="ShadCheck" type="checkbox" name="OppType" value="Shadowing" checked />&nbsp;Shadowing&nbsp;&nbsp;
                                </div>--%>
                                <%--   <div>
                                    
                                    <asp:Label for="CheckBoxFT" runat="server">Full-Time</asp:Label>
                                    <asp:CheckBox ID="CheckBoxFT" runat="server" name="OppType" Checked="true" OnCheckedChanged="CheckBoxFT_CheckedChanged"/>
                                    <asp:Label for="CheckBoxPT" runat="server">Part-Time</asp:Label>
                                    <asp:CheckBox ID="CheckBoxPT" runat="server" name="OppType" Checked="true" OnCheckedChanged="CheckBoxPT_CheckedChanged"/>
                                    <asp:Label for="CheckBoxApp" runat="server">Apprenticeship</asp:Label>
                                    <asp:CheckBox ID="CheckBoxApp" runat="server" name="OppType" Checked="true" OnCheckedChanged="CheckBoxApp_CheckedChanged"/>
                                    <asp:Label for="CheckBoxInt" runat="server">Intership</asp:Label>
                                    <asp:CheckBox ID="CheckBoxInt" runat="server" name="OppType" Checked="true" OnCheckedChanged="CheckBoxInt_CheckedChanged"/>
                                    
                                </div>
                                

                                <script type="text/javascript">
                                    function checkboxFunction(isChecked) {
                                        if (document.getElementById("FTCheck").checked = true) {
                                            e
                                        }
                                        else { }
                                    }

                                </script>

                                <div class="form-group">
                                    <asp:Label for="TxtOppType" runat="server">Opportunity Type:</asp:Label>
                                    <select class="row form-control" id="TxtOppType" placeholder="Select Opprotunity Type..." runat="server" onclick="ddFunction()" >
                                        <option>Choose Type..</option>
                                        <option>Full Time</option>
                                        <option>Part Time</option>
                                        <option>Apprenticeship</option>
                                        <option>Intership</option>
                                    </select>
                                </div>--%>

                                <script>


</script>
                            </div>
                            <div class="form-group rounded_corners">

                                <asp:GridView ID="searchGV" runat="server" AutoGenerateColumns="False" DataKeyNames="PostID" DataSourceID="SqlDataSource1" >
                                    <Columns>

                                        <asp:BoundField DataField="PostDescription" HeaderText="PostDescription" SortExpression="PostDescription" />
                                        <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
                                        <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
                                        <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="BtnMoreInfo" runat="server" OnClick="BtnMoreInfo_Click" CssClass="btn btn-light" Text=" More Info " />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cued-InConnectionString %>" SelectCommand="SELECT [PostID], [PostDescription], [DateCreated], [Deadline], [PersonID], [OpportunityID], [ModifiedDate] FROM [Post] WHERE ([PostDescription] LIKE '%' + @PostDescription + '%')">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="&quot;&quot;" Name="PostDescription" SessionField="temp" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>


                                <%--         <asp:GridView ID="searchGV" runat="server" AlternatingRowStyle-BorderStyle="Outset" BackColor="White" BorderStyle="Solid" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="OpportunityID" DataSourceID="SqlDataSource1" Width="95%" ShowHeaderWhenEmpty="True">
                                    <AlternatingRowStyle BorderStyle="Outset"></AlternatingRowStyle>

                                    <Columns>
                                        <asp:BoundField DataField="OpportunityID" HeaderText="OpportunityID" InsertVisible="False" ReadOnly="True" SortExpression="OpportunityID" />
                                        <asp:BoundField DataField="OpportunityName" HeaderText="OpportunityName" SortExpression="OpportunityName" />
                                        <asp:BoundField DataField="OpportunityType" HeaderText="OpportunityType" SortExpression="OpportunityType" />
                                        <asp:BoundField DataField="isApprenticeship" HeaderText="isApprenticeship" SortExpression="isApprenticeship" />
                                    </Columns>
                                    <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cued-InConnectionString %>" SelectCommand="SELECT * FROM [Opportunity] WHERE ([OpportunityName] LIKE '%' + @OpportunityName + '%')">  "SELECT * FROM [Opportunity] WHERE ([OpportunityName] LIKE '%' + @OpportunityName + '%' AND [OpportunityType] LIKE  '%' + @OpportunityType + '%')">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="&quot;&quot;" Name="OpportunityName" SessionField="temp" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>--%>
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

