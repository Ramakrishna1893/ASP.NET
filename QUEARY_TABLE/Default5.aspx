<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default5.aspx.vb" Inherits="Default5" %>

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
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="AUTHER_ID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Horizontal" Height="362px" Width="512px">
            <EditItemTemplate>
                AUTHER_ID:
                <asp:Label ID="AUTHER_IDLabel1" runat="server" 
                    Text='<%# Eval("AUTHER_ID") %>' />
                <br />
                FIRST_NAME:
                <asp:TextBox ID="FIRST_NAMETextBox" runat="server" 
                    Text='<%# Bind("FIRST_NAME") %>' />
                <br />
                LAST_NAME:
                <asp:TextBox ID="LAST_NAMETextBox" runat="server" 
                    Text='<%# Bind("LAST_NAME") %>' />
                <br />
                PHONE:
                <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                <br />
                CITY:
                <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                STUDENT RECORDS
            </HeaderTemplate>
            <InsertItemTemplate>
                AUTHER_ID:
                <asp:TextBox ID="AUTHER_IDTextBox" runat="server" 
                    Text='<%# Bind("AUTHER_ID") %>' />
                <br />
                FIRST_NAME:
                <asp:TextBox ID="FIRST_NAMETextBox" runat="server" 
                    Text='<%# Bind("FIRST_NAME") %>' />
                <br />
                LAST_NAME:
                <asp:TextBox ID="LAST_NAMETextBox" runat="server" 
                    Text='<%# Bind("LAST_NAME") %>' />
                <br />
                PHONE:
                <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                <br />
                CITY:
                <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                AUTHER_ID:
                <asp:Label ID="AUTHER_IDLabel" runat="server" Text='<%# Eval("AUTHER_ID") %>' />
                <br />
                FIRST_NAME:
                <asp:Label ID="FIRST_NAMELabel" runat="server" 
                    Text='<%# Bind("FIRST_NAME") %>' />
                <br />
                LAST_NAME:
                <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                <br />
                PHONE:
                <asp:Label ID="PHONELabel" runat="server" Text='<%# Bind("PHONE") %>' />
                <br />
                CITY:
                <asp:Label ID="CITYLabel" runat="server" Text='<%# Bind("CITY") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
