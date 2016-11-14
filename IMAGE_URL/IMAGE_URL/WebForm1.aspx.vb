Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        If e.X > 130 And e.X < 280 Then
            If e.Y > 80 And e.Y < 150 Then
                Response.Redirect("WebForm2.aspx")
            Else
                Response.Redirect("WebForm3.aspx")
            End If
        Else
            Response.Redirect("WebForm3.aspx")
        End If
    End Sub
End Class