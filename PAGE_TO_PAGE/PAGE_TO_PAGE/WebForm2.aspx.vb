Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsNothing(PreviousPage) Then
            Response.Redirect("WebForm1.aspx")
        End If
        Dim tx As TextBox
        tx = PreviousPage.FindControl("TextBox1")
        Label2.Text = tx.Text
    End Sub

End Class