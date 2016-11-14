<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

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
            SelectCommand="SELECT * FROM [EMPLOYEE]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Both">
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
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                DOJ:
                <asp:TextBox ID="DOJTextBox" runat="server" Text='<%# Bind("DOJ") %>' />
                <br />
                ADDRESS:
                <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                FAMALY PERSON:
                <asp:TextBox ID="FAMALY_PERSONTextBox" runat="server" 
                    Text='<%# Bind("[FAMALY PERSON]") %>' />
                <br />
                EXPERIANCE:
                <asp:TextBox ID="EXPERIANCETextBox" runat="server" 
                    Text='<%# Bind("EXPERIANCE") %>' />
                <br />
                HOBY:
                <asp:TextBox ID="HOBYTextBox" runat="server" Text='<%# Bind("HOBY") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <FooterTemplate>
                KSL
            </FooterTemplate>
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <HeaderTemplate>
                EMPLOYEE DETAIL
            </HeaderTemplate>
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
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                DOJ:
                <asp:TextBox ID="DOJTextBox" runat="server" Text='<%# Bind("DOJ") %>' />
                <br />
                ADDRESS:
                <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                FAMALY PERSON:
                <asp:TextBox ID="FAMALY_PERSONTextBox" runat="server" 
                    Text='<%# Bind("[FAMALY PERSON]") %>' />
                <br />
                EXPERIANCE:
                <asp:TextBox ID="EXPERIANCETextBox" runat="server" 
                    Text='<%# Bind("EXPERIANCE") %>' />
                <br />
                HOBY:
                <asp:TextBox ID="HOBYTextBox" runat="server" Text='<%# Bind("HOBY") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            EMPLOYEE_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="EMP_NOLabel" runat="server" Text='<%# Bind("EMP_NO") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NAME</td>
                        <td>
                            <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SALLARY</td>
                        <td>
                            <asp:Label ID="SALLARYLabel" runat="server" Text='<%# Bind("SALLARY") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE OF BIRTH</td>
                        <td>
                            <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DATE OF JOING</td>
                        <td>
                            <asp:Label ID="DOJLabel" runat="server" Text='<%# Bind("DOJ") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ADDRESS</td>
                        <td>
                            <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            FAMILY PERSON</td>
                        <td>
                            <asp:Label ID="FAMALY_PERSONLabel" runat="server" 
                                Text='<%# Bind("[FAMALY PERSON]") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            EXPERIANCE</td>
                        <td>
                            <asp:Label ID="EXPERIANCELabel" runat="server" 
                                Text='<%# Bind("EXPERIANCE") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            HOBBY</td>
                        <td>
                            <asp:Label ID="HOBYLabel" runat="server" Text='<%# Bind("HOBY") %>' />
                        </td>
                    </tr>
                </table>
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
