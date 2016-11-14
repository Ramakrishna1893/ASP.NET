Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False

    End Sub

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton1.CheckedChanged
        If RadioButton1.Checked = True Then
            Panel1.Visible = True
            Panel2.Visible = False
            Panel3.Visible = False
        Else
            Panel1.Visible = False
            Panel2.Visible = False
            Panel3.Visible = False
        End If

    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton2.CheckedChanged
        If RadioButton2.Checked = True Then
            Panel1.Visible = False
            Panel2.Visible = True
            Panel3.Visible = False
        Else
            Panel1.Visible = False
            Panel2.Visible = False
            Panel3.Visible = False
        End If
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton3.CheckedChanged
        If RadioButton3.Checked = True Then
            Panel1.Visible = False
            Panel2.Visible = False
            Panel3.Visible = True
        Else
            Panel1.Visible = False
            Panel2.Visible = False
            Panel3.Visible = False
        End If
    End Sub
End Class