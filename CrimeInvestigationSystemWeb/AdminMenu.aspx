<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="CrimeInvestigationSystemWeb.AdminMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Menu</title>
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
        <div class="container">
            <div class="col-md-4"><h2></h2></div>

            <div class="col-md-4">
                <h1>
                    <asp:Button ID="addcaseButton" runat="server" OnClick="addcaseButton_Click" Text="Add Case" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="addOfficerButton" runat="server" OnClick="addOfficerButton_Click" Text="Add Officer" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="addOfficerToCaseButton" runat="server" OnClick="addOfficerToCaseButton_Click" Text="Add Officer To Case" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="predictResultButton" runat="server" OnClick="predictResultButton_Click" Text="Predict Result" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="addResultButton" runat="server" OnClick="addResultButton_Click" Text="Add Result" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="viewSuspectButton" runat="server" OnClick="viewSuspectButton_Click" Text="View Suspects" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="viewEvidenceButton" runat="server" OnClick="viewEvidenceButton_Click" Text="View Evidence" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="viewCaseHistoryButton" runat="server" OnClick="viewCaseHistoryButton_Click" Text="View Case History" CssClass="btn btn-primary btn-lg col-lg-10" />
                    <br />
                    <br />
                    <asp:Button ID="logOutButton" runat="server" OnClick="logOutButton_Click" Text="Log Out" CssClass="btn btn-primary btn-lg col-lg-10"/>
                </h1>
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
