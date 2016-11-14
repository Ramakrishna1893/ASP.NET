<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default7.aspx.vb" Inherits="Default7" %>

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
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="AUTHER_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Height="385px" Width="702px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="AUTHER_ID" HeaderText="AUTHER_ID" ReadOnly="True" 
                    SortExpression="AUTHER_ID" />
                <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" 
                    SortExpression="FIRST_NAME" />
                <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" 
                    SortExpression="LAST_NAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
