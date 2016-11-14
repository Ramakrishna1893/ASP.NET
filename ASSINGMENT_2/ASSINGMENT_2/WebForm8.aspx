<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm8.aspx.vb" Inherits="ASSINGMENT_2.WebForm8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="130px" 
        ImageUrl="~/myImages/a.jpg" PostBackUrl="~/MOBILE_1.aspx" Width="175px" />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="130px" 
        ImageUrl="~/myImages/b.jpg" PostBackUrl="~/MOBILE_2.aspx" Width="175px" />
    <asp:ImageButton ID="ImageButton3" runat="server" Height="130px" 
        ImageUrl="~/myImages/k.gif" PostBackUrl="~/MOBILE_3.aspx" Width="175px" />
    </form>
    </body>
</html>
