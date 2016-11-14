Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsNothing(PreviousPage) Then
            Response.Redirect("WebForm3.aspx")
        Else
            Dim tx As TextBox
            tx = PreviousPage.MyTxtBx
            Label2.Text = tx.Text
        End If
    End Sub

End Class