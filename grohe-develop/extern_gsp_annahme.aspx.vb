Imports System.Data.SqlClient

Partial Class extern_gsp_annahme
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        '*** Command-String ***
        Dim command As String = ""

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()


        command = "update gsp_auftraege set angenommen = 'ja' where id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("extern_projekt_gsp_anfragen.aspx")
    End Sub
End Class
