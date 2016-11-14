
Partial Class Default10
    Inherits System.Web.UI.Page

    Protected Sub CheckBoxList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBoxList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.TEXT = ""
        Label1.Text = "YOU HAVE TO SELECT FOLLOWING PLAYER  </br>"

        Dim l As ListItem

        For Each l In CheckBoxList1.Items
            If l.Selected = True Then
                Label1.Text = Label1.Text & l.Text & "</br>"
            End If
        Next




    End Sub
End Class
