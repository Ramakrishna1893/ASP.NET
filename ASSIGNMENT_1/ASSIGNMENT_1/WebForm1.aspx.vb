Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("Uname")
        Label3.Text = Application("Cntr")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Session("Uname") = TextBox1.Text
        Response.Redirect("WebForm2.aspx")
    End Sub
End Class