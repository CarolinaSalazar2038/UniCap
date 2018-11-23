
Partial Class SeccionAsistentes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
    'Evento para que muestre la ventana modal 

    Protected Sub ASPxBtnNuevoAsistente_Click(sender As Object, e As System.EventArgs) Handles ASPxBtnNuevoAsistente.Click
        ASPxPopupControl1.ShowOnPageLoad = True
    End Sub
End Class
