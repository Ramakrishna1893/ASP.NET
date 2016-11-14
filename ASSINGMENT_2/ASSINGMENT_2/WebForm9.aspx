<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm9.aspx.vb" Inherits="ASSINGMENT_2.WebForm9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ENTER FILE NAME&nbsp; : :&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="10">
            <ItemTemplate>
                <asp:ImageMap ID="ImageMap1" runat="server" 
    ImageUrl='<%# eval("name","~/myImages/{0}") %>' Height="50px" Width="50px">
                </asp:ImageMap>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
