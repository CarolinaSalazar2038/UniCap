Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.IO
Imports DevExpress.Web
Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Export
Imports System.Collections.Generic


Partial Class area
    Inherits System.Web.UI.Page

    Dim ConArea As New SqlClient.SqlConnection()
    Dim Consulta As String
    Dim strconarea As String
    Dim coneccion As New Coneccion

    ''Metodo Para Llenar el GridView''
    Private Sub CargarGrid()

        Dim dt As DataTable = New DataTable
        dt = LlenarGrid()

        ASPxGridView1.DataSource = dt
        ASPxGridView1.DataBind()

    End Sub

    ''Funcion Que Cumple El Metodo CargarGrid() Para Llenar De Informacion El GridView
    Public Function LlenarGrid() As DataTable


        Dim cmd As New SqlDataAdapter()
        strconarea = coneccion.ConeccionUnicap()
        ConArea.ConnectionString = strconarea
        ConArea.Open()


        Consulta = "Select Area as 'Area', Usuario as 'Usuario', Fecha as 'Fecha Inicio' from dbo.CatArea"
        ''Consulta = "select Nombre_Archivo as 'Nombre Archivo',Descr as 'Area' from dbo.Nombre_AreaPericial"
        cmd.SelectCommand = New SqlCommand(Consulta, ConArea)
        cmd.SelectCommand.CommandType = CommandType.Text
        Dim dt As New DataTable()
        cmd.Fill(dt)
        ConArea.Close()
        Return dt

    End Function

    ''Funcion Del Boton Para Que Imprima El GridView (Tabla) En Un Formato PDF
    Protected Sub ASPxButton1_Click(sender As Object, e As System.EventArgs) Handles ASPxButton1.Click
        ASPxGridViewExporter1.WritePdfToResponse()

    End Sub
End Class

