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
        .style5
        {
            width: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CITY] FROM [AUTHER]" DataSourceMode="DataReader"></asp:SqlDataSource>
    
    </div>
    <p>
        SELECT CITY ::
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="CITY" DataValueField="CITY" 
            AutoPostBack="True">
        </asp:DropDownList>
    </p>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [AUTHER_ID], [FIRST_NAME], [CITY] FROM [AUTHER] WHERE ([CITY] = @CITY)" 
        DataSourceMode="DataReader">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="AHMEDABAD" 
                    Name="CITY" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AUTHER_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="AUTHER_ID" HeaderText="AUTHER ID" ReadOnly="True" 
                SortExpression="AUTHER_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="NAME" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" 
                SortExpression="CITY" />
            <asp:HyperLinkField DataNavigateUrlFields="AUTHER_ID" 
                DataNavigateUrlFormatString="~/Default2.aspx?ID={0}" HeaderText="View Detail" 
                NavigateUrl="~/Default2.aspx" Text="Click Me !!!" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    SELECT DATA TABLE<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [AUTHER] WHERE ([AUTHER_ID] = @AUTHER_ID)" 
        DataSourceMode="DataReader">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" 
                    Name="AUTHER_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AUTHER_ID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="AUTHER_ID" HeaderText="AUTHER_ID" ReadOnly="True" 
                SortExpression="AUTHER_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" 
                SortExpression="LAST_NAME" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    DATA SET 
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="AUTHER_ID" 
        DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style5">
                        AUTHER ID&nbsp;&nbsp;&nbsp; ::</td>
                    <td>
                        <asp:Label ID="AUTHER_IDLabel" runat="server" Text='<%# Eval("AUTHER_ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        FIRST NAME ::
                    </td>
                    <td>
                        <asp:Label ID="FIRST_NAMELabel" runat="server" 
                            Text='<%# Eval("FIRST_NAME") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        LAST NAME&nbsp; ::
                    </td>
                    <td>
                        <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        PHONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::</td>
                    <td>
                        <asp:Label ID="PHONELabel" runat="server" Text='<%# Eval("PHONE") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        CITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ::
                    </td>
                    <td>
                        <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                    </td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    </form>
</body>
</html>
