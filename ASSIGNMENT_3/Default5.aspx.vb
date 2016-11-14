
Partial Class Default5
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cookes = New HttpCookie("abc")
        cookes.Values.Add("a", TextBox1.Text)
        cookes.Values.Add("b", TextBox2.Text)
    End Sub
End Class
