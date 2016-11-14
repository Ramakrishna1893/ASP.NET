<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="GOOGLE.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="50pt" 
            Text="GOOGLE"></asp:Label>
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server" Width="323px"></asp:TextBox>
    <p>
        <asp:Button ID="Button1" runat="server" Text="SEARCH" />
    </p>
    </form>
</body>
</html>
