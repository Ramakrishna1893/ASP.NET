Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim x As New HttpCookie("ProductName")
        x.Value = TextBox1.Text
        x.Expires = DateTime.Now.AddDays(30)
        Response.Cookies.Add(x)
        Response.Redirect("WebForm8.aspx")

    End Sub
End Class