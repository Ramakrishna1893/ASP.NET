Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim tx As New TextBox
        tx.ID = "T1"
        tx.Text = "Inser Text Box"
        Panel1.Controls.Add(tx)
        tx.Visible = True
    End Sub
End Class