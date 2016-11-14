<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="ASSIGNMENT_1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        WELCOME TO&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    <p>
        <asp:Label ID="Label2" runat="server" Text="ENTER YOUR NAME :: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
    </p>
    <p>
        THIS WEBSITE IS VISITED&nbsp;&nbsp; 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp; TIMES</p>
    </form>
</body>
</html>
