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
            width: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    FILE NAME ::
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Upload Images" Width="134px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
       
         
         <hr />
         <br />
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
        RepeatDirection="Horizontal" style="margin-bottom: 22px">
        <ItemTemplate>
            <asp:ImageMap ID="ImageMap1" runat="server" Height="100px" 
                ImageUrl='<%# eval("name","~/myImages/{0}") %>' Width="150px">
            </asp:ImageMap>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# eval("Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
