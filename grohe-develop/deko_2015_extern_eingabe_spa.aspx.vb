Imports System.Data.SqlClient

Partial Class deko_2015_extern_eingabe_spa
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init
        dekodatum.SelectedDate = Date.Today

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select name from deko_2015_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from deko_2015_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as adresse from deko_2015_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select dekoration from deko_2015_stammdaten where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
    End Sub

    Public Sub blende()
        If deko_ja.Checked = True Then
            auswahl2.Visible = False
            deko_erfolgt.Visible = True
            nicht_moeglich.Visible = False
            nicht_gewünscht.Visible = False
        End If
        If deko_nein.Checked = True Then
            deko_erfolgt.Visible = False
            auswahl2.Visible = True
            If keine_deko_abgabe.Checked = True Then
                auswahl2.Visible = True
                deko_erfolgt.Visible = True
                nicht_moeglich.Visible = False
                nicht_gewünscht.Visible = False
            End If
            If keine_deko_nicht_moeglich.Checked = True Then
                auswahl2.Visible = True
                deko_erfolgt.Visible = False
                nicht_moeglich.Visible = True
                nicht_gewünscht.Visible = False
            End If
            If keine_deko_nicht_gewuenscht.Checked = True Then
                auswahl2.Visible = True
                deko_erfolgt.Visible = False
                nicht_moeglich.Visible = False
                nicht_gewünscht.Visible = True
            End If

        End If
    End Sub

    Protected Sub deko_ja_CheckedChanged(sender As Object, e As System.EventArgs) Handles deko_ja.CheckedChanged
        blende()
    End Sub

    Protected Sub deko_nein_CheckedChanged(sender As Object, e As System.EventArgs) Handles deko_nein.CheckedChanged
        blende()
    End Sub

    Protected Sub keine_deko_abgabe_CheckedChanged(sender As Object, e As System.EventArgs) Handles keine_deko_abgabe.CheckedChanged
        blende()
    End Sub

    Protected Sub keine_deko_nicht_moeglich_CheckedChanged(sender As Object, e As System.EventArgs) Handles keine_deko_nicht_moeglich.CheckedChanged
        blende()
    End Sub

    Protected Sub keine_deko_nicht_gewuenscht_CheckedChanged(sender As Object, e As System.EventArgs) Handles keine_deko_nicht_gewuenscht.CheckedChanged
        blende()
    End Sub

    Protected Sub speichern_material_Click(sender As Object, e As System.EventArgs) Handles speichern_material.Click
        If analyse() = 0 Then
            speichern()
        End If

    End Sub

    Public Sub speichern()
        '*** Command-String ***
        Dim command As String = "INSERT INTO [dbo].[deko_2015_einsatzbericht_spa] ([stammdaten_id], [datum], [Banner F Digital Deluxe], [Banner F Digital  Deluxe Note], [Banner Essence], [Banner Essence Note], [Banner Grandera], [Banner Grandera Note], [Aufkleber F Digital Bluetooth], [Aufkleber F Digital Bluetooth Note], [Deko Wuerfel Essence], [Deko Wuerfel Essence Note], [Aufkleber Grohe SPA Logo], [Aufkleber Grohe SPA  Logo Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Deko Saeule SPA Logo], [Deko Saeule SPA Logo Note], [Body Lotion], [Body Lotion Note], [Handtuch 50x100], [Handtuch 50x100 Note], [Handtuch 30x50], [Handtuch 30x50 Note], [Schwamm], [Schwamm Note], [Duschgel], [Duschgel Note], [Dig Bilderrahmen], [Dig Bilderrahmen Note], [Deko Steine Hot Stones], [Deko Steine Hot Stones Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) values "

        '*** Belegung der Variablen ***
        Dim values As String = ""
        values = "(" & Request.QueryString.Item("id").ToString & ", '"
        values = values & dekodatum.SelectedDate.ToString("dd.MM.yyyy") & "', "
        values = values & banner_f_digital_deluxe.Text.ToString & ", "
        If banner_f_digital_deluxe_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & banner_f_digital_deluxe_note.Text.ToString & ", "
        End If
        values = values & banner_essence.Text.ToString & ", "
        If banner_essence_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & banner_essence_note.Text.ToString & ", "
        End If
        values = values & banner_grandera.Text.ToString & ", "
        If banner_grandera_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & banner_grandera_note.Text.ToString & ", "
        End If
        values = values & aufkleber_f_digital.Text.ToString & ", "
        If aufkleber_f_digital_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & aufkleber_f_digital_note.Text.ToString & ", "
        End If
        values = values & deko_wuerfel_essence.Text.ToString & ", "
        If deko_wuerfel_essence_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & deko_wuerfel_essence_note.Text.ToString & ", "
        End If
        values = values & grohe_spa_logo.Text.ToString & ", "
        If grohe_spa_logo_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & grohe_spa_logo_note.Text.ToString & ", "
        End If
        values = values & qr.Text.ToString & ", "
        If qr_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & qr_note.Text.ToString & ", "
        End If
        values = values & fuenfjahre_garantie.Text.ToString & ", "
        If fuenfjahre_garantie_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & fuenfjahre_garantie_note.Text.ToString & ", "
        End If
        values = values & deko_saeule_spa.Text.ToString & ", "
        If deko_saeule_spa_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & deko_saeule_spa_note.Text.ToString & ", "
        End If
        values = values & body_lotion.Text.ToString & ", "
        If body_lotion_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & body_lotion_note.Text.ToString & ", "
        End If
        values = values & handtuch_50_100.Text.ToString & ", "
        If handtuch_50_100_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & handtuch_50_100_note.Text.ToString & ", "
        End If
        values = values & handtuch_30_50.Text.ToString & ", "
        If handtuch_30_50_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & handtuch_30_50_note.Text.ToString & ", "
        End If
        values = values & schwamm.Text.ToString & ", "
        If schwamm_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & schwamm_note.Text.ToString & ", "
        End If
        values = values & duschgel.Text.ToString & ", "
        If duschgel_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & duschgel_note.Text.ToString & ", "
        End If
        values = values & bilderrahmen.Text.ToString & ", "
        If bilderrahmen_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & bilderrahmen_note.Text.ToString & ", "
        End If
        values = values & hot_stones.Text.ToString & ", "
        If hot_stones_note.Text = "" Then
            values = values & "0, "
        Else
            values = values & hot_stones_note.Text.ToString & ", "
        End If
        values = values & banner_anzahl.Text.ToString & ", '"
        values = values & stromanschluss_vorhanden.SelectedValue & "', '"
        values = values & attraktivitaet.SelectedValue & "', "
        If deko_ja.Checked Then
            values = values & "'Deko durchgeführt', "
        End If
        If deko_nein.Checked And keine_deko_abgabe.Checked Then
            values = values & "'Werbemittel abgegeben', "
        End If
        values = values & "'', '"
        values = values & bemerkung_material.Text.ToString & "', "
        If telefonische_ankuendigung.Checked = True Then
            values = values & "'ja', '"
        Else
            values = values & "'nein', '"
        End If
        values = values & Date.Now.ToString & "', '"
        values = values & "nein', 'ja', '"
        values = values & winterdeko_erhalten.SelectedValue & "', '"
        values = values & winterdeko_genutzt.SelectedValue & "', "
        If bewertung_winterdeko.Text = "" Then
            values = values & "0, '"
        Else
            values = values & bewertung_winterdeko.Text.ToString & ", '"
        End If
        values = values & "nein', 'nein')"

        '*** Zusammenführung von Command-String und Values ***
        command = command & values

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try

        '*** Prüfung, ob es sich um eine zusätzliche Anfahrt handelt und entsprechender Vermerk in der Dekoration ***
        Dim kontrolle As Integer = 0
        command = "select MAX(id) from deko_2015_vakanz where stammdaten_id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command, con)
            kontrolle = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        If kontrolle > 0 Then
            command = "update deko_2015_einsatzbericht_spa set zweitanfahrt = 'ja' where stammdaten_id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command, con)
                commando.ExecuteNonQuery()

            Catch ex As Exception

            End Try
        End If
        '*** Falls Speichern erfolgreich Vermerk in den Stammdaten ***
        If erfolg = 1 Then
            command = "update deko_2015_stammdaten set freigabe_bericht_extern = 'Ja' where id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command, con)
                erfolg = commando.ExecuteNonQuery

            Catch ex As Exception

            End Try
            con.Close()
            con.Dispose()
            Response.Redirect("deko_2015_extern_aktion_offen.aspx")
        Else
            con.Close()
            con.Dispose()
            bemerkung_material.Text = command
        End If
    End Sub

    Protected Sub keine_deko_moeglich_speichern_Click(sender As Object, e As System.EventArgs) Handles keine_deko_moeglich_speichern.Click
        Dim i As Integer = 0
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select id from deko_2015_vakanz where stammdaten_id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        If zahl > 0 Then
            If nicht_angetroffen.Checked Then
                speichern_2("nicht angetroffen")
            Else
                i = i + 1
            End If
            If betriebsferien.Checked Then
                speichern_2("Betriebsferien")
            Else
                i = i + 1
            End If
            If umzug.Checked Then
                speichern_2("Umzug")
            Else
                i = i + 1
            End If
            If umbau.Checked Then
                speichern_2("Umbau")
            Else
                i = i + 1
            End If
        Else
            If nicht_angetroffen.Checked Then
                speichern_vakanz("Nicht angetroffen", "", "")
            Else
                i = i + 1
            End If
            If betriebsferien.Checked Then
                speichern_vakanz("Betriebsferien", betriebsferien_bis.Text, "")
            Else
                i = i + 1
            End If
            If umzug.Checked Then
                speichern_vakanz("Umzug", "", umzug_neue_adresse.Text)
            Else
                i = i + 1
            End If
            If umbau.Checked Then
                speichern_vakanz("Umbau", umbau_bis.Text, "")
            Else
                i = i + 1
            End If
        End If

        If geschaeftsaufgabe.Checked Then
            speichern_2("baldige Geschäftsaufgabe")
        Else
            i = i + 1
        End If
        If nicht_existent.Checked Then
            speichern_2("nicht existent")
        Else
            i = i + 1
        End If
        If keine_schaufenster.Checked Then
            speichern_2("keine Schaufenster")
        Else
            i = i + 1
        End If
        If ablehnung_telefon.Checked Then
            speichern_2("Ablehnung bei telefonischer Anmeldung")
        Else
            i = i + 1
        End If
        If i = 8 Then
            keine_deko_fehler.Visible = True
        End If
    End Sub

    Public Sub speichern_2(ByVal grund As String)
        '*** Command-String ***
        Dim command As String = "INSERT INTO [dbo].[deko_2015_einsatzbericht_spa] ([stammdaten_id], [datum], [Banner F Digital Deluxe], [Banner F Digital  Deluxe Note], [Banner Essence], [Banner Essence Note], [Banner Grandera], [Banner Grandera Note], [Aufkleber F Digital Bluetooth], [Aufkleber F Digital Bluetooth Note], [Deko Wuerfel Essence], [Deko Wuerfel Essence Note], [Aufkleber Grohe SPA Logo], [Aufkleber Grohe SPA  Logo Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Deko Saeule SPA Logo], [Deko Saeule SPA Logo Note], [Body Lotion], [Body Lotion Note], [Handtuch 50x100], [Handtuch 50x100 Note], [Handtuch 30x50], [Handtuch 30x50 Note], [Schwamm], [Schwamm Note], [Duschgel], [Duschgel Note], [Dig Bilderrahmen], [Dig Bilderrahmen Note], [Deko Steine Hot Stones], [Deko Steine Hot Stones Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) values "

        '*** Belegung der Variablen ***
        Dim values As String = ""
        values = "(" & Request.QueryString.Item("id").ToString & ", '"
        values = values & dekodatum.SelectedDate.ToString("dd.MM.yyyy") & "', "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "'keine Angabe', "
        values = values & "'keine Angabe', "
        values = values & "'keine Dekoration möglich', "
        values = values & "'" & grund & "', '"
        values = values & keine_deko_moeglich_bemerkung.Text.ToString & "', "
        If telefonische_ankuendigung.Checked = True Then
            values = values & "'ja', '"
        Else
            values = values & "'nein', '"
        End If
        values = values & Date.Now.ToString & "', '"
        values = values & "nein', 'ja', "
        values = values & "'keine Angabe', "
        values = values & "'keine Angabe', "
        values = values & "0, "
        values = values & "'nein', 'nein')"

        '*** Zusammenführung von Command-String und Values ***
        command = command & values

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try

        '*** Prüfung, ob es sich um eine zusätzliche Anfahrt handelt und entsprechender Vermerk in der Dekoration ***
        Dim kontrolle As Integer = 0
        command = "select MAX(id) from deko_2015_vakanz where stammdaten_id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command, con)
            kontrolle = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Dim command1 As String = ""
        If kontrolle > 0 Then
            'If grund <> "Umbau" Then
            command1 = "update deko_2015_einsatzbericht_spa set zweitanfahrt = 'ja' where stammdaten_id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command1, con)
                commando.ExecuteNonQuery()

            Catch ex As Exception

            End Try
            'End If
        End If

        '*** Falls Speichern erfolgreich Vermerk in den Stammdaten ***
        If erfolg = 1 Then
            command = "update deko_2015_stammdaten set freigabe_bericht_extern = 'Ja' where id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command, con)
                erfolg = commando.ExecuteNonQuery

            Catch ex As Exception

            End Try
            Response.Redirect("deko_2015_extern_aktion_offen.aspx")
        Else
            keine_deko_moeglich_bemerkung.Text = command
        End If
    End Sub

    Public Sub speichern_3(ByVal grund As String)
        '*** Command-String ***
        Dim command As String = "INSERT INTO [dbo].[deko_2015_einsatzbericht_spa] ([stammdaten_id], [datum], [Banner F Digital Deluxe], [Banner F Digital  Deluxe Note], [Banner Essence], [Banner Essence Note], [Banner Grandera], [Banner Grandera Note], [Aufkleber F Digital Bluetooth], [Aufkleber F Digital Bluetooth Note], [Deko Wuerfel Essence], [Deko Wuerfel Essence Note], [Aufkleber Grohe SPA Logo], [Aufkleber Grohe SPA  Logo Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Deko Saeule SPA Logo], [Deko Saeule SPA Logo Note], [Body Lotion], [Body Lotion Note], [Handtuch 50x100], [Handtuch 50x100 Note], [Handtuch 30x50], [Handtuch 30x50 Note], [Schwamm], [Schwamm Note], [Duschgel], [Duschgel Note], [Dig Bilderrahmen], [Dig Bilderrahmen Note], [Deko Steine Hot Stones], [Deko Steine Hot Stones Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) values "

        '*** Belegung der Variablen ***
        Dim values As String = ""
        values = "(" & Request.QueryString.Item("id").ToString & ", '"
        values = values & dekodatum.SelectedDate.ToString("dd.MM.yyyy") & "', "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "0, "
        values = values & "'keine Angabe', "
        values = values & "'keine Angabe', "
        values = values & "'keine Dekoration gewünscht', "
        values = values & "' ', '"
        values = values & ablehnung_bemerkung.Text.ToString & "', "
        If telefonische_ankuendigung.Checked = True Then
            values = values & "'ja', '"
        Else
            values = values & "'nein', '"
        End If
        values = values & Date.Now.ToString & "', "
        If ablehnung_generell.Checked = True Then
            values = values & "'ja', "
        Else
            values = values & "'nein', "
        End If
        If ablehnung_kuenftig.Checked = True Then
            values = values & "'ja', "
        Else
            values = values & "'nein', "
        End If
        values = values & "'keine Angabe', "
        values = values & "'keine Angabe', "
        values = values & "0, "
        If ablehnung_versand.Checked = True Then
            values = values & "'ja', 'nein')"
        Else
            values = values & "'nein', 'nein')"
        End If


        '*** Zusammenführung von Command-String und Values ***
        command = command & values

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try

        '*** Prüfung, ob es sich um eine zusätzliche Anfahrt handelt und entsprechender Vermerk in der Dekoration ***
        Dim kontrolle As Integer = 0
        Dim command1 As String = ""
        command1 = "select MAX(id) from deko_2015_vakanz where stammdaten_id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command1, con)
            kontrolle = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        If kontrolle > 0 Then
            command = "update deko_2015_einsatzbericht_spa set zweitanfahrt = 'ja' where stammdaten_id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command, con)
                commando.ExecuteNonQuery()

            Catch ex As Exception

            End Try
        End If


        '*** Falls Speichern erfolgreich Vermerk in den Stammdaten ***
        If erfolg = 1 Then
            command = "update deko_2015_stammdaten set freigabe_bericht_extern = 'Ja' where id = " & Request.QueryString.Item("id")
            Try
                Dim commando As New SqlCommand(command, con)
                erfolg = commando.ExecuteNonQuery

            Catch ex As Exception

            End Try
            Response.Redirect("deko_2015_extern_aktion_offen.aspx")
        Else
            ablehnung_bemerkung.Text = command
        End If
    End Sub

    Public Sub speichern_vakanz(ByVal grund As String, ByVal dat As String, ByVal adr As String)
        '*** Command-String ***
        Dim command As String = "INSERT INTO [dbo].[deko_2015_vakanz] ([stammdaten_id], [datum], [grund], [bis], [neue_adresse], [eingang], [bemerkung], [freigabe_intern]) values "

        '*** Belegung der Variablen ***
        Dim values As String = ""
        values = "(" & Request.QueryString.Item("id").ToString & ", '"
        values = values & dekodatum.SelectedDate.ToString("dd.MM.yyyy") & "', "


        values = values & "'" & grund & "', "
        values = values & "'" & dat & "', "
        values = values & "'" & adr & "', '"


        values = values & Date.Now.ToString & "', '" & keine_deko_moeglich_bemerkung.Text & "', 'nein')"


        '*** Zusammenführung von Command-String und Values ***
        command = command & values

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        '*** Falls Speichern erfolgreich Vermerk in den Stammdaten ***
        If erfolg = 1 Then

            Response.Redirect("deko_2015_extern_vakanz_gespeichert.aspx")
        Else
            keine_deko_moeglich_bemerkung.Text = command
        End If
    End Sub

    Protected Sub ablehnng_speichern_Click(sender As Object, e As System.EventArgs) Handles ablehnng_speichern.Click
        speichern_3("")
    End Sub

    Public Function check(ByVal box As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        If IsNumeric(box.Text) = True Then
            Dim zahl As Integer = CInt(box.Text)
            If zahl < 0 Or zahl > 3 Then
                i = 1
                box.BackColor = Drawing.Color.Red
            Else
                box.BackColor = Drawing.Color.White
            End If
        Else
            i = 1
            box.BackColor = Drawing.Color.Red
        End If
        Return i
    End Function

    Public Function check_note(ByVal box As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        If IsNumeric(box.Text) = True Then
            Dim zahl As Integer = CInt(box.Text)
            If zahl < 0 Or zahl > 6 Then
                i = 1
                box.BackColor = Drawing.Color.Red
            Else
                box.BackColor = Drawing.Color.White
            End If
        ElseIf box.Text = "" Then
            i = 0
        Else
            i = 1
            box.BackColor = Drawing.Color.Red

        End If
        Return i
    End Function

    Public Function analyse() As Integer
        Dim i As Integer = 0
        i = check(banner_f_digital_deluxe, i)
        i = check_note(banner_f_digital_deluxe_note, i)
        i = check(banner_essence, i)
        i = check_note(banner_essence_note, i)
        i = check(banner_grandera, i)
        i = check_note(banner_grandera_note, i)
        i = check(aufkleber_f_digital, i)
        i = check_note(aufkleber_f_digital_note, i)
        i = check(deko_wuerfel_essence, i)
        i = check_note(deko_wuerfel_essence_note, i)
        i = check(grohe_spa_logo, i)
        i = check_note(grohe_spa_logo_note, i)
        i = check(qr, i)
        i = check_note(qr_note, i)
        i = check(fuenfjahre_garantie, i)
        i = check_note(fuenfjahre_garantie_note, i)
        i = check(deko_saeule_spa, i)
        i = check_note(deko_saeule_spa_note, i)
        i = check(body_lotion, i)
        i = check_note(body_lotion_note, i)
        i = check(handtuch_50_100, i)
        i = check_note(handtuch_50_100_note, i)
        i = check(handtuch_30_50, i)
        i = check_note(handtuch_30_50_note, i)
        i = check(schwamm, i)
        i = check_note(schwamm_note, i)
        i = check(duschgel, i)
        i = check_note(duschgel_note, i)
        i = check(bilderrahmen, i)
        i = check_note(bilderrahmen_note, i)
        i = check(hot_stones, i)
        i = check_note(hot_stones_note, i)
        i = check(banner_anzahl, i)
        i = check_note(bewertung_winterdeko, i)
        Return i
    End Function


End Class
