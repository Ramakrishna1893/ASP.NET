﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm9.aspx.vb" Inherits="ASSIGNMENT_1.WebForm9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="This is Yellow ???" 
        onMouseOver="this.style.backgroundColor='Yellow'" 
        onMouseOut="this.style.backgroundColor='lightgreen'"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="This is Green ???"></asp:Label>
    
    </div>
    </form>
</body>
</html>
