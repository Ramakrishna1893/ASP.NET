Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Attributes.Add("onMouseOver", "this.style.backgroundColor='Yellow'")
        Label2.Attributes.Add("onMouseOut", "this.style.backgroundColor='lightgreen'")
    End Sub

End Class