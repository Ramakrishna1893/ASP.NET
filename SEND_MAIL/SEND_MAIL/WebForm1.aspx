<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="SEND_MAIL.WebForm1" %>

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
            width: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="TO :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Red" Width="453px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="FROM : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Red" Width="454px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    SUBJECT</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Red" Width="454px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    MESSAGE :: 
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SEND" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Red" Height="249px" 
        Width="555px"></asp:TextBox>
    </form>
</body>
</html>
