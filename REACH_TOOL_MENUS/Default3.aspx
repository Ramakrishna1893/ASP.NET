<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Calendar ID="Calendar1" runat="server" NextMonthText="Next" 
            PrevMonthText="Prev" SelectionMode="DayWeekMonth" SelectMonthText="Month" 
            SelectWeekText="Week"></asp:Calendar>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Date Selected" Width="104px" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
