Public Class WebForm3
    Inherits System.Web.UI.Page

    Public ReadOnly Property MyTxtBx As TextBox
        Get
            Return TextBox1
        End Get
    End Property
End Class