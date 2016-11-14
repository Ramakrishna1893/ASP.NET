<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default5.aspx.vb" Inherits="Default5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                ITEM ID ::&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                NAME&nbsp;&nbsp; ::</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PRICE&nbsp;&nbsp;&nbsp; ::</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                QTY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="93px" 
                    PostBackUrl="~/Default6.aspx" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
