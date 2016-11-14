Public Class WebForm1
    Inherits System.Web.UI.Page

    Private Sub WebForm1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Session("abc") = Session("abc") & "Init <br />"
    End Sub

    Private Sub WebForm1_InitComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.InitComplete
        Session("abc") = Session("abc") & "InitComplete <br />"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("abc") = Session("abc") & "Load <br />"
    End Sub

    Private Sub WebForm1_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        Session("abc") = Session("abc") & "LoadComplete <br />"
    End Sub

    Private Sub WebForm1_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Session("abc") = Session("abc") & "PreInit <br />"
    End Sub

    Private Sub WebForm1_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad
        Session("abc") = Session("abc") & "PreLoad <br />"
    End Sub

    Private Sub WebForm1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Session("abc") = Session("abc") & "PreRender <br />"
    End Sub

    Private Sub WebForm1_PreRenderComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRenderComplete
        Session("abc") = Session("abc") & "PreRenderComplete <br />"
    End Sub

    Private Sub WebForm1_SaveStateComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.SaveStateComplete
        Session("abc") = Session("abc") & "SaveStateComplete <br />"
        Label1.Text = Session("abc")
    End Sub
End Class