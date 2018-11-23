Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Data


Partial Class SeccionEventos
    Inherits System.Web.UI.Page
    Dim coneccion As New Coneccion
    Dim _Unicap As String
    Dim Conunicap As New SqlClient.SqlConnection()


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Try
            Dim dr As SqlDataReader
            Dim cmd As SqlCommand


            _Unicap = coneccion.ConeccionUnicap()
            Conunicap.ConnectionString = _Unicap
            Conunicap.Open()

            cmd = New SqlClient.SqlCommand("cbo_TipoEvento", Conunicap)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@IdTEvento", 0)
            dr = cmd.ExecuteReader()


            TipoE.DataSource = dr
            TipoE.TextField = "TipoEvento"
            TipoE.ValueField = "TipoEvento"
            TipoE.DataBind()

            Conunicap.Close()
        Catch


        End Try


    End Sub

    'Evento para que muestre la ventana modal'

    Protected Sub ASPxBtnAbrirEvento_Click(sender As Object, e As System.EventArgs) Handles ASPxBtnAbrirEvento.Click
        ASPxPopupControl1.ShowOnPageLoad = True
    End Sub



    Protected Sub TipoE_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles TipoE.SelectedIndexChanged


    End Sub

  
End Class
