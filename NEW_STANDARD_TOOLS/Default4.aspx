<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/A.png">
            <asp:RectangleHotSpot Bottom="44" NavigateUrl="~/Default5.aspx" Top="15" 
                Left="12" Right="145" />
            <asp:RectangleHotSpot Bottom="39" Left="158" Right="295" Top="13" />
            <asp:RectangleHotSpot Bottom="37" Left="310" NavigateUrl="~/Default7.aspx" 
                Right="444" Top="10" />
        </asp:ImageMap>
    
        <asp:Localize ID="Localize1" runat="server"></asp:Localize>
        <asp:Localize ID="Localize2" runat="server"></asp:Localize>
        <asp:Localize ID="Localize3" runat="server"></asp:Localize>
        <asp:Localize ID="Localize4" runat="server"></asp:Localize>
        <asp:Localize ID="Localize5" runat="server"></asp:Localize>
    
    </div>
    </form>
</body>
</html>
