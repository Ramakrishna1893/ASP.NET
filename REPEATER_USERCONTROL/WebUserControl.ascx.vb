
Partial Class WebUserControl
    Inherits System.Web.UI.UserControl

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = Val(TextBox1.Text) + Val(TextBox2.Text)
    End Sub
End Class
