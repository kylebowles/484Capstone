<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link href="css/likebutton.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container" ng-app="myApp" ng-controller="Main">
  <div class="content">
    <a href="#" ng-click="doVote()">
      <i class="glyphicon" ng-class="(like.userVotes==1) ? 'glyphicon-heart' : 'glyphicon-heart-empty'"></i>
      <span ng-model="like.votes">{{like.votes}}</span>
    </a>
  </div>
</div>
        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.5/angular.min.js"></script>
    <script>

        var myApp = angular.module('myApp', [])
  .controller('Main', ['$scope', function($scope) {
    $scope.like = {};
    $scope.like.votes = 0;
    $scope.doVote = function() {
      if ($scope.like.userVotes == 1) {
        delete $scope.like.userVotes;
        $scope.like.votes--;
      } else {
        $scope.like.userVotes = 1;
        $scope.like.votes++;
      }
    }
  }]);
    </script>
</body>
</html>
