<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WebForm3.aspx.vb" Inherits="ASSINGMENT_2_WebForm3" %>

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
            <asp:ListItem Value="30">GRAPES</asp:ListItem>
            <asp:ListItem Value="40">ORANGE</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
        <br />
        <br />
        PRICE ::&nbsp; 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
       ENTER QUENTITY ::
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        TOTAL ::
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="91px" />
    
    </div>
    </form>
</body>
</html>
