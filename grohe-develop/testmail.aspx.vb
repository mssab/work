Imports System.Data.SqlClient

Partial Class anmeldung
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        sende_bestaetigung()
    End Sub

    Protected Sub sende_bestaetigung()
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String
        text = ""
        text = "<body style=""font-family:Arial; font-size:10pt;""><table style=""font-family:Arial; font-size:10pt; width:600px;""><tr><td>"
        text = text & "<p>Wenn Sie diese E-Mail erhalten, funktioniert der SMTP.</p>"
        

        Dim mailsub As String
        mailsub = "Testversand gate-internet.de"

        
        text = text & "<p style=""width:600px;""></p><br /></td></tr></table></body>"

        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("postausgang@gate-internet.de", "gate-internet.de")
            da = New Net.Mail.MailAddress("dirk.ridder@gate.de")
            Dim message As New Net.Mail.MailMessage(de, da)
            message.Body = text
            message.Subject = mailsub
            message.IsBodyHtml = True
            'message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("carina.heine@gate.de")
            instance.Send(message)
        Catch ex As Exception

        End Try
        
    End Sub

    

    
End Class
