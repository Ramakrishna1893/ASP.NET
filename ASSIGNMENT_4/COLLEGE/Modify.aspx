<%@ Page Title="" Language="VB" MasterPageFile="~/COLLEGE/MasterPage.master" AutoEventWireup="false" CodeFile="Modify.aspx.vb" Inherits="COLLEGE_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            SelectCommand="SELECT [Student_ID], [S_NAME], [ADDRESS], [DOB], [SCHOOL_NAME], [PERCENTILE] FROM [Student]" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
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
        <br />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            DataKeyNames="Student_ID" GridLines="Horizontal" Height="330px" 
            style="margin-bottom: 46px" Width="549px">
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
            <HeaderTemplate>
                Modify Stduent Data
            </HeaderTemplate>
            <InsertItemTemplate>
                Student_ID:
                <asp:TextBox ID="Student_IDTextBox" runat="server" 
                    Text='<%# Bind("Student_ID") %>' />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="style7">
                    <tr>
                        <td>
                            STUDENT&nbsp; ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Student_IDLabel" runat="server" 
                                Text='<%# Eval("Student_ID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NAME</td>
                        <td>
                            <asp:Label ID="S_NAMELabel" runat="server" Text='<%# Bind("S_NAME") %>' />
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
                            DOB</td>
                        <td>
                            <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SCHOOL NAME</td>
                        <td>
                            <asp:Label ID="SCHOOL_NAMELabel" runat="server" 
                                Text='<%# Bind("SCHOOL_NAME") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PERCENTILE
                        </td>
                        <td>
                            <asp:Label ID="PERCENTILELabel" runat="server" 
                                Text='<%# Bind("PERCENTILE") %>' />
                        </td>
                    </tr>
                </table>
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
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

