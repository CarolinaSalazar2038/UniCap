Imports Microsoft.VisualBasic
Imports System.Drawing

Public Class Coneccion



    Private _servidorPrincipal As String = "10.10.11.4"


    Private _Unicap As String = "Server=" & _servidorPrincipal & "; " & "Database=Ucapacitacion;  "

    Shared Property ConeccionUcapacitacion As Object
    ''Private _ControlCalidad As String = "Server=" & _servidorPrincipal & "; " & "Database=ControlCalidad;  "


    Public Function ConeccionUnicap() As String

        Return _Unicap & "user id= JGURIAS;password= jg110827;"

    End Function


    '  Public Function ConeccionCalidad() As String

    'Return _ControlCalidad & "user id= GALOPEZ;password= galopez;"

    'End Function




End Class
