<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="HEAT_COUNTER.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="WELCOME  TO    "></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <p>
        <asp:Label ID="Label3" runat="server" Text="ENTER YOUR NAME :: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
    <p>
        <asp:Label ID="Label4" runat="server" Text="THIS IS WEBSITE IS VISITED    "></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="TIMES"></asp:Label>
    </p>
    </form>
</body>
</html>
