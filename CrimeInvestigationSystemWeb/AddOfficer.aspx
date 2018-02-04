<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOfficer.aspx.cs" Inherits="CrimeInvestigationSystemWeb.AddOfficer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Officer</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
    <%--<script src="js/jquery.validate.js"></script>--%>
</head>
<body>
    <%--navbar start--%>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="AdminMenu.aspx">Criminal Investigation System</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="AdminMenu.aspx">Home</a></li>
                <li><a href="AddCase.aspx">Add Case</a></li>
                <li><a href="AddOfficer.aspx">Add Officer</a></li>
                <li><a href="AddOfficerToCase.aspx">Add Case To Officer</a></li>
                <%--<li><a href="AddCaseHistory.aspx">Add Case History</a></li>--%>
                <li><a href="AddResult.aspx">Add Result</a></li>
                <li><a href="ViewSuspectAdmin.aspx">View Suspect</a></li>
                <li><a href="ViewEvidence.aspx">View Evidence</a></li>
                <li><a href="ViewCaseHistoryAdmin.aspx">View Case History</a></li>
                <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
            </ul>
        </div>

    </nav>
    <%--navbar end--%>
    <form id="form1" runat="server" class="container" role="form" data-toggle="validator">
        <h1>Add Officer</h1>
        <br />
        <hr />
        <div class="form-horizontal col-xs-5">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Officer Id" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="officerIdTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Officer Name" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <%--<div class="form-group">
                <label for="inputPassword" class="control-label">Password</label>
                <div class="form-inline row">
                    <div class="form-group col-sm-6">
                        <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
                        <div class="help-block">Minimum of 6 characters</div>
                    </div>
                    <div class="form-group col-sm-6">
                        <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
            </div>--%>
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Password" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Mobile No" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="mobileNoTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Adress" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Mail" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="mailTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Area" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="areaTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Image" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
            </div>

            <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" CssClass="btn btn-lg btn-success" />

        </div>
    </form>
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
</body>
</html>
