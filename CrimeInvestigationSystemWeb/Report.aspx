<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CrimeInvestigationSystemWeb.Report1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <h1 style="text-align: center">Crime Investigation System</h1>
        <br />
        <h3 style="text-align: center">Crime Report</h3>
        <hr />
        <div class="form-horizontal col-xs-12">
            <div class="form-group">
                <label class="control-label col-md-4">&nbsp;</label>
                <div class="col-md-4">
                    <asp:Image ID="suspectImage" runat="server" CssClass="img-rounded" Height="300" Width="300" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-4">Case Name</label>
                <div class="col-md-4">
                    <asp:TextBox ID="caseNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Suspect" CssClass="control-label col-md-4"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="suspectTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Point" CssClass="control-label col-md-4"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="pointTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Status" CssClass="control-label col-md-4"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False" Text="Closed"></asp:TextBox>
                </div>
            </div>
            <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
        </div>
    </form>
</body>
</html>
