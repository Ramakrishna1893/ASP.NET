
Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If LCase(TextBox3.Text) = "asp" And LCase(TextBox4.Text) = "net" Then
            Response.Redirect("Default4.aspx")
        Else
            label1.text = "WRONGE USER"
        End If
    End Sub
End Class
