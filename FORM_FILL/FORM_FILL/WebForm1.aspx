<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="FORM_FILL.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ENTER YOUR NAME ::
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" Width="163px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        ENTER YOUR ADDRESS ::
        <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" 
            Width="144px"></asp:TextBox>
&nbsp;&quot;WRAPE&quot; ::
        <asp:TextBox ID="TextBox5" runat="server" Height="37px" TextMode="MultiLine" 
            Width="144px" Wrap="False"></asp:TextBox>
        <br />
        <br />
        PASSWORD ::  
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        TIME ::
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    </form>
</body>
</html>
