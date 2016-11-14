<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default9.aspx.vb" Inherits="Default9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="GENDER" 
            Text="MALE" />
    
    </div>
    <p>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="GENDER" 
            Text="FEMALE" />
    </p>
    </form>
</body>
</html>
