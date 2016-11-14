<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm4.aspx.vb" Inherits="PROPERTY.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> <asp:Literal ID="Literal1" runat="server"></asp:Literal></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Please  See in the Tital Bar</h1>
       
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
        <asp:Literal ID="Literal2" runat="server" Text="<hr />" Mode = "Encode"></asp:Literal>
    </p>
    <asp:Literal ID="Literal3" runat="server" Text="<hr />"></asp:Literal>
    </form>
</body>
</html>
