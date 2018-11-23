
Partial Class SeccionConsultaEventosDetalles
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    'Evento para que muestre la ventana modal 

    Protected Sub ASPxbtnBuscarEvento_Click(sender As Object, e As System.EventArgs) Handles ASPxbtnBuscarEvento.Click

        ASPxPopupControl1.ShowOnPageLoad = True

    End Sub
        End Class
