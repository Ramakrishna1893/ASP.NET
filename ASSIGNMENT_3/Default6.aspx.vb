
Partial Class Default6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request.Cookies("abc").Values("a")
    End Sub
End Class
