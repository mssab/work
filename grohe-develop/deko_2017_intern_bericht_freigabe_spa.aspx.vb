Imports System.Data.SqlClient

Partial Class deko_2017_intern_bericht_freigabe_spa
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select name from deko_2017_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from deko_2017_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as adresse from deko_2017_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select dekoration from deko_2017_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        bilder_laden()
    End Sub

    Protected Sub freigabe_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles freigabe.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update deko_2017_stammdaten set freigabe_bericht_intern = 'Ja' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("deko_2017_intern_aktion_offen.aspx")
    End Sub

    Protected Sub loeschen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles loeschen.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update deko_2017_stammdaten set freigabe_bericht_extern = 'Nein' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        Try
            command = "delete from deko_2017_einsatzbericht_spa where stammdaten_id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try

        con.Close()
        con.Dispose()
        Response.Redirect("deko_2017_intern_aktion_offen.aspx")
    End Sub

    Public Sub bilder_laden()
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Try
            If IO.File.Exists(Server.MapPath("deko_2017_upload/" & stamm_id & "/bericht.jpg")) Then
                bild_labeltext("bericht.jpg", Label1)

            Else
                Label1.Visible = False
            End If
        Catch ex As Exception

        End Try


    End Sub



    Public Sub bild_labeltext(ByVal bildname As String, ByVal lab As Label)
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        lab.Text = lab.Text & "<a href=""http://www.grohe.gate-internet.de/deko_2017_upload/" & stamm_id & "/" & bildname & """ target=""_blank"" style=""color:#000;"">Bericht</a><br />"
    End Sub
End Class
