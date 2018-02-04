<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSuspect.aspx.cs" Inherits="CrimeInvestigationSystemWeb.AddSuspect1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Suspect</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <%--navbar start--%>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="OfficerMenu.aspx">Criminal Investigation System</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="OfficerMenu.aspx">Home</a></li>
                <li><a href="AddSuspect.aspx">Add Suspect</a></li>
                <li><a href="AddEvidence.aspx">Add Evidence</a></li>
                <li><a href="AddCaseHistory.aspx">Add Case History</a></li>
                <li><a href="ViewSuspectOfficer.aspx">View Suspect</a></li>
                <li><a href="ViewEvidenceOfficer.aspx">View Evidence</a></li>
                <li><a href="ViewCaseHistoryOfficer.aspx">View Case History</a></li>
                <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
            </ul>
        </div>

    </nav>
    <%--navbar end--%>
    <form id="form1" runat="server" class="container">
        <h1>Add Suspect</h1>
        <br />
        <hr />
        <div class="form-horizontal col-xs-5">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Case Id" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="caseIdTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Suspect Name" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Mobile No" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="mobileTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Address" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Relation" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="relationTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Note" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="noteTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Image" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                </div>
            </div>
            <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" CssClass="btn btn-lg btn-success" />
            <br />

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
