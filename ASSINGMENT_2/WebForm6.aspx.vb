
Partial Class WebForm6
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        form1.Attributes.Add("style", "background-color:" & RadioButtonList1.SelectedValue)
    End Sub
End Class
