<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginOfficer.aspx.cs" Inherits="CrimeInvestigationSystemWeb.LoginOfficer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Officer Login Page</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%--navbar start--%>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="LoginPage.aspx">Criminal Investigation System</a>
                </div>
            </div>
        </nav>
        <%--navbar end--%>
        <div class="container">
            <h1>Login Officer </h1>
            <br/>
            <hr/>
            <div class="panel-body">
                <h1>Officer Login</h1>
                <h4 >
                <asp:Label ID="Label1" runat="server" Text="Officer Id" CssClass="label label-primary"></asp:Label>
                <asp:TextBox ID="officerIdTextBox" runat="server" ></asp:TextBox>
                <br />
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label label-primary"></asp:Label>
                <asp:TextBox ID="passwordTextBox" TextMode="Password" runat="server" ></asp:TextBox>
                <br />
                <br/>
                <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" CssClass="btn btn-success btn-lg"/>
                </h4>
            </div>
        </div>
        <%--footer start--%>
        <div class="container">
            <div class="row">
                <hr>
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
</body>
</html>
