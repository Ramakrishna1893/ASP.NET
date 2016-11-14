<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="PROPERTY.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
    <p>
        <asp:Button ID="Button1" runat="server" 
            Text="SUBMIT  : ENABLE View State :: True" />
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" EnableViewState="False" Text="0"></asp:Label>
    </p>
    <p style="font-weight: 700">
        <asp:Button ID="Button2" runat="server" 
            Text="SUBMIT :: ENABLE View State :: False" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
