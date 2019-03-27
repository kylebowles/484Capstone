<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CUEDIN.aspx.cs" Inherits="CUEDIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Cued-In" content="CUED-IN Website" />
    <meta name="author" content="Signature Systems">
    <title>CUED-IN</title>
    <link rel="shortcut icon" href="img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body style="background-color:#FFF;">
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
        <!-- main-header end -->
        <!-- --------------- -->

        <!-- ----------- -->
        <!-- #home start -->
        <main class="slider-wrapper" id="home">
            <div id="mainSlider" class="carousel slide carousel-fade slider-content-style slider-home-one">
                <ol class="carousel-indicators">
                    <li data-target="#mainSlider" data-slide-to="0" class="active"></li>
                    <li data-target="#mainSlider" data-slide-to="1"></li>
                    <li data-target="#mainSlider" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner text-center text-uppercase f1">
                    <div class="carousel-item active" data-bg="1">
                        <div class="container h-100">
                            <div class="row h-100 align-items-center justify-content-center">
                                <div class="crop text-white">
                                    <div class="bannerContent">
                                        <h2 data-animation="animated fadeInUp">we are</h2>
                                        <h1 data-animation="animated fadeInUp">CUED-IN</h1>
                                        <a href="#about" rel="m_PageScroll2id" data-animation="animated fadeInUp" class="thm-btn text-white f2 fw-7">ENTER</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.carousel-item -->
                    <div class="carousel-item" data-bg="2">
                        <div class="container h-100">
                            <div class="row h-100 align-items-center justify-content-center">
                                <div class="crop text-white">
                                    <div class="bannerContent">
                                        <h2 data-animation="animated fadeInDown">we are</h2>
                                        <h1 data-animation="animated fadeInUp">BRIDGING THE GAP</h1>
                                        <a href="#about" rel="m_PageScroll2id" data-animation="animated fadeInUp" class="thm-btn text-white f2 fw-7">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.carousel-item -->
                    <div class="carousel-item" data-bg="3">
                        <div class="container h-100">
                            <div class="row h-100 align-items-center justify-content-center">
                                <div class="crop text-white">
                                    <div class="bannerContent">
                                        <h2 data-animation="animated fadeInUp">we are</h2>
                                        <h1 data-animation="animated fadeInUp">HERE TO EMPOWER</h1>
                                        <a href="#about" rel="m_PageScroll2id" data-animation="animated fadeInUp" class="thm-btn text-white f2 fw-7">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.carousel-item -->
                </div>
                <!-- Controls -->
                <a class="carousel-control-prev" href="#mainSlider" role="button" data-slide="prev">
                    <img src="img/prev.png" alt="previous">
                </a>
                <a class="carousel-control-next" href="#mainSlider" role="button" data-slide="next">
                    <img src="img/next.png" alt="next">
                </a>
            </div>
        </main>
        <!-- #home end -->
        <!-- --------- -->

        <!-- ------------ -->
        <!-- #about start -->
        <div class="about" id="about">
            <div class="features">
                <div class="row mx-0">
                    <div class="col-lg-3 col-sm-6 feature-card crop">
                        <div class="feature-body wow fadeInLeft" data-wow-delay=".1s">
                            <i class="icofont-bulb-alt"></i>
                            <h2 class="f1 fw-7">impart knowledge</h2>
                            <p class="f2 fw-4"></p>
                        </div>
                        <!-- /.feature-card -->
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3 col-sm-6 feature-card crop">
                        <div class="feature-body wow fadeInLeft" data-wow-delay=".4s">
                            <i class="icofont-megaphone-alt"></i>
                            <h2 class="f1 fw-7">Easy &amp; Accessible Opportunities </h2>
                            <p class="f2 fw-4">
                                <!--Insert other content-->
                            </p>
                        </div>
                        <!-- /.feature-card -->
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3 col-sm-6 feature-card crop">
                        <div class="feature-body wow fadeInLeft" data-wow-delay=".7s">
                            <i class="icofont-paint"></i>
                            <h2 class="f1 fw-7">You Have A Voice</h2>
                            <p class="f2 fw-4">
                                <!--Insert other content-->
                            </p>
                        </div>
                        <!-- /.feature-card -->
                    </div>
                    <!-- /.col-lg-3 -->
                    <div class="col-lg-3 col-sm-6 feature-card crop">
                        <div class="feature-body wow fadeInLeft" data-wow-delay=".9s">
                            <i class="icofont-wall-clock"></i>
                            <h2 class="f1 fw-7">Provide Resources</h2>
                            <p class="f2 fw-4">
                                <!--Insert other content-->
                            </p>
                        </div>
                        <!-- /.feature-card -->
                    </div>
                    <!-- /.col-lg-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.features -->
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="secHeader">
                            <p>our mission &amp;</p>
                            <h1>the story about us</h1>
                        </header>
                    </div>
                    <!-- /.col-12 -->
                    <div class="col-xl-4">
                        <section class="crop">
                            <p class="f1 fw-7 text-xl-right text-center wow fadeInRight" data-wow-duration="2s">
                                <span>Our goal is to provide</span><br>
                                you with the knowledge to make better career decisions.
							
                            </p>
                        </section>
                    </div>
                    <!-- /.col-xl-4 -->
                    <div class="col-xl-8">
                        <article class="f2 wow fadeIn" data-wow-duration="2s">
                            <p class="text-center text-sm-left">CUED-In Inc. was founded in 2015 by talking with counselors, parents, teachers, and students. We saw that there was no platform out there that connects the student to local opportunities (jobs, internships, shadowing). Also, other platforms point students to just college bound careers. We want to bring everything together because all careers are needed no matter if it takes you to college or a technical school. So CUED-In was formed and is an app and web-based platform that promotes a career focused, community connected future by showing students various pathways to a career. We bring all the key players—students, parents, counselors, career coaches, teachers, and businesses—onto one platform, enhancing communication and eliminating the need for multiple websites. Having everyone on the same page promotes seamless, informed, and financially savvy decisions while helping students keep an eye on the ultimate goal that a college or technical school degree provides—a career.</p>

                            <ul>
                                <li>500+ Students connected</li>
                                <li>Getting students ahead of the game early</li>
                            </ul>
                        </article>
                    </div>
                    <!-- /.col-xl-8 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
            <div class="text-center">
                <img src="img/stockstudentscrop.jpg" alt="about us">
            </div>
            <!-- /.text-center -->
        </div>
        <!-- /.about -->
        <!-- #about end -->
        <!-- ---------- -->

        <!-- -------------- -->
        <!-- #service start -->
        <div class="service" id="service">
            <header>
                <div class="secHeader">
                    <p>filler</p>
                    <h1>OUR COMMUNITY</h1>
                </div>
            </header>
            <!-- /.secHeader -->


            <!-- STUDENT SECTION -->
            <section class="service-block" id="service1">
                <div class="container-fluid px-0">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 pr-0 img-box order-2 order-lg-1">
                            <img src="img/classroom.jpg" alt="Service" width="960" height="500">
                        </div>
                        <!-- /.col-md-12 -->
                        <div class="col-lg-6 bg-white pl-0 d-flex align-items-center order-1 order-lg-2 crop">
                            <div class="singleService wow fadeInRight" data-wow-duration="1.8s">
                                <header>
                                    <span class="f2">01</span>
                                    <h2 class="f1 fw-7 text-uppercase">Students</h2>
                                </header>
                                <p class="f2">Providing Students with opporunities that serve their unique interests</p>
                                <a href="#" class="f2 text-uppercase">read more</a>
                            </div>
                            <!-- /.singleService -->
                        </div>
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.service-block -->
            <!-- END STUDENTS SECTION -->

            <!-- EMPLOYER SECTION -->
            <section class="service-block" id="service2">
                <div class="container-fluid px-0">
                    <div class="row">
                        <div class="col-lg-6 bg-white pr-0 d-flex align-items-center crop">
                            <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                <header>
                                    <span class="f2">02</span>
                                    <h2 class="f1 fw-7 text-uppercase">Employer</h2>
                                </header>
                                <p class="f2">Connecting Employers and Students to fill work-based learning opportunities</p>
                                <a href="#" class="f2 text-uppercase">read more</a>
                            </div>
                            <!-- /.singleService -->
                        </div>
                        <!-- /.col-lg-6 -->
                        <div class="col-lg-6 col-md-12 pl-0 img-box">
                            <img src="img/hiring.jpg" alt="Service" width="960" height="500">
                        </div>
                        <!-- /.col-md-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.service-block -->
            <!-- END EMPLOYER SECTION -->

            <!-- PARENTS SECTION -->
            <section class="service-block" id="service3">
                <div class="container-fluid px-0">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 pr-0 img-box order-2 order-lg-1">
                            <img src="img/blackriver.jpg" alt="Service" width="960" height="500">
                        </div>
                        <!-- /.col-md-12 -->
                        <div class="col-lg-6 bg-white pl-0 d-flex align-items-center order-1 order-lg-2 crop">
                            <div class="singleService wow fadeInRight" data-wow-duration="1.8s">
                                <header>
                                    <span class="f2">03</span>
                                    <h2 class="f1 fw-7 text-uppercase">Parent</h2>
                                </header>
                                <p class="f2">Allowing parents to view their Student's interests and stay informed.</p>
                                <a href="#" class="f2 text-uppercase">read more</a>
                            </div>
                            <!-- /.singleService -->
                        </div>
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.service-block -->
            <!-- END PARENTS SECTION -->

            <!-- SCHOOLS SECTION -->
            <section class="service-block" id="service4">
                <div class="container-fluid px-0">
                    <div class="row">
                        <div class="col-lg-6 bg-white pr-0 d-flex align-items-center crop">
                            <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                <header>
                                    <span class="f2">04</span>
                                    <h2 class="f1 fw-7 text-uppercase">Schools</h2>
                                </header>
                                <p class="f2">Providing Schools with a portal to reach out to their students regarding opportunities</p>
                                <a href="#" class="f2 text-uppercase">read more</a>
                            </div>
                            <!-- /.singleService -->
                        </div>
                        <!-- /.col-lg-6 -->
                        <div class="col-lg-6 col-md-12 pl-0 img-box">
                            <img src="img/girlcoding.jpg" alt="Service" width="960" height="500">
                        </div>
                        <!-- /.col-md-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.service-block -->
            <!-- END SCHOOLS SECTION -->

            <!-- TEACHERS SECTION -->
            <section class="service-block" id="service5">
                <div class="container-fluid px-0">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 pr-0 img-box order-2 order-lg-1">
                            <img src="img/tutor.jpg" alt="Service" width="960" height="500">
                        </div>
                        <!-- /.col-md-12 -->
                        <div class="col-lg-6 bg-white pl-0 d-flex align-items-center order-1 order-lg-2 crop">
                            <div class="singleService wow fadeInRight" data-wow-duration="1.8s">
                                <header>
                                    <span class="f2">05</span>
                                    <h2 class="f1 fw-7 text-uppercase">Teachers</h2>
                                </header>
                                <p class="f2">Allowing Teachers to connect Students with new learning opportunities</p>
                                <a href="#" class="f2 text-uppercase">read more</a>
                            </div>
                            <!-- /.singleService -->
                        </div>
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </section>
            <!-- /.service-block -->
            <!-- END TEACHERS SECTION -->

            <!-- STAT COUNTER START -->
            <div class="statistic text-center text-white text-uppercase">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-5">
                            <div class="statistic-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                <i class="icofont-calendar"></i>
                                <h2 class="f1 counter">5475</h2>
                                <p class="f2 fw-7">schools served</p>
                            </div>
                            <!-- /.statistic-single -->
                        </div>
                        <!-- /.col-xl-3 col-lg-6 mb-xl-0 mb-30 -->
                        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-5">
                            <div class="statistic-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
                                <i class="icofont-dashboard-web"></i>
                                <h2 class="f1 counter counterPlus">100</h2>
                                <p class="f2 fw-7">businesses on board</p>
                            </div>
                            <!-- /.statistic-single -->
                        </div>
                        <!-- /.col-xl-3 col-lg-6 mb-xl-0 mb-30 -->
                        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-5">
                            <div class="statistic-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".7s">
                                <i class="icofont-simple-smile"></i>
                                <h2 class="f1 counter counterPlus">500</h2>
                                <p class="f2 fw-7">students connected</p>
                            </div>
                            <!-- /.statistic-single -->
                        </div>
                        <!-- /.col-xl-3 col-lg-6 mb-xl-0 mb-30 -->
                        <div class="col-xl-3 col-sm-6 mb-sm-5 mb-xl-0 mb-0">
                            <div class="statistic-single wow fadeInUp" data-wow-duration="2s" data-wow-delay="1s">
                                <i class="icofont-trophy"></i>
                                <h2 class="f1 counter">124</h2>
                                <p class="f2 fw-7">states using cued-in</p>
                            </div>
                            <!-- /.statistic-single -->
                        </div>
                        <!-- /.col-xl-3 col-lg-6 mb-xl-0 mb-30 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /.statistic -->
            <!-- STAT COUNTER START -->

        </div>
        <!-- /.service -->

        <!-- #service end -->
        <!-- ------------ -->

        <!-- -------------- -->
        <!-- ------------ -->

        <!-- ----------- -->
        <!-- #team start -->
        <div class="team text-center text-uppercase" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header>
                            <div class="secHeader">
                                <h1>Meet Our Team</h1>
                            </div>
                        </header>
                    </div>
                    <!-- /.col-12 -->
                    <div class="col-md-4">
                        <div class="member crop">
                            <figure class="wow fadeInUp" data-wow-duration="2s">
                                <img src="img/sethcrop.jpg" alt="Seth">
                                <figcaption>
                                    <h2 class="f1 fw-7">Seth Marsh</h2>
                                    <p class="f2 fw-7">FOUNDER &amp; CEO</p>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.member -->
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-md-4">
                        <div class="member crop">
                            <figure class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
                                <img src="img/emilycrop.jpg" alt="Emily">
                                <figcaption>
                                    <h2 class="f1 fw-7">Emily Marsh</h2>
                                    <p class="f2 fw-7">Business Development</p>

                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.member -->
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-md-4">
                        <div class="member crop">
                            <figure class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".6s">
                                <img src="img/johncrop.jpg" alt="John">
                                <figcaption>
                                    <h2 class="f1 fw-7">John Barlow, ED.D.</h2>
                                    <p class="f2 fw-7">Chief Operating Officer</p>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.member -->
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->

            <!--Section: Contact v.2-->
            <div class="row">
                <div class="col-sm-12">
                    <div class="card text-dark">
                        <div class="card-body">
                            <div class="col-12">
                                <header>
                                    <div class="secHeader">
                                        <h1>Contact Us</h1>
                                    </div>
                                </header>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="fname" name="firstname" placeholder="Your name...">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 float-right">
                                        <div class="form-group row">
                                            <label for="InputEmail1">Email address</label>
                                            <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 form-group">
                                        <label for="comments">Your Message Here...</label>
                                        <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                                    </div>
                                </div>
                            </div>

                            <!-- put in correct #href when page is made -->
                            <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                <a href="#" class="f2 text-uppercase">Submit</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--Section: Contact v.2-->
        </div>
        <!-- /.team -->
        <!-- #team end -->


        <!-- --------- -->

        <!-- ---------------- -->

        <!-- -------------- -->
        <!-- #contact start -->
        <div id="contact">
            <div class="contact text-center text-white text-uppercase">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <div class="contact-content">
                                <h2 class="f1 fw-4">ready to learn more?</h2>
                                <h1 class="f1 fw-7">let's start your journey!</h1>
                                <!-- insert two cards for login and create account linking -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="card text-dark">
                                            <div class="card-body">
                                                <h5 class="card-title">LOGIN</h5>
                                                <p id="PreLogin" class="card-text" runat="server" visible="true">Welcome Back!</p>
                                                <p id="LoginSuccess" class="card-text" runat="server" visible="false">You Logged In</p>
                                                <p id="LoginFail" class="card-text" runat="server" visible="false">Login Failure</p>
                                                <!-- login credentials/inputs (email and password?) -->
                                                <div class="form-group row">
                                                    <label for="InputEmail2">Email address</label>
                                                    <input type="email" class="form-control" id="InputEmail2" runat="server" aria-describedby="emailHelp" placeholder="Enter email"/>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="InputPassword1">Password</label>
                                                    <input type="password" class="form-control" id="InputPassword1" runat="server" name="psw" required placeholder="Password"/>
                                                </div>
                                                <!-- put in correct #href when page is made -->
                                                
                                                    <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                                    <asp:LinkButton ID="LoginClick" runat="server" PostBackUrl="~/CUEDIN.aspx#contact" onClick="LoginButton" class="thm-btn text-grey f2 fw-7 text-left" 
                                                     data-animation="animated fadeInUp" rel="m_PageScroll2id">Login</asp:LinkButton>
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="card text-dark">
                                            <div class="card-body">
                                                <h5 class="card-title">CREATE ACCOUNT</h5>
                                                <div class="form-group">
                                                    <label for="SelectRole">Who Are you?</label>
                                                    <select class="form-control" id="SelectRole" placeholder="Select state...">
                                                        <option>Student</option>
                                                        <option>Employer</option>
                                                        <option>Parent</option>
                                                        <option>Teacher</option>
                                                        <option>School</option>
                                                    </select>
                                                </div>
                                                <div class="singleService wow fadeInLeft" data-wow-duration="1.8s">
                                                    <a href="CreateAccount.aspx" class="f2 text-uppercase">NEXT</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.contact-content -->
                        </div>
                        <!-- /.col-xl-10 -->
                    </div>
                    <!-- /.row justify-content-center -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /.contact -->

            <footer class="text-center">
                <div class="contact-info text-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 mb-4 mb-sm-0 crop">
                                <div class="contact-single wow fadeInUp" data-wow-duration="2s">
                                    <i class="icofont-location-pin"></i>
                                    <h2 class="f1 fw-7 text-uppercase">location</h2>
                                    <p class="f2">Shenandoah Valley of Virginia</p>
                                </div>
                                <!-- /.contact-single -->
                            </div>
                            <!-- /.col-lg-4 -->

                            <div class="col-sm-6 crop">
                                <div class="contact-single wow fadeInUp" data-wow-duration="2s" data-wow-delay=".6s">
                                    <i class="icofont-location-pin"></i>
                                    <h2 class="f1 fw-7 text-uppercase">email us</h2>
                                    <p class="f2">info@cued-in.com</p>
                                </div>
                                <!-- /.contact-single -->
                            </div>
                            <!-- /.col-lg-4 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container -->
                </div>
                <!-- /.contact-info -->

                <div class="footer-bottom text-uppercase">
                    <p class="f2"><a href="https://themeforest.net/user/kalanidhithemes">© 2016,  All Rights Reserved, Made by <span>jhon</span></a></p>
                </div>
                <!-- /.footer-bottom -->

                <ul class="footer-social text-center justify-content-center nav">
                    <li><a href="https://www.facebook.com/cuedin/" class="fb-bg"><i class="icofont-facebook"></i></a></li>
                    <li><a href="https://twitter.com/cued__in" class="tw-bg"><i class="icofont-twitter"></i></a></li>
                    <li><a href="#" class="gg-bg"><i class="icofont-google-plus"></i></a></li>
                    <li><a href="#" class="pnt-bg"><i class="icofont-pinterest"></i></a></li>
                </ul>
                <!-- /.footer-social -->
            </footer>
            <!-- footer -->
        </div>
        <!-- /#contact -->
        <!-- #contact end -->
        <!-- ------------ -->
    </div>
    <!-- page-wrapper end -->

    <!-- back2Top start -->
    <div class="back2Top bg-dark wave">
        <i class="fa fa-sort-asc text-white"></i>
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

    </body>
</asp:Content>

