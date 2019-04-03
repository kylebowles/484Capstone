<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="The Community.aspx.cs" Inherits="The_Community" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Cued-In Community</title>
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
    </script>
   <%-- <style>
    body#bod { background-image: url('http://localhost:55705/img/Community.JPG');
               background-repeat:no-repeat;
               

    }--%>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--THIS IS YOUR FILE--%>
     <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
    <html>
    <body>
         <div>
            <header class="main-header">
                <div class="container" >
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
                                    <a href="EmployerLanding.aspx#home" rel="m_PageScroll2id">home</a>
                                </li>
                                <li>
                                    <a href="#about" rel="m_PageScroll2id" data-ps2id-offset="50">about</a>
                                </li>
                                <li>
                                    <a href="JobSearchPAge.aspx" rel="m_PageScroll2id">Search Jobs</a>
                                </li>

                                <li>
                                    <a href="The Community.aspx" rel="m_PageScroll2id">Create Post</a>
                                </li>

                                <li>
                                    <asp:linkbutton runat="server" ID="logout" onclick="LogOutUser" rel="m_PageScroll2id">Logout</asp:linkbutton>
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
        <br />

        <div>
            <div class="container">

                <div class="container">
  <div class="jumbotron">
    <h1>The Community</h1> 
    <p>Welcome to the Cued-In Employer Community Allowing Employers to post their experiences with other Cued-In users to raise awareness and inspire others.</p> 
  </div>
  
</div>

                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNewPost" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" Height="60px" Rows="15" placeholder="What's new?"></asp:TextBox>
                        <%--        <asp:Image ID="Image1" runat="server" ImageUrl='~/ImageFiles/EmptyProfilePic.jpg'  Width="30px" Height="30px"  style="border:1px solid #4800ff;" />--%>
                        <br />
                        <%--<asp:Button ID="btnPublishPost" CssClass="btn-lg btn-default" Text="Post" runat="server" OnClick="btnPublishPost_Click" />--%>
                         <asp:button type="submit" class="btn btn-primary" OnClick="btnPublishPost_Click" runat="server" Text="Post"></asp:button>
                                    
                        <br />

            </div>
            <!--Gridview here-->
                    <br />
                    
            <asp:GridView ID="GridViewPosts" CssClass="table table-bordered" AutoGenerateColumns="False" BorderWidth="0px" runat="server" Width="100%" BorderStyle="None" ShowHeader="False">
                <Columns>
                    <asp:BoundField DataField="PostID" Visible="false" HeaderText="PostID" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 ">
                                        <table>
                                            <tr>
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
                        <asp:TemplateField HeaderText="EmployerName">
                            <Itemtemplate>
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i><%#Eval("DateCreated") %></div>
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title</h5>
                        </a>

                        <p class="card-text">
                            <%#Eval("PostDescription") %>
                        </p>
                           </Itemtemplate>
                        </asp:TemplateField>
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
                                                        <asp:TextBox ID="TextBox1" CssClass="input-group" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                        <asp:Button ID="Button1"  CssClass="input-group btn" runat="server" Text="Reply" Style="float: right; margin: 5px;" OnClick="btnPostReply_Click" />
                                                        </div>
                    </div>
                                                                               
                </div>
                                            </tr>
                                            <tr>
                                                <td style="padding-left: 100px; border-bottom: 0px solid #4cff00;">
                                                    <br />


                                                    <br />
                                                    &nbsp;
                                                <td>
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
                        <asp:TemplateField HeaderText="EmployerName">
                            <Itemtemplate>
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i><%#Eval("DateCreated") %></div>
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title</h5>
                        </a>

                        <p class="card-text">
                            <%# Eval("CommentDescription") %>
                        </p>
                           </Itemtemplate>
                        </asp:TemplateField>
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

            </asp:GridView>
                        </center>
            <br />
        </div>
        </div>
            </div>
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
    </body>
    </html>


</asp:Content>

