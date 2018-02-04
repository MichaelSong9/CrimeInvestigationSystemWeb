<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOfficerToCase.aspx.cs" Inherits="CrimeInvestigationSystemWeb.AddOfficerToCase1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Officer To Case</title>
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
                <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
            </ul>
        </div>

    </nav>
    <%--navbar end--%>
    <form id="form1" runat="server" class="container">
        <h1>Add Officer To Case</h1>
        <br />
        <hr />

        <div class="form-horizontal col-xs-5">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Case Id" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="caseIdDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CaseId" DataValueField="CaseId" OnSelectedIndexChanged="caseIdDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CaseId] FROM [AddCase]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Case Name" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="caseNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Officer Id" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="officerIdDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="OfficerId" DataValueField="OfficerId" OnSelectedIndexChanged="officerIdDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OfficerId] FROM [AddOfficer]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Officer Name" CssClass="control-label col-md-2"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="officerNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" CssClass="btn btn-lg btn-success"/>



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
