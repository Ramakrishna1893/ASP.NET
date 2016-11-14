<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm7.aspx.vb" Inherits="ASSINGMENT_2.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 42%;
        }
        .style2
        {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    NAME&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    EMAIL</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    SEX
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="MALE" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" 
                        Text="FEMALE" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    TEL.NO</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
