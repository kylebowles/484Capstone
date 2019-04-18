<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommunityTEST.aspx.cs" Inherits="CommunityTEST" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cued-In Community</title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="css/likeshare.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <script type="text/javascript">
        var like_counter;
        var share_counter;
        var LikeUnlikePost = function LikeUnlikePost(n) {
            like_counter = $("#like-counter" + n).text();
            share_counter = $("#share-counter" + n).text();
                if (document.getElementById('like-content' + n).textContent == "Like") {
                    $('like' + n).addClass("liked");
                    $('#like-content' + n).html("Liked");
                    $('#like-counter' + n).html(++like_counter);
                    if (like_counter == 1) {
                        $("like-word" + n).html(like_counter + " like");
                    }
                    else $('like-word' + n).html(like_counter + " likes");
                    $('like-word' + n).css("color", "#E74C3C");
                    PageMethods.BtnLikePost_Click(n);
                }
            
                else {
                        $("#like" + n).removeClass("liked");
                        $("#like-content" + n).html("Like");
                        $("#like-counter" + n).html(--like_counter);
                        $("#like-word" + n).html(like_counter + " likes");
                        $("#like-word" + n).css("color", "#7F8C8D");
                        PageMethods.BtnUnLikePost_Click(n);
                        }
        }

                    //GridView Comment
           var showReply = function showReply(n) {
                $("#divReply" + n).show();
                return false;
            }
           var closeReply = function closeReply(n) {
                $("#divReply" + n).hide();
                return false;
        }


        //Share button
        $("#share").click(function (event) {
               if ($("#share-content").text() == "Share") {
                   $("#share").addClass("shared");
                   $("#share-content").html("Shared");
                   $("#share-counter").html(++share_counter);
                   $("#share-word").css("color", "#F39C12");
               }
               else {
                   $("#share").removeClass("shared");
                   $("#share-content").html("Share");
                   $("#share-counter").html(--share_counter);
                   $("#share-word").css("color", "#7F8C8D");
               }
               event.preventDefault();
           });

    </script>

      <!-- main style -->
    <link href="style.css" rel="stylesheet" />
    <!-- responsive.css -->
    <link href="css/responsive.css" rel="stylesheet" />

    <style>
        td#tabled {
            border:0px solid transparent;
        }

   #midtowne {
       float:left;
   }

   #midtown {
       height: 405px;
       width: 720px;
   }

  #imgRow {
       text-align: center;
        vertical-align: middle;
  }

  navbar#navigation {
       position: fixed; /* Make it stick/fixed */
      top: 0; /* Stay on top */
      width: 100%; /* Full width */
      transition: top 0.3s; /* Transition effect when sliding down (and up) */
    }
   
  
  



    </style>

    <!-- main style -->
    <link href="style.css" rel="stylesheet" />
    <!-- responsive.css -->
    <link href="css/responsive.css" rel="stylesheet" />

</head>
<body style="background-color:#eeeeee; padding-top: 1%;">
    

    
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
        crossorigin="anonymous" />
        
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

    <noscript
class="noscript">
   <div
id="div100">
   JavaScript is not currently enabled on your browser. Please enable JavaScript to view this page.
   </div>
</noscript>
<style>

   body{
      position:relative;
   }
   .noscript
{
      width:100%;
      height:100%;
/*
 will cover the text displayed when javascript is enabled*/

      z-index:100000;
/*
 higher than other z-index */
      position:absolute;
   }
   .noscript
#div100{
       display:block;
       height:100%;
       background-color:white;
   }
