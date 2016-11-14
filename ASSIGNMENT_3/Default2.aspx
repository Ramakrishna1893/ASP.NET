<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

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
            width: 150px;
        }
        .style3
        {
            width: 150px;
            height: 31px;
        }
        .style4
        {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                ENTER NAME&nbsp; : :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="218px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="ENTER NAME..."></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="43px" TextMode="MultiLine" 
                    Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="ENTER ADDRESS....."></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                : :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="218px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="VALIDE DATE IS 1/1/1900    TO 1/1/2090" MaximumValue="1/1/2090" 
                    MinimumValue="1/1/1900" Type="Date"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                COUNTY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : :</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>INDIA</asp:ListItem>
                    <asp:ListItem>AUSTRELIYA</asp:ListItem>
                    <asp:ListItem>PAKISTAN</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                WORK EXP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="218px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="ENTER WORK EXPERIANCE...."></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="115px" />
    </form>
</body>
</html>
