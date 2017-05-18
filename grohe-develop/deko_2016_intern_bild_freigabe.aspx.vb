Imports System.Data.SqlClient

Partial Class deko_2016_intern_bild_freigabe
    Inherits System.Web.UI.Page

    Protected Sub bildanzeige(ByVal bild As String, ByVal part As Image)
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/" & bild)) Then
            part.ImageUrl = "~/deko_2016_upload/" & stamm_id & "/" & bild
            Dim imageurl As String = Server.MapPath("deko_2016_upload/" & stamm_id & "/" & bild)
            Dim fullSizeImg As System.Drawing.Image = System.Drawing.Image.FromFile(imageurl)
            Dim width As Integer = fullSizeImg.Width
            If width > 480 Then
                part.Width = width / 2
            Else
                part.Width = width
            End If
        Else
            part.Visible = False
        End If
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        bildanzeige("vorher_1.jpg", vor_1)
        bildanzeige("vorher_2.jpg", vor_2)
        bildanzeige("vorher_3.jpg", vor_3)
        bildanzeige("vorher_4.jpg", vor_4)
        bildanzeige("nachher_1.jpg", nach_1)
        bildanzeige("nachher_2.jpg", nach_2)
        bildanzeige("nachher_3.jpg", nach_3)
        bildanzeige("nachher_4.jpg", nach_4)
        bildanzeige("bericht.jpg", bericht)
    End Sub
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select name from deko_2016_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from deko_2016_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as adresse from deko_2016_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select dekoration from deko_2016_Stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update deko_2016_Stammdaten set freigabe_bilder_extern = 'Nein' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("deko_2016_intern_aktion_offen.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update deko_2016_Stammdaten set freigabe_bilder_intern = 'Ja' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("deko_2016_intern_aktion_offen.aspx")
    End Sub
End Class
