Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Session("abc") = TextBox1.Text
        Response.Redirect("WebForm10.aspx")

    End Sub
End Class