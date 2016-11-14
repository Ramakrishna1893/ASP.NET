<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
            SelectCommand="SELECT * FROM [EMPLOYEE]"></asp:SqlDataSource>
        <br />
        <table width="70%">
          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
             <HeaderTemplate>
                   <tr style="background-color:Gray">
                     <th>AUTHER ID</th>
                     <th>FIRST NAME</th>
                     <th>ADDRESS</th>
                     <th>SALLARY</th>
                   </tr>
             </HeaderTemplate>
            <ItemTemplate>
              <tr>
                 <td><%# DataBinder.Eval(Container, "DataItem.EMP_NO")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.NAME")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.ADDRESS")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.SALLARY")%></td>
              </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
             <tr style="background-color:Yellow">
                 <td><%# DataBinder.Eval(Container, "DataItem.EMP_NO")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.NAME")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.ADDRESS")%></td>
                 <td><%# DataBinder.Eval(Container, "DataItem.SALLARY")%></td>   
             </tr>
            </AlternatingItemTemplate>
          </asp:Repeater>
        </table>    
    </div>
    </form>
</body>
</html>
