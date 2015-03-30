<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetConnectionString %>" SelectCommand="SELECT * FROM [Pet]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="查詢吧" />
        <br />
        <br />
        <asp:GridView ID="gvResult" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Width="464px" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <hr />
        <br />
        Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        &nbsp;
        Age:<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        &nbsp;
        Species:<asp:TextBox ID="textSpecies" runat="server"></asp:TextBox>
        &nbsp;
        Host:<asp:TextBox ID="textHost" runat="server"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="新增" />


        <br />
        <br />
        ID:<asp:TextBox ID="txtE_ID" runat="server"></asp:TextBox>
        &nbsp;
        Name:<asp:TextBox ID="txtE_Name" runat="server"></asp:TextBox>
        &nbsp;
        Age:<asp:TextBox ID="txtE_Age" runat="server"></asp:TextBox>
        &nbsp;
        Species:<asp:TextBox ID="textE_Species" runat="server"></asp:TextBox>
        &nbsp;
        Host:<asp:TextBox ID="textE_Host" runat="server"></asp:TextBox>
        <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="修改" />


        <br />
        <br />
        PetId:<asp:TextBox ID="txtD_Pet_id" runat="server"></asp:TextBox>
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="刪除" />


    </div>
    </form>
</body>
</html>
