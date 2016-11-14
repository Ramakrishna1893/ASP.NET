
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub Calendar1_DayRender(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DayRenderEventArgs) Handles Calendar1.DayRender
        If e.Day.DayNumberText = "20" Then
            Dim x As New LiteralControl("</br><a href='Default5.aspx'> BIRTH_DAY </a>")
            e.Cell.Controls.Add(x)
        End If

    End Sub
End Class