</style>

    <form id="form1" runat="server">

         <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
       
        <div>
           <%-- <header class="main-header">--%>
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
          <%--  </header>--%>
        </div>
           
       
        <br />
        <br />
        <br />


        <div class="jumbotron" style="background-color:#FFB014">
            
              <h1 class="display-4" style="text-align:center">The Employer Forum</h1>
              <p class="lead" style="text-align:center">Share local experiences, network with local employers, and build your brand.</p>
              
             
        </div>
        <hr />
        <br />


    <div class="container-fluid gedf-wrapper">
        <div class="row">
            <div class="col-md-3">
                <%-- <h3 class="important">Your Information</h3>--%>
                <div class="card">
                    <div class="card-body">
                         <asp:Label ID="CompanyName" runat="server" Text="" Font-Size="X-Large"></asp:Label>
                         <br />
                        <asp:Label ID="LoginName" runat="server" Text="" Font-Size="Larger"></asp:Label>
                        <br />
                        <asp:Label ID="UserName" runat="server" Text="" Font-Size="Larger"></asp:Label>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <asp:Label ID="Sumlbl" runat="server" Text="Summary" Font-Size="Larger" ForeColor="#8fc73e"></asp:Label>
                            <br />
                            <asp:Label ID="SumLblDesc" runat="server" Text="" Font-Size="Large"></asp:Label>

                        </li>
                        <li class="list-group-item">
                            <asp:Label ID="LocLbl" runat="server" Text="Location" Font-Size="Larger" ForeColor="#8fc73e"></asp:Label>
                            <br />
                            <asp:Label ID="LocLblResult" runat="server" Text="" Font-Size="Large"></asp:Label>
                        </li>
                        <li class="list-group-item">Cued-In Employer</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 gedf-main">

               
               <%-- Deleted hardcoded posts here

                Put gridview here?--%>
                                   <asp:UpdatePanel runat="server">
                                       <ContentTemplate>

                <div class="col-md-12">
                        <asp:TextBox ID="txtNewPost" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" Height="60px" Rows="15" placeholder="What's new?"></asp:TextBox>
                               
                        <br />
                     
                         <asp:button type="submit" class="btn btn-primary" OnClick="btnPublishPost_Click" runat="server" Text="Post" BackColor="#FFB014" BorderColor="#FFB014" ForeColor="Black"></asp:button>
                    &nbsp&nbsp&nbsp&nbsp

                    <asp:Label runat="server" Font-size="Larger" ID="sort">Sort by:</asp:Label>&nbsp&nbsp<asp:DropDownList ID="SortDropDown" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="Most Recent"></asp:ListItem>
                        <asp:ListItem Text="Least Recent"></asp:ListItem>
                        <asp:ListItem Text="Most Liked"></asp:ListItem>
                        </asp:DropDownList>
                                    <br />

                        <br />

           </div>

              <%--  <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                <div class="form-group">
                                    <label class="sr-only" for="message">post</label>
                                    <asp:TextBox ID="txtNewPost" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" Height="60px" Rows="15" placeholder="What's new?"></asp:TextBox>
                                </div>

                            </div>--%>
 
                        
                  <asp:GridView ID="GridViewPosts" CssClass="table table-bordered" AutoGenerateColumns="False" runat="server" Width="100%" ShowHeader="False" CellPadding="0" GridLines="None" ForeColor="#333333">
                      <RowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="PostID" Visible="false" HeaderText="PostID" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container" style="width:inherit">
                                <div class="row">
                                    <div class="col-lg-12 ">
                                        <table style="width:inherit" border="0">
                                            <tr>
                                                <td style="width:inherit" id="tabled">
                                                                                                               <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <asp:Label ID="lblPostID" runat="server" Visible="false" Text='<%#Eval("PostID") %>'></asp:Label>
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="img-thumbnail" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0"><%# Eval("EmployerName")%></div>
                                    <div class="h7 text-muted"><%# Eval("PersonName")%></div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="gedf-drop1">
                                        <div class="h6 dropdown-header">Configuration</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Hide</a>
                                        <a class="dropdown-item" href="#">Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i><%#Eval("DateCreated") %></div>
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title</h5>
                        </a>

                        <p class="card-text">
                            <%#Eval("PostDescription") %>
                        </p>
                    </div>
                    <div class="card-footer">
                                                                            <div id='divLikeShare<%#Eval("PostID")%>'>
                                                      <ul class="button-links" >
                                                        <li id="like-word<%#Eval("PostID")%>"><span id="like-counter<%#Eval("PostID")%>"><%#Eval("likeCount") %></span> likes</li>
                                                        <li id="share-word"><span id="share-counter">0</span> shares</li>
                                                        <li id="comment-word"><span id="comment-counter">0</span> comments</li>

                                                        </ul>
                                                         <%--onclick="getPostID(<%#Eval("PostID") %>); return false;"--%>
                                                       <a class="btn btn-like" href="javascript:void(0)" id='like<%#Eval("PostID")%>' onclick="LikeUnlikePost(<%#Eval("PostID") %>);return false;"><span class="fa fa-heart"></span><span id="like-content<%#Eval("PostID")%>">Like</span></a>
                                                       <button class="btn btn-share" id="share"><span class="fa fa-share"></span><span id="share-content">Share</span></button>
                                                       <a class="card-link" id='lnkPostReply<%#Eval("PostID") %>' href="javascript:void(0)" onclick="showReply(<%#Eval("PostID") %>);return false;"><i class="fa fa-comment"></i>Comment</a>&nbsp;
                                                       <a class="card-link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%#Eval("PostID") %>);return false;"><i class="fa fa-share-square"></i>Cancel</a>
                                                    <div id='divReply<%#Eval("PostID") %>' style="display: none; margin-top: 5px;">
                                                      <asp:TextBox ID="txtCommentReply" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" Height="60px" Rows="15" placeholder="What are you thinking?"></asp:TextBox>
                                                       <asp:button ID="btnPostReply" type="submit" class="btn btn-primary" OnClick="btnPostReply_Click" runat="server" Text="Comment"></asp:button>
                                                        </div>
                    </div>
                                                                               
                </div>
                                            
                                                    <asp:GridView ID="GridViewComment" BorderStyle="None" GridLines="None" runat="server" AutoGenerateColumns="False" DataSource='<%# Bind("CommentList") %>' ShowHeader="False">
                                                        <Columns>

                                                            <asp:TemplateField HeaderText="EmployerName">
                                                                <ItemTemplate>
                                                                                                                                   <!--- \\\\\\\Post-->
                <div class="card gedf-card">
                    <asp:Label ID="Label2" runat="server" Visible="false" Text='<%#Eval("PostID") %>'></asp:Label>
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="img-thumbnail" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0"><%# Eval("EmployerName")%></div>
                                    <div class="h7 text-muted"><%# Eval("PersonName")%></div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="gedf-drop1">
                                        <div class="h6 dropdown-header">Configuration</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Hide</a>
                                        <a class="dropdown-item" href="#">Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i><%#Eval("DateCreated") %></div>
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title</h5>
                        </a>

                        <p class="card-text">
                            <%# Eval("CommentDescription") %>
                        </p>
                    </div>
                    <div class="card-footer">

                    </div>
                                                                               
                </div>

                                                                </ItemTemplate>
                                                            </asp:TemplateField>

                                                        </Columns>
                                                    </asp:GridView>


                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-md-4"></div>
                                </div>
                            </div>
                            

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

                      <EditRowStyle BackColor="#999999" />
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                      <SortedAscendingCellStyle BackColor="#E9E7E2" />
                      <SortedAscendingHeaderStyle BackColor="#506C8C" />
                      <SortedDescendingCellStyle BackColor="#FFFDF8" />
                      <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            </asp:GridView>
            </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="GridViewPosts" />
                        </Triggers>
            </asp:UpdatePanel>
               <%-- Javascript here--%>
                 <script src="script/jquery.min.js"></script>
        <script type="text/javascript">
            //GridView Comment
            function showReply(n) {
                $("#divReply" + n).show();
                return false;
            }
            function closeReply(n) {
                $("#divReply" + n).hide();
                return false;
            }

            function LikeUnlikePost(n) {
                alert('hi');
                if (('like-content' + n).text() == "Like") {
                    ('like' + n).addClass("liked");
                    ('like-content' + n).html("Liked");
                    ('like-counter' + n).html(++like_counter);
                    if (like_counter == 1) {
                        ("like-word" + n).html(like_counter + " like");
                    }
                    else ('like-word' + n).html(like_counter + " likes");
                    ('like-word' + n).css("color", "#E74C3C");
                    PageMethods.BtnLikePost_Click();
                }
            
     else {
       ("#like" + n).removeClass("liked");
       ("#like-content" + n).html("Like");
       ("#like-counter" + n).html(--like_counter);
       ("#like-word" + n).html(like_counter + " likes");
         ("#like-word" + n).css("color", "#7F8C8D");
         PageMethods.BtnUnLikePost_Click();
      }
            }
    
   var like_counter = $("#like-counter").text();
   var share_counter = $("#share-counter").text();
            // Gets the PostID for the Liked Post function
            function getPostID(n) {
                n = ('#like' + n).toString();
                return n;
            }

            //function getLikeContent(n) {
            //    var likeContent = '#likeContent' + n;
            //    return LikeContent;
            //}

            //function getLikeCounter(n) {
            //    var likeCounter = '#likeCounter' + n;
            //    return likeCounter;
            //}

            //function getLikeWord(n) {
            //    var likeWord = '#likeWord' + n;
            //    return likeWord;
            //}

  // LIKE BUTTON CLICKED
            $('.btn btn-like').click(function (event) {
                alert.('yo');
     if($("#like-content2").text() == "Like") {
       $("#like2").addClass("liked");
       $("#like-content2").html("Liked");
         $("#like-counter2").html(++like_counter);
         
        if(like_counter == 1) {
           $("#like-word2").html(like_counter + " like");
       }
       else $("#like-word2").html(like_counter + " likes");
         $("#like-word2").css("color", "#E74C3C");
            PageMethods.BtnLikePost_Click();
     }
     else {
       $("#like2").removeClass("liked");
       $("#like-content2").html("Like");
       $("#like-counter2").html(--like_counter);
       $("#like-word2").html(like_counter + " likes");
         $("#like-word2").css("color", "#7F8C8D");
         PageMethods.BtnUnLikePost_Click();
      }
      event.preventDefault();

   });
  
  // SHARE BUTTON CLICKED
           
    </script>


           
           
        </div>
    </div>

        </div>
        <script src="js/SmoothScroll.js"></script>
         
    </form>
</body>
</html>
