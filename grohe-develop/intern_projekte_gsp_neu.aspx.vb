Imports System.Data.SqlClient

Partial Class intern_projekte_gsp_neu
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select Kunde from gsp_shops where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Strasse from gsp_shops where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select PLZ + ' ' + Ort as adresse from gsp_shops where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select MAX(JobNr) from gsp_auftraege"
            Dim commando As New SqlCommand(command, con)
            jobnummer.Text = commando.ExecuteScalar + 1

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
    End Sub

    Protected Sub zurueck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles zurueck.Click
        Response.Redirect("intern_projekte_gsp_shops.aspx")
    End Sub

    Protected Sub speichern_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles speichern.Click
        If abspeichern() = 1 Then
            Response.Redirect("intern_projekte_gsp_zuordnen.aspx")
        End If
    End Sub

    Public Function abspeichern() As Integer
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "Insert Into gsp_auftraege (Team, JobNr, GSP, Umruestung, Status, Bemerkungen, Eingangsdatum, Kunde, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, freigabe_bilder_intern,unterstuetzung_gate, top_schilder, gsp_flyer, gesamt_regalmeter) Values (0, " & jobnummer.Text & ", '" & gsp.SelectedValue & "', '" & umruestung.Text & "', '" & status.Text & "', '" & bemerkung.Text & "', '" & eingangsdatum.SelectedDate.ToString("yyyy-MM-dd") & "', " & stamm_id & ", 'nein', 'nein', 'nein', 'nein', '" & unterstuetzung.Text & "', '" & top_schilder.Text & "', '" & gsp_flyer.Text & "', '" & gesamt_regalmeter.Text & "' )"
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return zahl
    End Function
End Class
