
Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dt As Date
        Label3.Text = ""

        For Each dt In Calendar1.SelectedDates
            Label3.Text = Label3.Text & dt.ToString("D") & "<br />"
        Next
    End Sub
End Class
