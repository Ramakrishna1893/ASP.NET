<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

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
            SelectCommand="SELECT * FROM [AUTHER]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="AUTHER_ID" DataSourceID="SqlDataSource1" 
        Height="50px" Width="205px">
        <Fields>
            <asp:BoundField DataField="AUTHER_ID" HeaderText="AUTHER_ID" ReadOnly="True" 
                SortExpression="AUTHER_ID" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" 
                SortExpression="LAST_NAME" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        </Fields>
    </asp:DetailsView>
    </form>
</body>
</html>
