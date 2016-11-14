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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [CUSTOMER] WHERE [CUST_CODE] = @CUST_CODE" 
            InsertCommand="INSERT INTO [CUSTOMER] ([CUST_CODE], [NAME], [ADDRESS], [STATE_ID], [CITY_ID]) VALUES (@CUST_CODE, @NAME, @ADDRESS, @STATE_ID, @CITY_ID)" 
            SelectCommand="SELECT * FROM [CUSTOMER]" 
            UpdateCommand="UPDATE [CUSTOMER] SET [NAME] = @NAME, [ADDRESS] = @ADDRESS, [STATE_ID] = @STATE_ID, [CITY_ID] = @CITY_ID WHERE [CUST_CODE] = @CUST_CODE">
            <DeleteParameters>
                <asp:Parameter Name="CUST_CODE" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUST_CODE" Type="Int32" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="STATE_ID" Type="Int32" />
                <asp:Parameter Name="CITY_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="STATE_ID" Type="Int32" />
                <asp:Parameter Name="CITY_ID" Type="Int32" />
                <asp:Parameter Name="CUST_CODE" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="CUST_CODE" DataSourceID="SqlDataSource1" Width="298px">
        <EditItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        CUST_CODE:</td>
                    <td>
                        <asp:Label ID="CUST_CODELabel1" runat="server" 
                            Text='<%# Eval("CUST_CODE") %>' />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        STATE_ID:
                    </td>
                    <td>
                        <asp:TextBox ID="STATE_IDTextBox" runat="server" 
                            Text='<%# Bind("STATE_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        CITY_ID:
                    </td>
                    <td>
                        <asp:TextBox ID="CITY_IDTextBox" runat="server" Text='<%# Bind("CITY_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        CUST_CODE:</td>
                    <td>
                        <asp:TextBox ID="CUST_CODETextBox" runat="server" ReadOnly="True" 
                            Text='<%# Bind("CUST_CODE") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="CUST_CODETextBox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        NAME:</td>
                    <td>
                        <asp:TextBox ID="NAMETextBox" runat="server" Height="22px" 
                            Text='<%# Bind("NAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        STATE_ID:
                    </td>
                    <td>
                        <asp:TextBox ID="STATE_IDTextBox0" runat="server" 
                            Text='<%# Bind("STATE_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        CITY_ID:
                    </td>
                    <td>
                        <asp:TextBox ID="CITY_IDTextBox" runat="server" Text='<%# Bind("CITY_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
&nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" onclick="InsertButton_Click" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        CUST_CODE:</td>
                    <td>
                        <asp:Label ID="CUST_CODELabel" runat="server" Text='<%# Eval("CUST_CODE") %>' />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        NAME:
                    </td>
                    <td>
                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        ADDRESS:
                    </td>
                    <td>
                        <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        STATE_ID:</td>
                    <td>
                        <asp:Label ID="STATE_IDLabel" runat="server" Text='<%# Bind("STATE_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        CITY_ID:</td>
                    <td>
                        <asp:Label ID="CITY_IDLabel" runat="server" Text='<%# Bind("CITY_ID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
&nbsp;<br />&nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" onclick="NewButton_Click" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
