
Partial Class Default8
    Inherits System.Web.UI.Page

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
       
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If CheckBox1.Checked = True Then
            Label1.Text = "Thank you for Doanate"
        Else
            Label1.Text = "Please Request"
        End If
    End Sub
End Class
