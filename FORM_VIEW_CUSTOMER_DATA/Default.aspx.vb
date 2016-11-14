
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      
    End Sub

    Protected Sub NewButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim cn As New System.Data.SqlClient.SqlConnection
        Dim cmd As New System.Data.SqlClient.SqlCommand
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("Database.mdf").ConnectionString
        cmd.CommandText = "select max(CUST_CODE) from CUSTOMER"
        cmd.Connection = cn

        Dim i As Integer
        i = cmd.ExecuteScalar
        i = i + 1

        Dim tx As TextBox
        tx = CType(FormView1.FindControl("CUST_CODETextBox"), TextBox)
        tx.Text = i
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub
End Class
