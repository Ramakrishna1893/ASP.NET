
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Request.Cookies("xyz").Value + 1
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim x As New HttpCookie("xyz")
        x.Value = CInt(Request.Cookies("xyz").Value) + 1
        x.Expires = DateTime.Now.AddDays("30")
        Response.Cookies.Add(x)
        Label2.Text = Request.Cookies("xyz").Value
    End Sub
End Class
