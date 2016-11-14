Public Class WebForm5
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Response.Redirect("WebForm6.aspx?MyVal=" & TextBox1.Text)
    End Sub
End Class