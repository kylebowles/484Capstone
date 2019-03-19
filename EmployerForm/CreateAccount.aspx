<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="Employer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
		<!-- page-wrapper start -->
		<div class="page-wrapper">
			<!-- ----------------- -->
			<!-- main-header start -->
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
							</ul>
					    </div>
					</nav>
				</div><!-- /.container -->
			</header>
			<!-- main-header end -->
			<!-- --------------- -->
<!-- #contact start -->
			<div id="contact">
                <div>
				<div class="contact text-center text-white text-uppercase">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xl-10">
                                
                            <!-- Registration Form --> 
                                
								<div class="contact-content">
                                    
                                    <a href="#contact" rel="m_PageScroll2id" data-animation="animated fadeInUp" class="thm-btn text-white f2 fw-7 text-left" onclick="history.back(-1)">BACK</a>

                                    <h1 class="f1 fw-7">EMPLOYER REGISTRATION</h1>
                                
                                    <form>
                                        <div id="successAlert" class="alert alert-success collapse">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> Account created.
                        </div>
                        <script type="text/javascript">
                            function ShowSuccessAlert() {
                            $('#successAlert').show();
                
                        }
                        </script>

                            <div id="dangerAlert" class="alert alert-danger collapse">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Try again!</strong> Email already registered, please use a different email.
                        </div>
                        <script type="text/javascript">
                            function ShowDangerAlert() {
                            $('#dangerAlert').show();
                
                        }
                        </script>

                             <div id="dangerPassAlert" class="alert alert-danger collapse">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Try again!</strong> The passwords don't match. Make sure they're the same and try again.
                        </div>
                        <script type="text/javascript">
                            function ShowDangerPassAlert() {
                            $('#dangerPassAlert').show();
                
                        }
                        </script>
                                         <div class="row">
                                              <div class="col-sm-6">
                                                <div class="form-group">
                                                    <asp:label for="FirstName" runat="server">First Name</asp:label>
                                                    <input type="text" class="form-control" id="FirstName" name="firstname" placeholder="Your name.." runat="server" />
                                                    <%--<asp:Label ID="FirstName" runat="server" Text="" CssClass="form-control"></asp:Label>
                                                    <asp:TextBox type="text" ID="FirstNameText" runat="server" placeholder="Your first name"></asp:TextBox>--%>
                                                </div>
                                             </div>
                                          <div class="col-sm-6 float-right">   
                                            <div class="form-group">
                                                <asp:label for="LastName" runat="server">Last Name</asp:label>
                                                <input type="text" class="form-control" id="LastName" name="lastname" placeholder="Your last name.." runat="server" />
                                                    
                                            </div>
                                            </div>
                                            </div>
                                        <div class="form-group">
                                            <asp:label for="CompanyName" runat="server">Company Name</asp:label>
                                            <input type="text" class="form-control" id="CompanyName" name="companyname" placeholder="Company name.." runat="server" />
                                                
                                            </div>
                                            <div class="form-group">
                                                <asp:label for="EmailAdd" runat="server">Email address</asp:label>
                                                <input type="email" class="form-control" id="EmailAdd" aria-describedby="emailHelp" placeholder="Enter email" runat="server" />
                                                
                                                
                                        </div>
                                    
                                    <div class="form-group">
                                            <asp:label for="Password1" runat="server">Password</asp:label>
                                            <input type="password" class="form-control" id="Password1" name="psw" required placeholder="Password" runat="server" />
                                                    
                                        </div>
                                    <div class="form-group">
                                        <label for="Password2" runat="server">Re-Enter Password</label>
                                        <input type="password" class="form-control" id="Password2" placeholder="Re-Enter Password" name="psw-repeat" required runat="server" /> 
                                      
                                        <hr>
                                    </div>
                                        <div class="form-group">
                                            <asp:label for="PhoneNumber" runat="server">Phone Number</asp:label>
                                             <input class="form-control" type="tel" placeholder="Phone Number"  id="PhoneNumber" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" runat="server" />
                                                
                                        </div>
                                          <div class="form-group">
                                            <asp:label for="CompHouseNumber" runat="server">Company Address</asp:label>
                                                <input type="text" class="form-control" id="CompHouseNumber" name="companyaddress" placeholder="Company Street Number" runat="server" />
                                               
                                            </div>
                                        <div class="form-group">
                                                <asp:label for="CompStreet" runat="server">Company Address</asp:label>
                                                <input type="text" class="form-control" id="CompStreet" name="companyaddress" placeholder="Company Street" runat="server" />
                                               
                                            </div>
                                        <div class="row">
                                              <div class="col-sm-6">
                                                <div class="form-group">
                                                    <asp:label for="City" runat="server">City</asp:label>
                                                    <input type="text" class="form-control" id="City" name="city" placeholder="City..." runat="server" />
                                                    
                                                </div>
                                             </div>

                                            <div class="form-group">
                                            <asp:label for="CompCountry" runat="server">Company Country</asp:label>
                                                <input type="text" class="form-control" id="CompCountry" name="companyaddress" placeholder="Country" runat="server" />
                                                </div>

                                            <div class="form-group">
                                            <asp:label for="CompZip" runat="server">Company Zip Code</asp:label>
                                                <input type="text" class="form-control" id="CompZip" name="companyaddress" placeholder="Company Zip Code" runat="server" />
                                                </div>

                                          <div class="col-sm-6 float-right">   
                                            <div class="form-group">
                                                <asp:label for="State" runat="server">State</asp:label>
                                                    <select class="form-control" id="State" placeholder="Select state..." runat="server">
                                                        <option>Alabama</option>
                                                        <option>Alaska</option>
                                                        <option>Arizona</option>
                                                        <option>Arkansas</option>
                                                        <option>California</option>
                                                        <option>Colorado</option>
                                                        <option>Connecticut</option>
                                                        <option>Delaware</option>
                                                        <option>Florida</option>
                                                        <option>Georgia</option>
                                                        <option>Hawaii</option>
                                                        <option>Idaho</option>
                                                        <option>Illinois</option>
                                                        <option>Indiana</option>
                                                        <option>Iowa</option>
                                                        <option>Kansas</option>
                                                        <option>Kentucky</option>
                                                        <option>Louisiana</option>
                                                        <option>Maine</option>
                                                        <option>Maryland</option><option>Massachusetts</option><option>Michigan</option>
                                                        <option>Minnesota</option><option>Mississippi</option>
                                                        <option>Missouri</option><option>Montana</option>
                                                        <option>Nebraska</option><option>Nevada</option>
                                                        <option>New Hampshire</option>
                                                        <option>New Jersey</option>
                                                        <option>New Mexico</option>
                                                        <option>New York</option>
                                                        <option>North Carolina</option>
                                                        <option>North Dakota</option><option>Ohio</option>
                                                        <option>Oklahoma</option><option>Oregon</option>
                                                        <option>Pennsylvania</option>
                                                        <option>Rhode Island</option>
                                                        <option>South Carolina</option>
                                                        <option>South Dakota</option><option>Tennessee</option>
                                                        <option>Texas</option>
                                                        <option>Utah</option><option>Vermont</option>
                                                        <option>Virginia</option><option>Washington</option>
                                                        <option>West Virginia</option>
                                                        <option>Wisconsin</option>
                                                        <option>Wyoming</option>
                                                    </select>
                                            </div>
                                            </div>
                                            </div>
                                        </div>
                                     </form>
                                        
                                    <!-- CREATE ACCOUNT/SUBMIT ... not sure where to link this --> 
                                    <center>   
                                    <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                            <%--<a href="createaccount.html" class="f2 text-uppercase" onclick="insert_Click" runat="server">SUBMIT</a>--%>
                                           <%-- <asp:Button ID="Submit" runat="server" Text="Submit" onClick="insert_Click" class="thm-btn text-white f2 fw-7 text-left"
                                                data-animation="animated fadeInUp" rel="m_PageScroll2id"/>--%>
                                       
                                        <asp:LinkButton ID="SubmitClick" runat="server" onClick="insert_Click" class="thm-btn text-white f2 fw-7 text-left" 
                                            data-animation="animated fadeInUp" rel="m_PageScroll2id">Submit</asp:LinkButton>
                                          </div>
                                        </center> 

                        <asp:Label ID="EmailTaken" runat="server" Text=""></asp:Label>
                        <asp:Label ID="PassDontMatch" runat="server" Text=""></asp:Label>
                        

                               
                            </div>
                            </div>

								</div><!-- /.contact-content -->
							</div><!-- /.col-xl-10 -->
						</div><!-- /.row justify-content-center -->
					</div><!-- /.container -->
				</div><!-- /.contact -->

				<footer class="text-center">
					<div class="contact-info text-white">
						<div class="container">
							<div class="row">
								<div class="col-sm-4 mb-4 mb-sm-0 crop">
									<div class="contact-single wow fadeInUp" data-wow-duration="2s">
										<i class="icofont-location-pin"></i>
										<h2 class="f1 fw-7 text-uppercase">location</h2>
										<p class="f2">25th, Park Vista, LONDON</p>
									</div><!-- /.contact-single -->
								</div><!-- /.col-lg-4 -->
								<div class="col-sm-4 mb-4 mb-sm-0 crop">
									<div class="contact-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
										<i class="icofont-location-pin"></i>
										<h2 class="f1 fw-7 text-uppercase">call us</h2>
										<p class="f2">+00 987 654 3210</p>
									</div><!-- /.contact-single -->
								</div><!-- /.col-lg-4 -->
								<div class="col-sm-4 crop">
									<div class="contact-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".6s">
										<i class="icofont-location-pin"></i>
										<h2 class="f1 fw-7 text-uppercase">email us</h2>
										<p class="f2">contact@unique.com</p>
									</div><!-- /.contact-single -->
								</div><!-- /.col-lg-4 -->
							</div><!-- /.row -->
						</div><!-- /.container -->
					</div><!-- /.contact-info -->
					
					<div class="footer-bottom text-uppercase">
						<p class="f2"><a href="https://themeforest.net/user/kalanidhithemes">© 2016,  All Rights Reserved, Made by <span>jhon</span></a></p>
					</div><!-- /.footer-bottom -->

					<ul class="footer-social text-center justify-content-center nav">
						<li><a href="#" class="fb-bg"><i class="icofont-facebook"></i></a></li>
						<li><a href="#" class="tw-bg"><i class="icofont-twitter"></i></a></li>
						<li><a href="#" class="gg-bg"><i class="icofont-google-plus"></i></a></li>
						<li><a href="#" class="pnt-bg"><i class="icofont-pinterest"></i></a></li>
					</ul><!-- /.footer-social -->
				</footer><!-- footer -->
			</div><!-- /#contact -->
			<!-- #contact end -->
             </div>
        <!-- back2Top end -->
		
		<!-- ---------- -->
        <!-- js plugins -->
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
    </div>
</body>
</asp:Content>

