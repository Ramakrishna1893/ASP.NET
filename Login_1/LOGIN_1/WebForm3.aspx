<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="LOGIN_1.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:table ID="TBL" runat="server" BorderStyle="Solid" BorderColor = "Red" BorderWidth="2px">
      <asp:TableHeaderRow runat="server" BackColor="Black" ForeColor="White">
         <asp:TableHeaderCell >SR_NO</asp:TableHeaderCell>
         <asp:TableHeaderCell >NAME </asp:TableHeaderCell>
      </asp:TableHeaderRow>
  
  <asp:TableRow runat="server" >
   <asp:TableCell>1</asp:TableCell>
   <asp:TableCell>KAMESH</asp:TableCell>
  </asp:TableRow>    
  <asp:TableRow runat="server">
     <asp:TableCell>2</asp:TableCell>
   <asp:TableCell>KAUSHAL</asp:TableCell>
  </asp:TableRow>
  </asp:table>

    </div>
    <asp:Panel ID="Panel1" runat="server" Height="130px" Width="285px">
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    SR_NO</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="138px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    NAME</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="137px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="INSERT_ROW" Width="110px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
