<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="PROPERTY_TEXTBOX.WebForm1" %>

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
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="TextBox1" 
                        Text="ENTER YOUR NAME :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" AccessKey="N" 
                        AutoCompleteType="FirstName" Width="308px"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Ctrl + N"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox2" 
                        Text="ENTER PHONE NO :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" AccessKey="P" 
                        AutoCompleteType="Cellular" Width="306px"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Text="Ctrl + P"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="TextBox3" 
                        Text="ENTER YOUR EMAIL ID :: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" AccessKey="I" 
                        AutoCompleteType="Email" ClientIDMode="Static" Width="310px"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" Text="Ctrl + I"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm2.aspx" 
            Text="SUBMIT" />
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="AccessKey Use"></asp:Label>
    </p>
    </form>
</body>
</html>
