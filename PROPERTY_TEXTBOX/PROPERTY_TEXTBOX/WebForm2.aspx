<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="PROPERTY_TEXTBOX.WebForm2" %>

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
            width: 204px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" AssociatedControlID="TextBox4" 
                        Text="ENTER YOUR NAME :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" AccessKey="N" 
                        AutoCompleteType="FirstName" Width="256px"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="Ctrl + N"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="TextBox5" 
                        Text="ENTER YOUR PHONE NO :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" AccessKey="P" 
                        AutoCompleteType="Cellular" Width="259px"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" Text="Ctrl + P"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" AssociatedControlID="TextBox6" 
                        Text="ENTER YOUR EMAIL :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" AccessKey="I" 
                        AutoCompleteType="Email" Width="260px"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" Text="Ctrl + I"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="Label7" runat="server" Text="AccesssKey Use"></asp:Label>
    </form>
</body>
</html>
