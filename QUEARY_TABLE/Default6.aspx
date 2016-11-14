<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default6.aspx.vb" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [AUTHER] WHERE [AUTHER_ID] = @AUTHER_ID" 
            InsertCommand="INSERT INTO [AUTHER] ([AUTHER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [CITY]) VALUES (@AUTHER_ID, @FIRST_NAME, @LAST_NAME, @PHONE, @CITY)" 
            SelectCommand="SELECT * FROM [AUTHER]" 
            UpdateCommand="UPDATE [AUTHER] SET [FIRST_NAME] = @FIRST_NAME, [LAST_NAME] = @LAST_NAME, [PHONE] = @PHONE, [CITY] = @CITY WHERE [AUTHER_ID] = @AUTHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="AUTHER_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AUTHER_ID" Type="Int32" />
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Int32" />
                <asp:Parameter Name="CITY" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="PHONE" Type="Int32" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="AUTHER_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="AUTHER_ID" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="AUTHER_ID" HeaderText="AUTHER_ID" ReadOnly="True" 
                SortExpression="AUTHER_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" 
                SortExpression="LAST_NAME" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    </form>
</body>
</html>
