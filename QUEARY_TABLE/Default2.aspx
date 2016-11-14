<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="AUTHER_ID" DataSourceID="SqlDataSource2">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [AUTHER] WHERE ([AUTHER_ID] = @AUTHER_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="AUTHER_ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
