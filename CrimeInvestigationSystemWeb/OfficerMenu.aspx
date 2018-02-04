<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OfficerMenu.aspx.cs" Inherits="CrimeInvestigationSystemWeb.OfficerMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Office Menu</title>
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
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="OfficerIdLabel" runat="server" CssClass="h2">
                </asp:Label>
                <asp:Image ID="Image" runat="server" CssClass="img-rounded" Width="205" Height="180" /><br/>
                <%--<asp:Label ID="officerNameLabel" runat="server" CssClass="h2"></asp:Label>--%>
            </div>
            <div class="col-md-4">
                <h1>
                    <asp:Button ID="addSuspectButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="addSuspectButton_Click" Text="Add Suspect" />
                    <br />
                    <br />
                    <asp:Button ID="addEvidenceButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="addEvidenceButton_Click" Text="Add Evidence" />
                    <br />
                    <br />
                    <asp:Button ID="addCaseHistoryButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="addCaseHistoryButton_Click" Text="Add Case History" />
                    <br />
                    <br />
                    <asp:Button ID="viewSuspectButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="viewSuspectButton_Click" Text="View Suspects" />
                    <br />
                    <br />
                    <asp:Button ID="viewEvidenceButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="viewEvidenceButton_Click" Text="View Evidence" />
                    <br />
                    <br />
                    <asp:Button ID="viewCaseHistoryButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="viewCaseHistoryButton_Click" Text="View Case History" />
                    <br />
                    <br />
                    <asp:Button ID="logOutButton" runat="server" CssClass="btn btn-primary btn-lg col-lg-10" OnClick="logOutButton_Click" Text="Log Out" ></asp:Button>
                    <br />
                    <br />

                </h1>
            </div>

        </div>
    </form>
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
</body>
</html>
