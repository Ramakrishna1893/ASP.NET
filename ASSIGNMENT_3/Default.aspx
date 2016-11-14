<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
            width: 203px;
        }
        .style3
        {
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                ENTER USER NAE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="COMPALSORY ENTER USER NAME..."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MODE OF PAYMENT&nbsp; ::</td>
            <td class="style3">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="CARD" 
                    Text="CREDIT CARD" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="CARD" 
                    Text="DEBIT CARD" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                CARD NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ::</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" Width="267px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="13" 
                    MinimumValue="12" Type="Integer">12 DIGIT ENTER</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="ENTER CARD NO COMPALSORY"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="VALIDATION" Width="109px" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="173px" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
