<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PredictResult.aspx.cs" Inherits="CrimeInvestigationSystemWeb.PredictResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Predict Result</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
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
                <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-out"></span>Log Out</a></li>
            </ul>
        </div>

    </nav>
    <%--navbar end--%>
    <form id="form1" runat="server" class="container">
        <h1>View Suspect</h1>
        <br />
        <hr />
        <div class="form-horizontal col-xs-5">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Case Id" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="caseIdDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CaseId" DataValueField="Id" OnSelectedIndexChanged="caseIdDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [CaseId] FROM [AddCase]"></asp:SqlDataSource>
                    <br />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Case Name" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="caseNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Suspect" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="suspectTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10">
                    <asp:Image ID="suspectImage" runat="server" CssClass="img-rounded" Height="300" Width="300"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Point" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="pointTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="control-label col-md-2">
                <asp:Button ID="getReportButton" runat="server" OnClick="getReportButton_OnClick" Text="Report" CssClass="btn btn-lg btn-success" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
