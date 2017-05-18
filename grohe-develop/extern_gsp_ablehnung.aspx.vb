Imports System.Data.SqlClient

Partial Class extern_gsp_ablehnung
    Inherits System.Web.UI.Page
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        '*** Command-String ***
        Dim command As String = ""

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()


        command = "update gsp_auftraege set Team = 0 where id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        abgelehnt_email()
        Response.Redirect("extern_projekt_gsp_anfragen.aspx")
    End Sub

    Public Sub abgelehnt_email()
        Dim vorname, Eingangsdatum, anmeldename, JobNr As String
        vorname = ""
        Eingangsdatum = ""
        anmeldename = ""
        JobNr = ""
        Dim command As String
        Dim stamm_id As String = ""
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select anmeldename from promotion_login where id = " & User.Identity.Name
            Dim commando As New SqlCommand(command, con)
            anmeldename = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select JobNr from gsp_auftraege where id = " & Request.QueryString.Item("id")
            Dim commando As New SqlCommand(command, con)
            JobNr = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Eingangsdatum from gsp_auftraege where id = " & Request.QueryString.Item("id")
            Dim commando As New SqlCommand(command, con)
            Eingangsdatum = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = "<body style=""font-family:Verdana; font-size:10pt;""><table style=""width:600px; font-family:Verdana; font-size:10pt;""><tr><td>"
        Dim mailsub As String
        mailsub = "Grohe Service Point - Anfrage von Dekorateur abgelehnt"
        text = text & "<p style=""width:590px;"">" & anmeldename & " hat folgenden Job abgelehnt:</p>"
        
        text = text & "<table style=""font-family:Arial; font-size:10pt;""><tr>"
        text = text & "<td>Job-Nummer:</td><td>" & JobNr & "</td></tr><tr>"
        text = text & "<td>Eingangsdatum:</td><td>" & Eingangsdatum & "</td></tr>"
        text = text & "</table>"
        text = text & "<p>Dieser Job steht nun wieder zur Zuweisung an einen Dekorateur bereit.</p>"
        text = text & "<p>Mit freundlichen Grüßen<br />das Grohe Service Portal Informationssystem</p>"
        text = text & "</td></tr></table></body>"
        Try
            Dim message As New Net.Mail.MailMessage("grohe-autraege@gate.de", "dirk.ridder@gate.de", mailsub, text)
            message.IsBodyHtml = True
            message.Priority = Net.Mail.MailPriority.High
            message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("rudi.kotschwar@gate.de")
            'message.Bcc.Add("jens.roemer@gate.de")
            'message.Bcc.Add("carina.heine@gate.de")
            instance.Send(message)

        Catch ex As Exception

        End Try
    End Sub
End Class
