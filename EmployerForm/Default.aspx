<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="css/favoritebutton.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<div class="container col-md-2 clearfix">
  <a id="btn-like" class="btn btn-lg btn-block btn-shared btn-like"><span class="fa fa-thumbs-o-up pull-left"></span><span class="like-text">Like</span><span class="unlike-text">Unlike</span></a>
  
  <a id="btn-favorite" class="btn btn-lg btn-block btn-shared btn-favorite"><span class="fa fa-star pull-left"></span><span class="favorite-text">Favorite</span><span class="unfavorite-text">UnFavorite</span></a>
</div>
        </div>


   </form>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
                // Centring function:
jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + 
                                                $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + 
                                                $(window).scrollLeft()) + "px");
    return this;
}
        </script>

<script>
        $('.container').center();
        </script>


    <script>
$('a.btn-like').on('click', function() {
  $(this).toggleClass('liked');
  $('.like-text,.unlike-text').toggle();
}); </script>

    <script>
$('a.btn-favorite').on('click', function() {
  $(this).toggleClass('liked');
  $('.favorite-text,.unfavorite-text').toggle();
});
            </script>
</body>
</html>
