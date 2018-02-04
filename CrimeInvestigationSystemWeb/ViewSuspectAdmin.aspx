<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSuspectAdmin.aspx.cs" Inherits="CrimeInvestigationSystemWeb.ViewSuspectAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Suspect</title>
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
        <div class="form-horizontal col-xs-5 form-group">

            <asp:Label ID="Label1" runat="server" Text="CaseID" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="caseIdDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CaseId" DataValueField="Id" OnSelectedIndexChanged="caseIdDropDownList_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CaseId], [Id] FROM [AddCase]"></asp:SqlDataSource>
                <br/>
                <asp:Button ID="getReportButton" runat="server" OnClick="getReportButton_OnClick" Text="Report" CssClass="btn btn-lg btn-success" />

            </div>
        </div>
        <br />
        <asp:GridView ID="suspectGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-responsive table-hover" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:TemplateField HeaderText="Suspect Name">
                    <ItemTemplate>
                        <asp:Label ID="nameLabel" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <%--<asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="122px"
                            ImageUrl='<%#Eval("Image")%>' Width="148px" />
                        <br />
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="Mobile No">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Relation">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Relation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Note">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Note") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Dates") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <%--<div class="row">
            <div class="col-md-8">--%>
        <asp:GridView ID="detailsGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-bordered table-hover">
            <Columns>

                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="122px"
                            ImageUrl='<%#Eval("Image")%>' Width="148px" />
                        <br />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label>
                        <asp:Label ID="nameLabel" runat="server" Text='<%#Eval("Name") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="Mobile No : "></asp:Label>
                        <asp:Label runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Score">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("EvidenceType") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text=" -- "></asp:Label>
                        <asp:Label runat="server" Text='<%#Eval("Points") %>'></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="/10"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <%--</div>
            <div class="col-md-4">
                <asp:GridView ID="typeGridView" runat="server" CssClass="table table-responsive table-bordered table-hover"></asp:GridView>
            </div>
        </div>--%>
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
