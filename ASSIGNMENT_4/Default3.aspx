<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

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
            height: 23px;
        }
        .style3
        {
            width: 132px;
        }
        .style4
        {
            height: 23px;
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM [Student]" 
            DeleteCommand="DELETE FROM [Student] WHERE (([Student_ID] = ?) OR ([Student_ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Student] ([Student_ID], [S_NAME], [ADDRESS], [DOB], [SCHOOL_NAME], [PERCENTILE]) VALUES (?, ?, ?, ?, ?, ?)" 
            UpdateCommand="UPDATE [Student] SET [S_NAME] = ?, [ADDRESS] = ?, [DOB] = ?, [SCHOOL_NAME] = ?, [PERCENTILE] = ? WHERE (([Student_ID] = ?) OR ([Student_ID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="Student_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_ID" Type="Int32" />
                <asp:Parameter Name="S_NAME" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="SCHOOL_NAME" Type="String" />
                <asp:Parameter Name="PERCENTILE" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="S_NAME" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="SCHOOL_NAME" Type="String" />
                <asp:Parameter Name="PERCENTILE" Type="Int32" />
                <asp:Parameter Name="Student_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="Student_ID" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" 
                SortExpression="Student_ID" />
            <asp:BoundField DataField="S_NAME" HeaderText="S_NAME" 
                SortExpression="S_NAME" />
            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                SortExpression="ADDRESS" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="SCHOOL_NAME" HeaderText="SCHOOL_NAME" 
                SortExpression="SCHOOL_NAME" />
            <asp:BoundField DataField="PERCENTILE" HeaderText="PERCENTILE" 
                SortExpression="PERCENTILE" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
        DeleteCommand="DELETE FROM [Student] WHERE (([Student_ID] = ?) OR ([Student_ID] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [Student] ([Student_ID], [S_NAME], [ADDRESS], [DOB], [SCHOOL_NAME], [PERCENTILE]) VALUES (?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
        SelectCommand="SELECT * FROM [Student]" 
        UpdateCommand="UPDATE [Student] SET [S_NAME] = ?, [ADDRESS] = ?, [DOB] = ?, [SCHOOL_NAME] = ?, [PERCENTILE] = ? WHERE (([Student_ID] = ?) OR ([Student_ID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="Student_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Student_ID" Type="Int32" />
            <asp:Parameter Name="S_NAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="SCHOOL_NAME" Type="String" />
            <asp:Parameter Name="PERCENTILE" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_NAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="SCHOOL_NAME" Type="String" />
            <asp:Parameter Name="PERCENTILE" Type="Int32" />
            <asp:Parameter Name="Student_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2" 
        GridLines="Horizontal">
        <EditItemTemplate>
            Student_ID:
            <asp:Label ID="Student_IDLabel1" runat="server" 
                Text='<%# Eval("Student_ID") %>' />
            <br />
            S_NAME:
            <asp:TextBox ID="S_NAMETextBox" runat="server" Text='<%# Bind("S_NAME") %>' />
            <br />
            ADDRESS:
            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            SCHOOL_NAME:
            <asp:TextBox ID="SCHOOL_NAMETextBox" runat="server" 
                Text='<%# Bind("SCHOOL_NAME") %>' />
            <br />
            PERCENTILE:
            <asp:TextBox ID="PERCENTILETextBox" runat="server" 
                Text='<%# Bind("PERCENTILE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style3">
                        STUDENT ROLL :</td>
                    <td>
                        <asp:TextBox ID="Student_IDTextBox" runat="server" 
                            Text='<%# Bind("Student_ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        NAME</td>
                    <td>
                        <asp:TextBox ID="S_NAMETextBox" runat="server" Text='<%# Bind("S_NAME") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        ADDRESS</td>
                    <td>
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        DOB</td>
                    <td class="style2">
                        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        SCHOOL NAME</td>
                    <td>
                        <asp:TextBox ID="SCHOOL_NAMETextBox" runat="server" 
                            Text='<%# Bind("SCHOOL_NAME") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        PERCENTIME
                    </td>
                    <td>
                        <asp:TextBox ID="PERCENTILETextBox" runat="server" 
                            Text='<%# Bind("PERCENTILE") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            Student_ID:
            <asp:Label ID="Student_IDLabel" runat="server" 
                Text='<%# Eval("Student_ID") %>' />
            <br />
            S_NAME:
            <asp:Label ID="S_NAMELabel" runat="server" Text='<%# Bind("S_NAME") %>' />
            <br />
            ADDRESS:
            <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            SCHOOL_NAME:
            <asp:Label ID="SCHOOL_NAMELabel" runat="server" 
                Text='<%# Bind("SCHOOL_NAME") %>' />
            <br />
            PERCENTILE:
            <asp:Label ID="PERCENTILELabel" runat="server" 
                Text='<%# Bind("PERCENTILE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:FormView>
    </form>
</body>
</html>
