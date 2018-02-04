<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CrimeInvestigationSystemWeb.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <%--<script src="js/bootstrap.js"></script>--%>
    
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>

</head>
<body>
    <form id="form1" runat="server">
        <%--navbar start--%>
        <div class="navbar navbar-inverse" style="height: 80px; width: 100%; background-color: #191970">
            <div class="container-fluid">
                <a href="LoginPage.aspx">
                    <div class="navbar-brand">
                        <strong class="h1" style="color: white">Criminal Investigation System</strong>
                    </div>
                </a>
            </div>
        </div>
        <%--navbar end--%>



        <%--<div class="container">
            <br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/1.jpg" alt="Chania" class="img-rounded" width="460" height="345">
                    </div>

                    <div class="item">
                        <img src="Images/2.jpg" alt="Chania" class="img-rounded" width="460" height="345">
                    </div>

                    <div class="item">
                        <img src="Images/4.jpg" alt="Flower" class="img-rounded" width="460" height="345">
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>--%>


        <div class="container">
            <div class="jumbotron" style="height: 500px;">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <asp:Button ID="adminLoginButton" runat="server" OnClick="adminLoginButton_Click" Text="Admin Login" CssClass="btn btn-lg btn-primary col-lg-12" />
                        <br />
                        <br />
                        <br />
                        <br/>
                        <asp:Button ID="officerLoginButton" runat="server" OnClick="officerLoginButton_Click" Text="Officer Login" CssClass="btn btn-lg btn-primary col-lg-12" />
                    </div>
                </div>

            </div>
        </div>

        <%--footer start--%>
        <div class="container">
            <div class="row">
                <hr />
                <div class="col-lg-12">
                    <div class="col-md-8">
                        <a href="#">Terms of Service</a> | <a href="#">Privacy</a>
                    </div>
                    <div class="col-md-4">
                        <p class="muted pull-right">© 2017 Sadika Islam Sneha & Mohtasim Nuran. All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
        <%--footer end--%>
    </form>
      <%--<script src="js/bootstrap.js"></script>--%>
    <%--<script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.min.js"></script>--%>
</body>
</html>
