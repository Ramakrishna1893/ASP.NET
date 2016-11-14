Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim client As New System.Net.Mail.SmtpClient
        client.Host = "192.168.111.1"
        client.Port = "25"
        client.Send(TextBox1.Text, TextBox2.Text, TextBox4.Text, TextBox3.Text)
        MsgBox("SEND")
    End Sub
End Class