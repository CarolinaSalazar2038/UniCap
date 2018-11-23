Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.IO
Imports DevExpress.Web
Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Export
Imports System.Collections.Generic

Partial Class SeccionReporteMeses
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
            ASPxComboBoxMes.Items.Add(Fila("Mes"))
        Next
    End Sub

    ''Metodo donde se indica de donde se toma la informacion para el ComboBox
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        strconUnicap = coneccion.ConeccionUnicap()
        ConUnicap.ConnectionString = strconUnicap
        ConUnicap.Open()

        Adaptador = New SqlDataAdapter("SELECT * FROM Meses", ConUnicap)
        Tabla = New DataTable
        Adaptador.Fill(Tabla)

        Call LlenarComboBox()

        ConUnicap.Close()

    End Sub




    ''Funcion Del Boton Para Que Imprima El GridView (Tabla) En Un Formato PDF
    Protected Sub ASPxButton1_Click(sender As Object, e As System.EventArgs) Handles ASPxButtonImprimir.Click
        ASPxGridViewExporterPDF.WritePdfToResponse()
    End Sub
End Class
