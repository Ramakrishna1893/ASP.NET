<%@ Page Title="" Language="VB" MasterPageFile="~/COLLEGE/MasterPage.master" AutoEventWireup="false" CodeFile="Detail.aspx.vb" Inherits="COLLEGE_Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            DeleteCommand="DELETE FROM [Student] WHERE (([Student_ID] = ?) OR ([Student_ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Student] ([Student_ID], [S_NAME], [ADDRESS], [DOB], [SCHOOL_NAME], [PERCENTILE]) VALUES (?, ?, ?, ?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="338px" 
            Width="525px" DataKeyNames="Student_ID">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                    SortExpression="Student_ID" ReadOnly="True" />
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
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                Student Information
            </HeaderTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

