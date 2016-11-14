<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm6.aspx.vb" Inherits="ASSIGNMENT_1.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 23%;
        }
        .style2
        {
            width: 236px;
        }
        .style3
        {
            width: 28%;
        }
        .style4
        {
            width: 98px;
        }
        .style5
        {
            width: 102%;
            height: 78px;
        }
        .style6
        {
            width: 91px;
        }
        .style7
        {
            width: 128px;
        }
        .style8
        {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                    GroupName="PAYMENT" Text="CASH" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                    GroupName="PAYMENT" Text="CREDIT / DEBIT CARD" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                    GroupName="PAYMENT" Text="CHEQUE" />
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
    <asp:Panel ID="Panel1" runat="server">
        <table class="style3">
            <tr>
                <td class="style4">
                    NAME</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    RS
                </td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="86px" Width="242px">
        <table class="style5">
            <tr>
                <td class="style6">
                    CARD NO :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    PASSWORD
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="77px" Width="260px">
        <table class="style5">
            <tr>
                <td class="style7">
                    CHEQUE NO ::</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    DATE ::
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="138px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="140px">
    </asp:Panel>
    </form>
</body>
</html>
