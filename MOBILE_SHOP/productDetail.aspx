<%@ Page Language="VB" AutoEventWireup="false" CodeFile="productDetail.aspx.vb" Inherits="productDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [PRODUCT] WHERE ([PRODUCT_ID] = @PRODUCT_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PRODUCT_ID" QueryStringField="PID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PRODUCT_ID" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="250px" 
                            ImageUrl='<%# Eval("PRICTURE_URL", "~/productImages/{0}") %>' 
                            Width="250px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        PRODUCT_ID:</td>
                    <td>
                        <asp:Label ID="PRODUCT_IDLabel" runat="server" 
                            Text='<%# Eval("PRODUCT_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        DESCRIPTION:
                    </td>
                    <td>
                        <asp:Label ID="DESCRIPTIONLabel" runat="server" 
                            Text='<%# Eval("DESCRIPTION") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        PRICE:
                    </td>
                    <td>
                        <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        PRICTURE_URL:
                    </td>
                    <td>
                        <asp:Label ID="PRICTURE_URLLabel" runat="server" 
                            Text='<%# Eval("PRICTURE_URL") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        CATAGORY:
                    </td>
                    <td>
                        <asp:Label ID="CATAGORYLabel" runat="server" Text='<%# Eval("CATAGORY") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
