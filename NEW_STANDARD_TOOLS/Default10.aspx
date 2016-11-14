<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default10.aspx.vb" Inherits="Default10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>DHONI</asp:ListItem>
            <asp:ListItem>SACHIN</asp:ListItem>
            <asp:ListItem>JAHIR</asp:ListItem>
            <asp:ListItem>HARBHAN</asp:ListItem>
            <asp:ListItem>RAHUL</asp:ListItem>
        </asp:CheckBoxList>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
