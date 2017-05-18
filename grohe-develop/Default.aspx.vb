Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        '*** Prüfung, ob die Person in der Datenbank existiert ***

        Dim Command As String
        Dim id As Integer = 0
        Command = "SELECT id FROM promotion_login WHERE passwort = '" & passwort.Text & "' and anmeldename = '" & benutzer.Text & "' "
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(Command, con)
            id = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        

        '*** Bei fehlendem Eintrag, Fehlermeldung, ansonsten Füllen der Session ***
        If id = 0 Then
            Fehler.Visible = True
            Exit Sub
        End If
        Dim dummy As String = ""
        Command = "SELECT rolle FROM promotion_login WHERE id = " & id
        Try
            Dim commando As New SqlCommand(Command, con)
            dummy = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        If id > 0 Then
            FormsAuthentication.SetAuthCookie(id, False)
            Select Case dummy
                Case "extern"
                    Response.Redirect("deko_2017_extern_projekt_alle.aspx")
                Case "gate"
                    Response.Redirect("deko_2017_intern_projekte_alle.aspx")
                Case "kunde"
                    Response.Redirect("deko_2017_kunde_home.aspx")
                Case Else
                    FormsAuthentication.SignOut()
                    Response.Redirect("Default.aspx")
            End Select
        End If
    End Sub
End Class
