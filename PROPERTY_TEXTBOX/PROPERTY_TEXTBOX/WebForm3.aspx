<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="PROPERTY_TEXTBOX.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label10" runat="server" Text="ENTER YOUR NAME :: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="139px"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Text="TAB"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    </form>
</body>
</html>
