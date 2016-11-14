
Partial Class ASSINGMENT_2_WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Image1.ImageUrl = "~/a.jpg"
        Label1.Text = 10
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim s As String = DropDownList1.SelectedValue

        If s = 10 Then
            Image1.ImageUrl = "~/a.jpg"
        ElseIf s = 20 Then
            Image1.ImageUrl = "~/b.jpg"
        ElseIf s = 30 Then
            Image1.ImageUrl = "~/c.jpg"
        ElseIf s = 40 Then
            Image1.ImageUrl = "~/d.jpg"
        End If
        Label1.Text = s
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        label2.Text = Val(TextBox1.Text) * Val(Label1.Text)
    End Sub
End Class
