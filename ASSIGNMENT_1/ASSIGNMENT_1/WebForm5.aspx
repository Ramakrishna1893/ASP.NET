<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm5.aspx.vb" Inherits="ASSIGNMENT_1.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 101%;
            height: 158px;
        }
        .style2
        {
            width: 110px;
        }
        .style8
        {
            width: 354px;
        }
        .style11
        {
            width: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            GroupName="Detail" Text="PERSONAL DETAIL" />
    
    </div>
    <p>
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            GroupName="Detail" Text="EDUCATION DETAIL" />
    </p>
    <p>
        <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
            GroupName="Detail" Text="WORK EXPERIENCE " />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="174px" Width="356px">
        <table class="style1">
            <tr>
                <td class="style2">
                    FIRST NAME</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    MIDDEL NAME</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    LAST NAME</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    DOB</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    CITY</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    MOBILE
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Button ID="Button2" runat="server" Text="SUBMIT" />
    <asp:Panel ID="Panel2" runat="server" Height="159px" Width="351px">
        <table class="style1">
            <tr>
                <td class="style8">
                    SSC PER :</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="219px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    HSC PER :</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    COLLEGE PER :
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    COL NAME ::
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel3" runat="server" Height="174px" Width="468px">
        <table class="style1">
            <tr>
                <td class="style11">
                    COMPANY NAME</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" Height="24px" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    START YEAR</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    EXPERIANCE</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    POST OF THE COMPANY</td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
