Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.IO
Imports DevExpress.Web
Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Export
Imports System.Collections.Generic



Partial Class SeccionReportesCursos
    Inherits System.Web.UI.Page


    Dim ConUnicap As New SqlClient.SqlConnection()
    Dim Consulta As String
    Dim strconUnicap As String
    Dim coneccion As New Coneccion

    Dim Adaptador As SqlDataAdapter
    Dim Tabla As DataTable

    ''Metodo Llenar ComboBox
    Private Sub LlenarComboBox()
        For Each Fila As DataRow In Tabla.Rows
            ASPxComboBoxTema.Items.Add(Fila("TipoEvento"))

        Next
    End Sub

    ''Metodo donde se indica de donde se toma la informacion para el ComboBox
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        strconUnicap = coneccion.ConeccionUnicap()
        ConUnicap.ConnectionString = strconUnicap
        ConUnicap.Open()

        Adaptador = New SqlDataAdapter("SELECT * FROM CatTipoEvento", ConUnicap)
        Tabla = New DataTable
        Adaptador.Fill(Tabla)

        Call LlenarComboBox()

        ConUnicap.Close()

    End Sub

    ''Funcion Del Boton Para Que Imprima El GridView (Tabla) En Un Formato PDF
    Protected Sub ASPxButtonImprimir_Click(sender As Object, e As System.EventArgs) Handles ASPxButtonImprimir.Click
        ASPxGridViewExporterPDF.WritePdfToResponse()
    End Sub


    ''Funcion para ejecutar el procedimiento almacenado
    Protected Sub ASPxComboBox1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ASPxComboBoxTema.SelectedIndexChanged
        strconUnicap = coneccion.ConeccionUnicap()
        ConUnicap.ConnectionString = strconUnicap
        '' ConUnicap.Open()
        CargaGrid()
    End Sub

    ''Metodo Para Llenar GridView
    Private Sub CargaGrid()

        Dim dt As DataTable = New DataTable
        dt = LlenaGrid()

        ASPxGridViewTema.DataSource = dt
        ASPxGridViewTema.DataBind()



    End Sub

    ''Funcion Que Realiza Los Procedimientos Para Llenar El GridView
    Public Function LlenaGrid() As DataTable

        strconUnicap = coneccion.ConeccionUnicap()
        ConUnicap.ConnectionString = strconUnicap
        ConUnicap.Open()

        Dim dt As New DataTable()
        Dim cmd As SqlClient.SqlCommand
        Dim dr As SqlDataReader
        cmd = New SqlClient.SqlCommand("PA_Reporte_Curso_Tema", ConUnicap)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@TipoEvento", ASPxComboBoxTema.SelectedItem.Text)


        Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)
        da.Fill(dt)
        ConUnicap.Close()
        Return dt
    End Function




End Class


