<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="FIRST._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>FIRST ASP PHASE</title>
</head>
<body>
    <form id="form1" runat="server">
        <font size="\0">
             <%  Dim i As Integer
                 For i = 0 To 7%>
                 <font size="<% = i %>"> WELCOME ASP.NET </font>  </br>
                <%Next%>     
        </font>
    </form>
</body>
</html>
