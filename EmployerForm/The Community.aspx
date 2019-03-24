<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="The Community.aspx.cs" Inherits="The_Community" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <html>
    <body>
        <div>
            <div class="container" style="padding: 15px 20px; width: 560px;">
                <div class="row">
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNewPost" runat="server" CssClass="form-control" TextMode="MultiLine" Width="560px" Height="60px" Rows="15"></asp:TextBox>
                        <%--        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/h.jpg"  Width="30px" Height="30px"  style="border:1px solid #4800ff;" />--%>
                        <asp:Button ID="btnPublishPost" CssClass="btn-lg btn-default" Text="Post" runat="server" OnClick="btnPublishPost_Click" />
                        <br />

            </div>
            <!--Gridview here-->
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
                                                <td style="padding: 0px 5px; text-align: left; vertical-align: top">
                                                    <asp:Label ID="lblPostID" runat="server" Visible="false" Text='<%#Eval("PostID") %>'></asp:Label>

                                                    <asp:Label ID="lblUserName" runat="server" Font-Bold="true" ForeColor="#ff5050" Text='<%# string.Concat(Eval("PersonName"), ": ", Eval("EmployerName"))%>'></asp:Label>
                                                    <br />

                                                    <asp:Label ID="lblCommentMessage" runat="server" Text='<%#Eval("PostDescription") %>'></asp:Label><br />
                                                    <br />
                                                    <asp:Label ID="Label1" runat="server" Text='Posted on: '></asp:Label>
                                                    <asp:Label ID="lblPostDate" runat="server" Text='<%#Bind("DateCreated") %>'></asp:Label><br />
                                                    <a class="link" id='lnkPostReply<%#Eval("PostID") %>' href="javascript:void(0)" onclick="showReply(<%#Eval("PostID") %>);return false;">Reply</a>&nbsp;
                                        <a class="link" id="lnkCancel" href="javascript:void(0)" onclick="closeReply(<%#Eval("PostID") %>);return false;">Cancel</a>
                                                    <div id='divReply<%#Eval("PostID") %>' style="display: none; margin-top: 5px;">
                                                        <asp:TextBox ID="txtCommentReply" CssClass="input-group" runat="server" TextMode="MultiLine" Width="560px" Height="60px"></asp:TextBox>
                                                        <asp:Button ID="btnPostReply" CssClass="input-group btn" runat="server" Text="Reply" Style="float: right; margin: 5px;" OnClick="btnPostReply_Click" />


                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-left: 100px; border-bottom: 1px solid #4cff00;">
                                                    <br />


                                                    <br />
                                                    <td>&nbsp;</td>
                                                <td>
                                                    <asp:GridView ID="GridViewComment" BorderStyle="None" GridLines="None" runat="server" AutoGenerateColumns="False" DataSource='<%# Bind("CommentList") %>' ShowHeader="False">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="EmployerName">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblCommentDate" runat="server" Text='<%#Bind("DateCreated") %>'></asp:Label>
                                                                    <br />
                                                                    <asp:Image ID="ImageParent" runat="server" Style="width: 25px; height: 25px;" ImageUrl="~/Image/student-512.png" />
                                                                    <asp:Label ID="LblCommentTitle" runat="server" Font-Bold="true" ForeColor="#ff0066" Text='<%# string.Concat(Eval("PersonName"), ": ", Eval("EmployerName"))%>'></asp:Label>
                                                                    <br />
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CommentDescription") %>'></asp:Label>
                                                                    <hr />

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

        </script>
    </body>
    </html>
</asp:Content>

