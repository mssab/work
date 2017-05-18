Imports System.Data.SqlClient
Imports System.Collections
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.IO

Partial Class deko_2017_extern_bilder_upload
    Inherits System.Web.UI.Page

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select name from deko_2017_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from deko_2017_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as adresse from deko_2017_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select dekoration from deko_2017_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub upload(ByVal upload As FileUpload, ByVal id As String, ByVal name As String)
        Dim filePath As String
        If upload.HasFile = False Then
            ' No file uploaded!
            'UploadDetails.Text = "Haben sie noch ein Bild für uns?"
        Else
            If upload.FileContent.Length > 1048576 Then
                filePath = Server.MapPath("deko_2017_upload/" & id & "/" & name)
                Dim inputStr As Stream = upload.PostedFile.InputStream
                'Based on scalefactor image size will vary
                GenerateThumbnails(1.0, inputStr, filePath)
            Else
                ' Display the uploaded file's details
                'UploadDetails.Text = "@""Uploaded file: {0}<br /> File size (in bytes): {1:N0}<br />Content-type: {2}"
                ' Save the file
                filePath = Server.MapPath("deko_2017_upload/" & id & "/" & name)
                upload.SaveAs(filePath)
            End If
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim zaehler As Integer = 0
        zaehler = zaehler + upload_check(FileUpload1, meldung_vorher_1)
        zaehler = zaehler + upload_check(FileUpload2, meldung_vorher_2)
        zaehler = zaehler + upload_check(FileUpload3, meldung_vorher_3)
        zaehler = zaehler + upload_check(FileUpload4, meldung_vorher_4)

        zaehler = zaehler + upload_check(FileUpload5, meldung_nachher_1)
        zaehler = zaehler + upload_check(FileUpload6, meldung_nachher_2)
        zaehler = zaehler + upload_check(FileUpload7, meldung_nachher_3)
        zaehler = zaehler + upload_check(FileUpload8, meldung_nachher_4)
        zaehler = zaehler + upload_check(FileUpload9, meldung_bericht)
        If zaehler > 0 Then
            Exit Sub
        Else
            hochladen()
            Dim Command As String
            Dim id As Integer = 0
            Command = "Update deko_2017_stammdaten set freigabe_bilder_extern = 'Ja' where id = " & Request.QueryString.Item("id").ToString
            Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
            con.Open()
            Try
                Dim commando As New SqlCommand(Command, con)
                id = commando.ExecuteNonQuery()
            Catch ex As Exception

            End Try
            con.Close()
            con.Dispose()
            If id = 1 Then
                Response.Redirect("deko_2017_extern_aktion_offen.aspx")
            End If
        End If
    End Sub

    Public Function upload_check(ByVal upload As FileUpload, ByVal meldung As Label) As Integer
        Dim i As Integer = 0
        If upload.HasFile Then
            If upload.FileName.EndsWith(".jpg") Or upload.FileName.EndsWith(".JPG") Then
                meldung.Text = ""
            Else
                meldung.Text = "Es dürfen nur Bilder im Format jpg abgespeichert werden!"
                i = 1
            End If
            'If upload.FileContent.Length > 409600 Then
            '    meldung.Text = "Es dürfen nur Bilder bis 400 KB abgespeichert werden!"
            '    i = 1
            'End If
        End If
        Return i
    End Function

    Public Sub hochladen()
        IO.Directory.CreateDirectory(MapPath("deko_2017_upload/" & Request.QueryString.Item("id").ToString))
        If FileUpload1.HasFile Then
            upload(FileUpload1, Request.QueryString.Item("id").ToString, "vorher_1.jpg")
        End If
        If FileUpload2.HasFile Then
            upload(FileUpload2, Request.QueryString.Item("id").ToString, "vorher_2.jpg")
        End If
        If FileUpload3.HasFile Then
            upload(FileUpload3, Request.QueryString.Item("id").ToString, "vorher_3.jpg")
        End If
        If FileUpload4.HasFile Then
            upload(FileUpload4, Request.QueryString.Item("id").ToString, "vorher_4.jpg")
        End If
        If FileUpload5.HasFile Then
            upload(FileUpload5, Request.QueryString.Item("id").ToString, "nachher_1.jpg")
        End If
        If FileUpload6.HasFile Then
            upload(FileUpload6, Request.QueryString.Item("id").ToString, "nachher_2.jpg")
        End If
        If FileUpload7.HasFile Then
            upload(FileUpload7, Request.QueryString.Item("id").ToString, "nachher_3.jpg")
        End If
        If FileUpload8.HasFile Then
            upload(FileUpload8, Request.QueryString.Item("id").ToString, "nachher_4.jpg")
        End If
        If FileUpload9.HasFile Then
            upload(FileUpload9, Request.QueryString.Item("id").ToString, "bericht.jpg")
        End If
    End Sub

    Private Sub GenerateThumbnails(ByVal scaleFactor As Double, ByVal sourcePath As Stream, ByVal targetPath As String)
        Using image As Image = Image.FromStream(sourcePath)
            Dim newWidth As Integer = CInt(image.Width * scaleFactor)
            Dim newHeight As Integer = CInt(image.Height * scaleFactor)
            Dim thumbnailImg As Bitmap = New Bitmap(newWidth, newHeight)
            Dim thumbGraph As Graphics = Graphics.FromImage(thumbnailImg)
            thumbGraph.CompositingQuality = CompositingQuality.HighQuality
            thumbGraph.SmoothingMode = SmoothingMode.HighQuality
            thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic
            Dim imageRectangle As Rectangle = New Rectangle(0, 0, newWidth, newHeight)
            thumbGraph.DrawImage(image, imageRectangle)
            thumbnailImg.Save(targetPath, image.RawFormat)
        End Using
    End Sub
End Class
