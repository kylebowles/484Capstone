<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="The Community.aspx.cs" Inherits="The_Community" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title></title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="css/likeshare.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <body>
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNewPost" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" Height="60px" Rows="15"></asp:TextBox>
                        <%--        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/h.jpg"  Width="30px" Height="30px"  style="border:1px solid #4800ff;" />--%>
                        <br />
                        <asp:Button ID="btnPublishPost" CssClass="btn-lg btn-default" Text="Post" runat="server" OnClick="btnPublishPost_Click" />
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
                                                <td style="vertical-align:top;padding-top:10px" class="auto-style1"">
                                                  
                                                    <asp:Image ID="ImageParent" runat="server" Style="width: 50px; height: 50px;" ImageUrl="~/Image/student-512.png" />
                                                </td>
                                                <div class="col-sm-12 card">
                                                <td style="padding: 0px 5px; text-align: left; vertical-align: top">
                                                    <asp:Label ID="lblPostID" runat="server" Visible="false" Text='<%#Eval("PostID") %>'></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblUserName" runat="server" Font-Bold="true" ForeColor="#ff5050" Text='<%# string.Concat(Eval("PersonName"), ": ", Eval("EmployerName"))%>'></asp:Label>
                                                    <hr/>
                                                    <br />

                                                    <asp:Label ID="lblCommentMessage" runat="server" Text='<%#Eval("PostDescription") %>'></asp:Label><br />
                                                          <hr/>
                                                      <ul class="button-links">
                                                        <li id="like-word"><span id="like-counter">0</span> likes</li>
                                                        <li id="share-word"><span id="share-counter">0</span> shares</li>
                                                        <li id="comment-word"><span id="comment-counter">0</span> comments</li>
                                                        </ul>
                                                       <button class="btn btn-like" id="like"><span class="fa fa-heart"></span><span id="like-content">Like</span></button>
                                                       <button class="btn btn-share" id="share"><span class="fa fa-bullhorn"></span><span id="share-content">Share</span></button>
                                                    <asp:Label ID="Label1" runat="server" Text='Posted on: '></asp:Label>
                                                    <asp:Label ID="lblPostDate" runat="server" Text='<%#Bind("DateCreated") %>'></asp:Label><br />
                                                          <hr/>
                                                    <br />
                                                    <a class="link" id='lnkPostReply<%#Eval("PostID") %>' href="javascript:void(0)" onclick="showReply(<%#Eval("PostID") %>);return false;">Reply</a>&nbsp;
                                        <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%#Eval("PostID") %>);return false;">Cancel</a>
                                                    <div id='divReply<%#Eval("PostID") %>' style="display: none; margin-top: 5px;">
                                                        <asp:TextBox ID="txtCommentReply" CssClass="input-group" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                        <asp:Button ID="btnPostReply" CssClass="input-group btn" runat="server" Text="Reply" Style="float: right; margin: 5px;" OnClick="btnPostReply_Click" />
                                                        </div>

                                                    
                                                </td>
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
                                                                    <br />
                                                                    <asp:Image ID="ImageParent" runat="server" Style="width: 25px; height: 25px;" ImageUrl="~/Image/student-512.png" />
                                                                    <asp:Label ID="LblCommentTitle" runat="server" Font-Bold="true" ForeColor="#ff0066" Text='<%# string.Concat(Eval("PersonName"), ": ", Eval("EmployerName"))%>'></asp:Label>
                                                                    <hr />
                                                                    <br />
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CommentDescription") %>'></asp:Label>
                                                                    <hr />
                                                                    <asp:Label ID="lblCommentDate" runat="server" Text='<%#Bind("DateCreated") %>'></asp:Label>

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


   var like_counter = $("#like-counter").text();
   var share_counter = $("#share-counter").text();

  // LIKE BUTTON CLICKED
  $("#like").click(function(event) {
     if($("#like-content").text() == "Like") {
       $("#like").addClass("liked");
       $("#like-content").html("Liked");
       $("#like-counter").html(++like_counter);
       if(like_counter == 1) {
         $("#like-word").html(like_counter + " like");
       }
       else $("#like-word").html(like_counter + " likes");
       $("#like-word").css("color", "#E74C3C");
     }
     else {
       $("#like").removeClass("liked");
       $("#like-content").html("Like");
       $("#like-counter").html(--like_counter);
       $("#like-word").html(like_counter + " likes");
       $("#like-word").css("color", "#7F8C8D");
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

