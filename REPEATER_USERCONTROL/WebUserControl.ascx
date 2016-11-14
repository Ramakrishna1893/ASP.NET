<%@ Control Language="VB" AutoEventWireup="false" CodeFile="WebUserControl.ascx.vb" Inherits="WebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 92px;
    }
    .style3
    {
        width: 37px;
    }
</style>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
<table class="style1">
    <tr>
        <td class="style2">
            FIRST NO
        </td>
        <td class="style3">
            ::</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            SECOND NO</td>
        <td class="style3">
            ::</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="236px"></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" Text="ADDITION" Width="119px" />
        </td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

