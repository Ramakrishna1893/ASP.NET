<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="10">APPLE</asp:ListItem>
            <asp:ListItem Value="20">BANANA</asp:ListItem>
            <asp:ListItem Value="30">MANGO</asp:ListItem>
            <asp:ListItem Value="40">ORANGE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
        <br />
        <br />
        PRICE IS ::
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="PRICE" Width="85px" />
        <br />
        <br />
        <br />
        ENTER QUENTITY ::&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="TOTAL" Width="85px" />
        <br />
    
    </div>
    </form>
</body>
</html>
