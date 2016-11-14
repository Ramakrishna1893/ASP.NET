
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        MsgBox("Data is Submited SuccessFully")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        For Each valcontrol As BaseValidator In Page.Validators
            Dim assControl As WebControl = Page.FindControl(valcontrol.ControlToValidate)
            If Not valcontrol.IsValid Then
                assControl.BackColor = Drawing.Color.Yellow
            Else
                assControl.BackColor = Drawing.Color.White
            End If
        Next
    End Sub
End Class
