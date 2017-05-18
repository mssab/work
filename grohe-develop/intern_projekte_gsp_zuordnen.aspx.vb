Imports System.Data.SqlClient

Partial Class intern_projekte_gsp_zuordnen
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        
    End Sub

    Protected Sub zurueck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles zurueck.Click
        Response.Redirect("intern_projekte_gsp_shops.aspx")
    End Sub

    Protected Sub speichern_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles speichern.Click
        If team.SelectedIndex > 0 Then
            If speicherung() > 0 Then
                email_versand()
                Response.Redirect("intern_projekte_gsp_alle.aspx")
            End If
        Else
            team.BackColor = Drawing.Color.Red
        End If
        
    End Sub

    Public Function speicherung() As Integer
        Dim j As Integer = 0
        Dim i As Integer
        Dim checker As CheckBox
        For i = 0 To GridView1.Rows.Count - 1
            checker = GridView1.Rows(i).Cells(0).FindControl("CheckBox1")
            If checker.Checked = True Then
                j = j + abspeichern(CInt(GridView1.Rows(i).Cells(9).Text))
            End If
        Next
        Return j
    End Function

    Public Function abspeichern(ByVal ind As Integer) As Integer
        Dim command As String

        Dim stamm_id As String = ""
        
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "Update gsp_auftraege set Team = " & team.SelectedValue & ", angenommen = 'nein', abgerechnet = 'nein', anfragedatum = '" & Date.Today.Year & "-" & Date.Today.Month & "-" & Date.Today.Day & "' where id = " & ind
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return zahl
    End Function

    Public Sub email_versand()
        Dim vorname, email, anmeldename, passwort As String
        vorname = ""
        email = ""
        anmeldename = ""
        passwort = ""
        Dim command As String
        Dim stamm_id As String = ""
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select vorname from promotion_login where id = " & team.SelectedValue
            Dim commando As New SqlCommand(command, con)
            vorname = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select email from promotion_login where id = " & team.SelectedValue
            Dim commando As New SqlCommand(command, con)
            email = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select anmeldename from promotion_login where id = " & team.SelectedValue
            Dim commando As New SqlCommand(command, con)
            anmeldename = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select passwort from promotion_login where id = " & team.SelectedValue
            Dim commando As New SqlCommand(command, con)
            passwort = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = "<body style=""font-family:Verdana; font-size:10pt;""><table style=""width:600px; font-family:Verdana; font-size:10pt;""><tr><td>"
        Dim mailsub As String
        mailsub = "Neue Anfrage bei Grohe Service Point"
        text = text & "<p style=""width:590px;"">Hallo " & vorname & ",</p>"
        text = text & "<p style=""width:590px;"">Du hast im Rahmen des Grohe Service Point neue Anfragen für eine Dekoration erhalten. Schaue im Portal <a href=""http://www.grohe.gate-internet.de/"" target=""_blank"">www.grohe.gate-internet.de</a> im Bereich Grohe Service Point unter ""Meine Anfragen"" nach und melde dort, ob Du die Aufträge an nimmst.</p>"
        text = text & "<p style=""width:590px;"">Deine Zugangsdaten lauten:</p>"
        text = text & "<table style=""font-family:Arial; font-size:10pt;""><tr>"
        text = text & "<td>Anmeldename:</td><td>" & anmeldename & "</td></tr><tr>"
        text = text & "<td>Passwort:</td><td>" & passwort & "</td></tr>"
        text = text & "</table>"
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
