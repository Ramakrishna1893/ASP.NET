<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default7.aspx.vb" Inherits="Default7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" 
                    SortExpression="EMP_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" 
                    SortExpression="DESIGNATION" />
                <asp:BoundField DataField="SALLARY" HeaderText="SALLARY" 
                    SortExpression="SALLARY" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [EMPLOYEE]" DataSourceMode="DataReader"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
                                                                               