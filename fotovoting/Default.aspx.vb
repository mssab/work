Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Collections.Generic
Imports System.Drawing


Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub BestaetigungsButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BestaetigungsButton.Click
        ImageUpload.Visible = False
        If analyse() = 0 Then
            If bereits_registriert() > 0 Then
                label_meldung.Text = "Sie haben doch schon teilgenommen!"
                meldung.Visible = True
                eingabebild.Visible = False
                Exit Sub
            Else
                speichern()
                ImageUpload.Visible = True
            End If
        Else
            Exit Sub
        End If
    End Sub

    Public Function format(ByVal str As String) As String
        str = str.Replace("'", "`")
        str = str.Replace("/", " ")
        Return str
    End Function

    Public Function bereits_registriert() As Integer
        Dim i As String = ""
        Dim back As Integer = 0
        Dim command As String
        command = "select registriert from dbo.dew21_teilnehmer_bilderwettbewerb where vorname = '" & vorname.Text & "' and nachname = '" & nachname.Text & "' and plz = '" & plz.Text & "' and registriert = 1"
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("testdbdew21connection").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            i = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        If i = "True" Then
            back = 1
        Else
            back = 0
        End If
        Return back
    End Function

    Public Function analyse() As Integer     '*** Prüfung, ob alle Felder richtig ausgefüllt sind ***
        Dim i As Integer = 0

        If vorname.Text = "" Then
            i = 1
            fehler_vorname.Visible = True
        Else
            fehler_vorname.Visible = False
        End If

        If nachname.Text = "" Then
            i = 1
            fehler_nachname.Visible = True
        Else
            fehler_nachname.Visible = False
        End If

        If strasse.Text = "" Then
            i = 1
            fehler_strasse.Visible = True
        Else
            fehler_strasse.Visible = False
        End If

        If plz.Text = "" Then
            i = 1
            fehler_plz.Visible = True
        Else
            fehler_plz.Visible = False
        End If

        If ort.Text = "" Then
            i = 1
            fehler_ort.Visible = True
        Else
            fehler_ort.Visible = False
        End If

        If i = 1 Then
            warnung.Visible = True
        Else
            warnung.Visible = False
        End If
        If Teilnahmebedingungen.Checked = False Then
            warnung_tn_bed.Visible = True
            i = 1
        Else
            warnung_tn_bed.Visible = False
        End If
        Return i

    End Function

    Public Sub speichern()
        Dim anrede_sql, vorname_sql, nachname_sql, email_sql, strasse_sql, plz_sql, ort_sql, bildname_sql, anmeldezeitpunkt_sql As String
        Dim registriert_sql, voting_sql, info_sql As Integer
        If anrede_herr.Checked = True Then
            anrede_sql = "Herr"
        Else
            anrede_sql = "Frau"
        End If

        vorname_sql = format(vorname.Text)
        nachname_sql = format(nachname.Text)
        email_sql = format(email.Text)
        strasse_sql = format(strasse.Text)
        plz_sql = format(plz.Text)
        ort_sql = format(ort.Text)
        bildname_sql = format("")
        voting_sql = 0
        registriert_sql = 1
        If info_ja.Checked = True Then
            info_sql = 1
        Else
            info_sql = 0
        End If
        anmeldezeitpunkt_sql = DateTime.Now.ToString("dd.MM.yyyy, HH:mm:ss")

        Dim command As String
        command = "INSERT INTO [dbo].[dew21_teilnehmer_bilderwettbewerb] ([anrede], [vorname], [nachname], [email], [strasseuhausnummer], [plz], [ort], [bildname], [voting], [registriert], [infoerwuenscht], [anmeldezeitpunkt]) values "

        Dim values As String = ""
        values = "('" & anrede_sql & "', '"
        values = values & vorname_sql & "', '"
        values = values & nachname_sql & "', '"
        values = values & email_sql & "', '"
        values = values & strasse_sql & "', '"
        values = values & plz_sql & "', '"
        values = values & ort_sql & "', '"
        values = values & bildname_sql & "', "
        values = values & voting_sql & ", "
        values = values & registriert_sql & ", "
        values = values & info_sql & ", '"
        values = values & anmeldezeitpunkt_sql & "')"

        command = command & values

        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("testdbdew21connection").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try

        con.Close()
        con.Dispose()
    End Sub

    Protected Sub ZurueckButton_Click(sender As Object, e As System.EventArgs) Handles ZurueckButton.Click
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub buttonUpload_Click(sender As Object, e As EventArgs) Handles buttonUpload.Click
        Dim i As Integer = 0
        Dim zaehler As Integer = 0
        Dim testimgsize As Integer = 0
        Dim back As Integer = 0
        Dim command, commandupdate As String

        Dim newFileName As String
        Dim theid As String

        command = "select Max(id) from dbo.dew21_teilnehmer_bilderwettbewerb where registriert = 1"
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("testdbdew21connection").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            i = commando.ExecuteScalar

        Catch ex As Exception

        End Try

        theid = CStr(i)
        newFileName = "Bild" & theid & ".jpg"

        commandupdate = "update dbo.dew21_teilnehmer_bilderwettbewerb set bildname = '" & newFileName & "' where id = " & theid
        Try
            Dim commando As New SqlCommand(commandupdate, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception
            'labelUploadStatus.Text = commandupdate.ToString()
            Exit Sub
        End Try

        zaehler = upload_check(fileUpload, labelmeldungvorher)
        If zaehler > 0 Then
            Exit Sub
        Else
            If fileUpload.HasFile Then
                testimgsize = TestImageSize(fileUpload.PostedFile.InputStream, hochformatmeldung)
                If testimgsize = 0 Then
                    Dim image As Bitmap = ResizeImage(fileUpload.PostedFile.InputStream, 480)
                    image.Save(Server.MapPath("imagefolder/") & newFileName)
                    'fileUpload.PostedFile.SaveAs(Server.MapPath("imagefolder/") & newFileName)
                    'Response.Redirect(Request.Url.AbsoluteUri)
                    labelUploadStatus.Text = "<div style=""margin-left:70px;"">Ihr Bild wurde erfolgreich hochgeladen.</div>"
                    eingabebild.Visible = False
                    ImageUpload.Visible = False
                Else
                    labelUploadStatus.Text = "Sie haben kein Bild ausgewählt."
                    labelmeldungvorher.Visible = False
                    hochformatmeldung.Visible = False
                End If

                con.Close()
                con.Dispose()
            End If
        End If
    End Sub

    Public Function upload_check(ByVal upload As FileUpload, ByVal lblmeldung As Label) As Integer
        Dim i As Integer = 0

        If upload.HasFile Then
            If upload.FileName.EndsWith(".jpg") Or upload.FileName.EndsWith(".JPG") Then
                lblmeldung.Text = ""
            Else
                lblmeldung.Text = "Es dürfen nur Bilder im Format jpg abgespeichert werden!"
                i = 1
            End If
            If upload.FileContent.Length > 2621440 Then
            lblmeldung.Text = "Es dürfen nur Bilder bis 2,5 MB abgespeichert werden!"
            i = 1
            End If
        End If
        Return i
    End Function

    Private Function ResizeImage(streamImage As Stream, maxWidth As Integer) As Bitmap
        Dim originalImage As New Bitmap(streamImage)
        Dim newWidth As Integer = originalImage.Width
        Dim newHeight As Integer = originalImage.Height
        Dim aspectRatio As Double = CDbl(originalImage.Width) / CDbl(originalImage.Height)
        If aspectRatio < 1 Then
            If originalImage.Width > maxWidth Then
                newWidth = maxWidth
                newHeight = CInt(Math.Round(newWidth / aspectRatio))
            End If
        End If
        Return New Bitmap(originalImage, newWidth, newHeight)
    End Function

    Private Function TestImageSize(streamImage As Stream, lblhfmeldung As Label) As Integer
        Dim originalImage As New Bitmap(streamImage)
        Dim width As Integer = originalImage.Width
        Dim height As Integer = originalImage.Height
        If width > height Then
            lblhfmeldung.Text = "Bitte nur Bilder im Hochformat hochladen."
            labelmeldungvorher.Visible = False
            labelUploadStatus.Visible = False
            Return 1
        Else
            Return 0
        End If
    End Function

End Class



