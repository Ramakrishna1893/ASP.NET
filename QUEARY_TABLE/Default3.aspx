<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT * FROM [AUTHER]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        DataKeyField="AUTHER_ID" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" RepeatColumns="3" Width="788px">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            STUDENT
        </HeaderTemplate>
        <ItemTemplate>
            AUTHER_ID:
            <asp:Label ID="AUTHER_IDLabel" runat="server" Text='<%# Eval("AUTHER_ID") %>' />
            <br />
            FIRST_NAME:
            <asp:Label ID="FIRST_NAMELabel" runat="server" 
                Text='<%# Eval("FIRST_NAME") %>' />
            <br />
            LAST_NAME:
            <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
            <br />
            PHONE:
            <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
            <br />
            CITY:
            <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </form>
</body>
</html>
