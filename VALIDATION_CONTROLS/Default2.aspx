<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 228px;
        }
        .style2
        {
            width: 108px;
        }
        .style3
        {
            width: 219px;
        }
        .style4
        {
            width: 100%;
            height: 67px;
        }
        .style5
        {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    NAME&nbsp;&nbsp; : :
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Name Is Mandatory  ???" Font-Bold="False" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    AGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : :
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" 
                        ErrorMessage="Age lies Between 1 to 100 ???" ForeColor="#FF0066" 
                        MaximumValue="100" MinimumValue="1" Type="Integer" 
                        EnableClientScript="False"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" 
                        ErrorMessage="Age Is Mandatory ???" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    DOB&nbsp;&nbsp;&nbsp;&nbsp; : : </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Invalide DATE ???" 
                        ForeColor="#FF0066" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    SALLARY ::
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Must Be GreterThen 5000 Rs." 
                        ForeColor="#FF0066" Operator="GreaterThan" Type="Integer" ValueToCompare="5000"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    DOJ ::
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox5" 
                        ErrorMessage="DOJ Is Greater Then DOB" ForeColor="#FF0066" 
                        Operator="GreaterThan" Type="Date"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    EMAIL ID ::
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Invalide Email ID" 
                        ForeColor="#FF0066" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style4">
        <tr>
            <td class="style5">
                VALIDATION SUMMARY ::</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ForeColor="#CC0066" ShowMessageBox="True" style="margin-bottom: 23px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
