<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportSuspect.aspx.cs" Inherits="CrimeInvestigationSystemWeb.ReportSuspect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center">Crime Investigation System</h1>
        <br />
        <h3 style="text-align: center">Crime Report</h3>
        <br />
        <hr />
        <div class="container">
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
                    <asp:TemplateField HeaderText="Score">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("EvidenceType") %>'></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text=" -- "></asp:Label>
                            <asp:Label runat="server" Text='<%#Eval("Points") %>'></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text="/10"></asp:Label>
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
        </div>
    </form>
</body>
</html>
