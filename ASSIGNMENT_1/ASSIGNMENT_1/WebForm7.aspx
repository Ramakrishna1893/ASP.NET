<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm7.aspx.vb" Inherits="ASSIGNMENT_1.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="123" onMouseOver="this.style.backgroundColor:'green'"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="456" onMouseOut="this.stye.backgroundColor:'green'"></asp:Label>
    </p>
    </form>
</body>
</html>
