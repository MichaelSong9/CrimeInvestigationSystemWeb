<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCaseHistoryOfficer.aspx.cs" Inherits="CrimeInvestigationSystemWeb.ViewCaseHistoryOfficer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Case History</title>
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
        <h1>View Case History</h1>
        <br />
        <hr />
        <div class="container">

            <asp:GridView ID="caseHistoryGridView" runat="server" CssClass="table table-bordered table-hover table-responsive">
            </asp:GridView>

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
