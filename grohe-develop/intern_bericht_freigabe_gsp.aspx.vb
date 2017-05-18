Imports System.Data.SqlClient

Partial Class intern_bericht_freigabe_spa
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select Kunde from gsp_auftraege where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Kunde from gsp_shops where id = " & zahl
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Strasse from gsp_shops where id = " & zahl
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select PLZ + ' ' + Ort as adresse from gsp_shops where id = " & zahl
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select GSP from gsp_auftraege where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        bilder_laden()
    End Sub

    Protected Sub freigabe_Click(sender As Object, e As System.EventArgs) Handles freigabe.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update gsp_auftraege set freigabe_bericht_intern = 'ja', status = 'erledigt' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("intern_aktion_gsp_offen.aspx")
    End Sub

    Protected Sub loeschen_Click(sender As Object, e As System.EventArgs) Handles loeschen.Click
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "update gsp_auftraege set freigabe_bericht_extern = 'nein' where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("intern_aktion_gsp_offen.aspx")
    End Sub

    Public Sub bilder_laden()
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Try
            If IO.File.Exists(Server.MapPath("upload/" & stamm_id & "/bericht.jpg")) Then
                bild_labeltext("bericht.jpg", Label1)

            Else
                Label1.Visible = False
            End If
        Catch ex As Exception

        End Try


    End Sub



    Public Sub bild_labeltext(ByVal bildname As String, ByVal lab As Label)
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        lab.Text = lab.Text & "<a href=""http://www.grohe.gate-internet.de/gsp/" & stamm_id & "/" & bildname & """ target=""_blank"" style=""color:#000;"">Bericht</a><br />"
    End Sub
End Class
