<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RevisedLanding.aspx.cs" Inherits="RevisedLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Revised Profile</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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

    <style>
       
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
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
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}
    </style>

</head>



<body style="background-color:indianred">

      
    

  

            <form runat="server" id="form1">
                 <div class="container emp-profile" runat="server">



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
       

           <script type="text/javascript">
    function ShowPopup(/*title, body*/) {
        //$("#PostModal .modal-title").html(title);
        //$("#PostModal .modal-body").html(body);
        $("#PostModal").modal("show");
    }
</script>

            
        <%--END POST MODAL--%>




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
                                        <asp:Label ID="BigNameResult" runat="server" Text=""></asp:Label>
                                    </h5>
                                    <h6>
                                       Create Posts and view applications.
                                    </h6>
                                    <p class="proile-rating">Your profile</p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" id="hometab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" runat="server">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profiletab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" runat="server">Timeline</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2" runat="server">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                        <br />
                        <br />
                        <div class="form-group" runat="server">
                         <asp:Button ID="btnShowPopup" runat="server" Text="New Post" OnClick="ShowPopup"
                         CssClass="btn btn-info btn-lg" />
                            </div>
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
                        <div class="tab-content profile-tab" id="myTabContent" runat="server">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" runat="server">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Usernamelbl" runat="server" Text="Username"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="UsernameResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Namelbl" runat="server" Text="Name"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="NameResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Companylbl" runat="server" Text="Company Name"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="CompanyResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Locationlbl" runat="server" Text="Phone Number"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="LocationResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Joblbl" runat="server" Text="Job Title"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="JobResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Phonelbl" runat="server" Text="Phone Number"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="PhoneResult" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                <div class="row">
                                            <div class="col-md-6">
                                                <br />
                                                <asp:Button ID="ShowSum" runat="server" Text="Show my summary" OnClick="ShowSummary" CssClass="btn btn-info"/>  
                                                <br />

                                                <textarea class="form-control" rows="5" id="ProfileSummary" runat="server" visible="false"></textarea>
                                                <br />
                                                 <asp:Button ID="BtnEdit" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="EditSummary" Visible="false"/>
                                                <p class="h6" id="subheader" runat="server" visible="false">Enter information about yourself, your company, students you're interested in, and potential opportunities!</p>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                                 <div id="PostAlert" class="alert alert-success collapse">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> Opportunity posted.
                        </div>
                        <script type="text/javascript">
                            function ShowPostAlert() {
                            $('#PostAlert').show();
                
                        }
                        </script>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
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
