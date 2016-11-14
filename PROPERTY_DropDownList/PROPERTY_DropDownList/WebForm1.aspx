<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="PROPERTY_DropDownList.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>SHALIN</asp:ListItem>
            <asp:ListItem>VIRAL</asp:ListItem>
            <asp:ListItem>KAUSHAL</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        ENTER CITY NAME ::
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="INSERT_CITY" />
    </p>
    </form>
</body>
</html>
