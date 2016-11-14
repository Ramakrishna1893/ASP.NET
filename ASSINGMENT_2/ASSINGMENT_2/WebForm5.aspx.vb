Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "YOU HAVE SELECT ITEMS </br>"
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim l As ListItem

        For Each l In CheckBoxList1.Items
            If l.Selected = True Then
                Label1.Text = Label1.Text & l.Text & "</br>"
            End If
        Next
    End Sub






End Class