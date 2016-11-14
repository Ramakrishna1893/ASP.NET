Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Dim g As String

        If RadioButton1.Checked = True Then
            g = "MALE"
        Else
            g = "FEMALE"
        End If

        Dim s As String

        s = "NAME IS :: " & TextBox1.Text & "</br>" &
            "ADDRESS IS ::  " & TextBox2.Text & "</br>" &
            "SEX :: " & g & "</br>" &
            "TELEPHONE NO :: " & TextBox4.Text

        Label1.Text = s

    End Sub
End Class