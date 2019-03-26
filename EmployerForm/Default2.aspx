<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="css/likebutton.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="col-md-12">
    <div class="col-sm-6 col-sm-offset-3">
        <p id="user-name">@NarulaKeshav</p>
        <div class="col-sm-12 card">
            <h2 class="title">Fahrenheit - Best Weather App</h2>
            <p class="user-name">by Keshav Narula</p>
            <hr/>
            <ul class="button-links">
                <li id="like-word"><span id="like-counter">13</span> likes</li>
                <li id="share-word"><span id="share-counter">5</span> shares</li>
                <li id="comment-word"><span id="comment-counter">0</span> comments</li>
            </ul><button class="btn btn-like" id="like"><span class="fa fa-heart"></span><span id="like-content">Like</span></button><button class="btn btn-share" id="share"><span class="fa fa-bullhorn"></span><span id="share-content">Share</span></button>
            <hr/>
            <ul id="comment-list"></ul><input placeholder="add a comment" id="comment-input" /><button class="btn btn-info" id="btn-comment">Comment</button></div>
    </div>
</div>
    </form>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var commentButton = document.getElementById("btn-comment");
            var name = document.getElementById("user-name");
            name = name.innerHTML;
            var input = document.getElementById("comment-input");
            var like_counter = $("#like-counter").text();
            var share_counter = $("#share-counter").text();
            var comment_counter = $("#comment-counter").text();


            $("#like").click(function () {
                if ($("#like-content").text() == "Like") {
                    $("#like").addClass("liked");
                    $("#like-content").html("Liked");
                    $("#like-counter").html(++like_counter);
                    if (like_counter == 1) {
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
            });

            // SHARE BUTTON CLICKED
            $("#share").click(function () {
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
            });

            // COMMENT
            $("#comment-input").keypress(function (event) {
                if (event.keyCode == 13) {
                    event.preventDefault();
                    commentButton.click();
                    $("#comment-input").val("");
                }
            });

            commentButton.onclick = function () {
                if (input.value == "") { alert("Enter something."); }
                else {
                    var text = input.value;
                    var ul = document.getElementById("comment-list");
                    var li = document.createElement("li");
                    li.appendChild(document.createTextNode(name + " " + text));
                    ul.appendChild(li);
                    input.value = "";
                }
            }

        });

</script>

</body>
</html>
