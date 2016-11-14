<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductList.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 142px;
        }
        .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [PRODUCT_ID], [NAME], [DESCRIPTION], [PRICE], [PRICTURE_URL] FROM [PRODUCT] WHERE ([CATAGORY] = @CATAGORY)">
            <SelectParameters>
                <asp:QueryStringParameter Name="CATAGORY" QueryStringField="PCAT" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="PRODUCT_ID" 
            DataSourceID="SqlDataSource1" ForeColor="Black" Height="375px" 
            RepeatColumns="3" Width="786px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2" colspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" 
                                ImageUrl='<%# Eval("PRICTURE_URL","~/productImages/{0}") %>' 
                                PostBackUrl='<%# Eval("PRODUCT_ID","~/productDetail.aspx?PID={0}") %>' 
                                Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            PRODUCT_ID:
                        </td>
                        <td>
                            <asp:Label ID="PRODUCT_IDLabel" runat="server" 
                                Text='<%# Eval("PRODUCT_ID") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            NAME:
                        </td>
                        <td>
                            <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            DESCRIPTION:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="DESCRIPTIONLabel" runat="server" 
                                Text='<%# Eval("DESCRIPTION") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;PRICE::</td>
                        <td>
                            <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" style="vertical-align: top">
                            PRODUCT_URL</td>
                        <td>
                            &nbsp;<asp:Label ID="PRICTURE_URLLabel" runat="server" 
                                Text='<%# Eval("PRICTURE_URL") %>' />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
