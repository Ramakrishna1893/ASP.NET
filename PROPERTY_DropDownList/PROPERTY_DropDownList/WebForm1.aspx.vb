Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            DropDownList1.Items.Add("AHMEDABAD")
            DropDownList1.Items.Add("BARODA")
            DropDownList1.Items.Add("RAJCOT")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        DropDownList1.Items.Add(TextBox1.Text)
    End Sub
End Class