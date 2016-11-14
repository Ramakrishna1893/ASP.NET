Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Response.Redirect("https://www.google.co.in/search?q=" & TextBox1.Text & "&oq=SOMLALIT&aqs=chrome..69i57.5282j0j8&sourceid=chrome&espv=2&es_sm=93&ie=UTF-8")
    End Sub
End Class