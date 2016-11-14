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
        .style2
        {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [NAME] FROM [EMPLOYEE]"></asp:SqlDataSource>
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="NAME">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [EMP_NO], [NAME], [SALLARY] FROM [EMPLOYEE] WHERE ([NAME] = @NAME)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="NAME" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            EMP_NO:
            <asp:TextBox ID="EMP_NOTextBox" runat="server" Text='<%# Bind("EMP_NO") %>' />
            <br />
            NAME:
            <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
            <br />
            SALLARY:
            <asp:TextBox ID="SALLARYTextBox" runat="server" Text='<%# Bind("SALLARY") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            EMP_NO:
            <asp:TextBox ID="EMP_NOTextBox" runat="server" Text='<%# Bind("EMP_NO") %>' />
            <br />
            NAME:
            <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
            <br />
            SALLARY:
            <asp:TextBox ID="SALLARYTextBox" runat="server" Text='<%# Bind("SALLARY") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style2">
                        EMPLOYEE NO
                    </td>
                    <td>
                        <asp:Label ID="EMP_NOLabel" runat="server" Text='<%# Bind("EMP_NO") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        NAME&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        SALLARY&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="SALLARYLabel" runat="server" Text='<%# Bind("SALLARY") %>' />
                    </td>
                </tr>
            </table>
            <br />

        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
