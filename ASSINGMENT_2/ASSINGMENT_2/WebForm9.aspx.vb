Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath("~/myImages/" & FileUpload1.FileName))
        End If
    End Sub

    Private Sub WebForm9_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim x As New System.IO.DirectoryInfo(Server.MapPath("~/myImages"))
        DataList1.DataSource = x.GetFiles
        DataList1.DataBind()

    End Sub
End Class