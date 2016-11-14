
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Attributes.Add("onMouseOver", "this.style.backgroundColor='yellow'")
        Label2.Attributes.Add("onMouseOut", "this.style.backgroundColor='green'")
    End Sub
End Class
