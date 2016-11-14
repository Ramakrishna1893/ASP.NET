Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim rw As New TableRow
        Dim t1 As New TableCell
        Dim t2 As New TableCell

        t1.Text = TextBox1.Text
        t2.Text = TextBox2.Text

        rw.Cells.Add(t1)
        rw.Cells.Add(t2)
        TBL.Rows.Add(rw)

    End Sub
End Class