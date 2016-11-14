<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="LOGIN_1.WebForm1" %>

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
            width: 115px;
        }
        .style3
        {
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            GroupName="Sign" Text="Sign In" />
    
    </div>
    <p>
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            GroupName="Sign" Text="Sign Up" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table class="style1">
            <tr>
                <td class="style2">
                    USER_NAME&nbsp; ::</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    PASSWORD&nbsp;&nbsp;&nbsp; ::</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" Width="121px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
   
    <asp:Panel ID="Panel2" runat="server">
        <table class="style1">
            <tr>
                <td class="style3">
                    USER NAME ::</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    PASSWORD ::</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    CONFIRM PASSWORD ::</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    EMAIL&nbsp; ::</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" Text="Sing Up" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
