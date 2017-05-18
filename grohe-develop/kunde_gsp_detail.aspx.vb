﻿Imports System.Data.SqlClient

Partial Class kunde_schaufenster_detail
    Inherits System.Web.UI.Page

    Protected Sub nav_back_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles nav_back.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i - 1
        Response.Redirect("kunde_gsp_detail.aspx?id=" & i)
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As System.EventArgs) Handles LinkButton2.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i - 1
        Response.Redirect("kunde_gsp_detail.aspx?id=" & i)
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i + 1
        Response.Redirect("kunde_gsp_detail.aspx?id=" & i)
    End Sub

    Protected Sub nav_fwd_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles nav_fwd.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i + 1
        Response.Redirect("kunde_gsp_detail.aspx?id=" & i)
    End Sub

    Protected Sub nav_search_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles nav_search.Click
        Response.Redirect("kunde_gsp.aspx")
    End Sub

    Protected Sub LinkButton3_Click(sender As Object, e As System.EventArgs) Handles LinkButton3.Click
        Response.Redirect("kunde_gsp.aspx")
    End Sub

    Protected Sub nav_back_PreRender(sender As Object, e As System.EventArgs) Handles nav_back.PreRender
        If Request.QueryString.Item("id") = 1 Then
            nav_back.Visible = False
            LinkButton2.Visible = False
        End If
    End Sub

    Protected Sub nav_fwd_PreRender(sender As Object, e As System.EventArgs) Handles nav_fwd.PreRender
        Dim command As String
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select max(id) from gsp_auftraege"
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        If Request.QueryString.Item("id") = zahl Then
            nav_fwd.Visible = False
            LinkButton1.Visible = False
        End If
    End Sub

    
    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As Integer = Request.QueryString.Item("id")
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select max(id) from gsp_auftraege"
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Dim int_dummy As Integer = 0
        stand.Text = "ID &nbsp;&nbsp; " & Request.QueryString.Item("id") & "/" & zahl
        Try
            command = "select Kunde from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            int_dummy = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Kunde from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            shop.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select CRM from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            nummer.Text = "CRM-Nummer:&nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Strasse from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            adresse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select PLZ + ' ' + Ort as ort from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            adresse.Text = adresse.Text & "<br />" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Telefon from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            telefon.Text = "Telefon:&nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Dim dummy As String = ""
        Try
            command = "select GSP from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        dekoart.Text = "Dekoration: &nbsp;" & dummy
        Try
            command = "select GLH from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            GHL.Text = "GLH: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select GVL from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            GVL.Text = "GVL: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Regalmeter from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            regalmeter.Text = "Regalmeter: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Regallaenge from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            regallaenge.Text = "Regallänge: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Fertigstelldatum from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            fertigstelldatum.Text = "Fertigstelldatum: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Eingangsdatum from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            Eingangsdatum.Text = "Eingangsdatum: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Status from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            status.Text = "Status: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Ansprechpartner from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            lagerleiter.Text = "Lagerleiter: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Mail from gsp_shops where id =" & int_dummy
            Dim commando As New SqlCommand(command, con)
            email.Text = "E-Mail: &nbsp; <a style=""color:#484848;"" href=""mailto:" & commando.ExecuteScalar & """>" & commando.ExecuteScalar & "</a>"

        Catch ex As Exception

        End Try
        Try
            command = "select Bemerkungen from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            bemerkung.Text = commando.ExecuteScalar
            If bemerkung.Text.Length < 1 Then
                bemerkung.Text = "Keine Bemerkung vorhanden."
            End If
        Catch ex As Exception

        End Try
        'bilder_laden()
        Dim dummy_bilder As String = ""
        Dim dummy_bericht As String = ""
        Try
            command = "select freigabe_bilder_intern from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy_bilder = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select freigabe_bericht_intern from gsp_auftraege where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy_bericht = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        If dummy_bericht = "nein" Or dummy_bilder = "nein" Then
            bilder_vorhanden.Visible = False
            bilder_nicht_vorhanden.Visible = True
            ergebnis.Text = "Dieser Shop wurde noch nicht dekoriert."
        Else

            bilder_laden()
        End If
        con.Close()
        con.Dispose()
    End Sub

    Public Sub bilder_laden()
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim zaehler As Integer = 0
        If stamm_id < 110 Then
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher/tourenplan2012_001.jpg")) Then
                bild_labeltext("vorher/tourenplan2012_001.jpg", vorher_1)
                zaehler = zaehler + 1
            Else
                vorher_1.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher/tourenplan2012_002.jpg")) Then
                bild_labeltext("vorher/tourenplan2012_002.jpg", vorher_2)
                zaehler = zaehler + 1
            Else
                vorher_2.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher/tourenplan2012_003.jpg")) Then
                bild_labeltext("vorher/tourenplan2012_003.jpg", vorher_3)
                zaehler = zaehler + 1
            Else
                vorher_3.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher/tourenplan2012_004.jpg")) Then
                bild_labeltext("vorher/tourenplan2012_004.jpg", vorher_4)
                zaehler = zaehler + 1
            Else
                vorher_4.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher/tourenplan2012_005.jpg")) Then
                bild_labeltext("vorher/tourenplan2012_005.jpg", vorher_5)
                zaehler = zaehler + 1
            Else
                vorher_5.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher/tourenplan2012_001.jpg")) Then
                bild_labeltext("nachher/tourenplan2012_001.jpg", nachher_1)
                zaehler = zaehler + 1
            Else
                nachher_1.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher/tourenplan2012_002.jpg")) Then
                bild_labeltext("nachher/tourenplan2012_002.jpg", nachher_2)
                zaehler = zaehler + 1
            Else
                nachher_2.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher/tourenplan2012_003.jpg")) Then
                bild_labeltext("nachher/tourenplan2012_003.jpg", nachher_3)
                zaehler = zaehler + 1
            Else
                nachher_3.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher/tourenplan2012_004.jpg")) Then
                bild_labeltext("nachher/tourenplan2012_004.jpg", nachher_4)
                zaehler = zaehler + 1
            Else
                nachher_4.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher/tourenplan2012_005.jpg")) Then
                bild_labeltext("nachher/tourenplan2012_005.jpg", nachher_5)
                zaehler = zaehler + 1
            Else
                nachher_5.Visible = False
            End If

            'Berichtsbild anzeigen
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/bericht.jpg")) Then
                bild_labeltext("bericht.jpg", bericht)
                zaehler = zaehler + 1
            Else

            End If

            If zaehler = 0 Then
                bilder_nicht_vorhanden.Visible = True
                bilder_vorhanden.Visible = False
            Else
                bilder_nicht_vorhanden.Visible = False
                bilder_vorhanden.Visible = True
            End If
        Else
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher_1.jpg")) Then
                bild_labeltext("vorher_1.jpg", vorher_1)
                zaehler = zaehler + 1
            Else
                vorher_1.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher_2.jpg")) Then
                bild_labeltext("vorher_2.jpg", vorher_2)
                zaehler = zaehler + 1
            Else
                vorher_2.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher_3.jpg")) Then
                bild_labeltext("vorher_3.jpg", vorher_3)
                zaehler = zaehler + 1
            Else
                vorher_3.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher_4.jpg")) Then
                bild_labeltext("vorher_4.jpg", vorher_4)
                zaehler = zaehler + 1
            Else
                vorher_4.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/vorher_5.jpg")) Then
                bild_labeltext("vorher_5.jpg", vorher_5)
                zaehler = zaehler + 1
            Else
                vorher_5.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher_1.jpg")) Then
                bild_labeltext("nachher_1.jpg", nachher_1)
                zaehler = zaehler + 1
            Else
                nachher_1.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher_2.jpg")) Then
                bild_labeltext("nachher_2.jpg", nachher_2)
                zaehler = zaehler + 1
            Else
                nachher_2.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher_3.jpg")) Then
                bild_labeltext("nachher_3.jpg", nachher_3)
                zaehler = zaehler + 1
            Else
                nachher_3.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher_4.jpg")) Then
                bild_labeltext("nachher_4.jpg", nachher_4)
                zaehler = zaehler + 1
            Else
                nachher_4.Visible = False
            End If
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/nachher_5.jpg")) Then
                bild_labeltext("nachher_5.jpg", nachher_5)
                zaehler = zaehler + 1
            Else
                nachher_5.Visible = False
            End If

            'Berichtsbild anzeigen
            If IO.File.Exists(Server.MapPath("gsp/" & stamm_id & "/bericht.jpg")) Then
                bild_labeltext("bericht.jpg", bericht)
                zaehler = zaehler + 1
            Else

            End If

            If zaehler = 0 Then
                bilder_nicht_vorhanden.Visible = True
                bilder_vorhanden.Visible = False
            Else
                bilder_nicht_vorhanden.Visible = False
                bilder_vorhanden.Visible = True
            End If
        End If
        
    End Sub

    

    Public Sub bild_labeltext(ByVal bildname As String, ByVal lab As Label)
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        lab.Text = "<a href=""http://www.grohe.gate-internet.de/gsp/" & stamm_id & "/" & bildname & """ target=""_blank"" id=""example1""><img src=""http://www.grohe.gate-internet.de/gsp/" & stamm_id & "/" & bildname & """ alt="""" width=""320px"" class=""imgshadow"" /></a>"
        lab.Text = lab.Text & "<br /><br />"
        lab.Text = lab.Text & "<img src=""img/zoomin.gif"" width=""16"" height=""16"" alt="""" />&nbsp;&nbsp;<a href=""http://www.grohe.gate-internet.de/gsp/" & stamm_id & "/" & bildname & """ id=""example1"" style=""color:#000;"">vergrößern</a><br /><br />"
    End Sub

    Public Sub check_bericht(ByVal deko As String, ByVal stamm_id As Integer)
        Dim aktion As String = ""
        Dim aktion_bemerkung As String = ""
        Dim datum As String = ""
        Dim generell As String = ""
        Dim versand As String = ""
        Dim command As String = ""

        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        
        If deko = "Standard Deko" Then
            Try
                command = "select aktivitaet from einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select aktivitaet_bemerkung from einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion_bemerkung = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select datum from einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                datum = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select keine_deko_generell from einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                generell = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select versand_gewuenscht from einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                versand = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            If aktion = "Deko durchgeführt" Then
                ergebnis.Text = "Dekodatum:&nbsp;" & datum
            End If
            If aktion = "Werbemittel abgegeben" Then
                ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Werbematerial abgegeben.<br /><br />Der Shop dekoriert auf eigenen Wunsch selbst."
            End If
            If aktion = "keine Dekoaration möglich" Then
                
                Select Case aktion_bemerkung
                    Case "baldige Geschäftsaufgabe"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: baldige Geschäftsaufgabe."
                    Case "nicht existent"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: Shop nicht existent."
                    Case "keine Schaufenster"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: keine Schaufenster"
                    Case "Ablehnung bei telefonischer Anmeldung"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Ablehnung bei telefonischer Anmeldung."
                    Case "nicht angetroffen"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Nicht angetroffen."
                    Case "Betriebsferien"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Betriebsferien"
                    Case "Umzug"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Umzug"
                    Case "Umbau"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Umbau"
                End Select
                   
            End If
            If aktion = "keine Dekoaration gewünscht" Then
                If generell = "ja" Then
                    ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: <br />Händler wünscht generell keine Deko mehr."
                Else
                    If versand = "ja" Then
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: <br />Händler wünscht Zusendung der Deko."
                    End If
                End If
            End If
        End If
        If deko = "SPA Deko" Then
            Try
                command = "select aktivitaet from einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select aktivitaet_bemerkung from einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion_bemerkung = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select datum from einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                datum = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select keine_deko_generell from einsatzbericht_spawhere stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                generell = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select versand_gewuenscht from einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                versand = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            If aktion = "Deko durchgeführt" Then
                ergebnis.Text = "Dekodatum:&nbsp;" & datum
            End If
            If aktion = "Werbemittel abgegeben" Then
                ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Der Shop dekoriert auf eigenen Wunsch selbst."
            End If
            If aktion = "keine Dekoaration möglich" Then

                Select Case aktion_bemerkung
                    Case "baldige Geschäftsaufgabe"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: baldige Geschäftsaufgabe."
                    Case "nicht existent"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: Shop nicht existent."
                    Case "keine Schaufenster"
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: keine Schaufenster"
                    Case "Ablehnung bei telefonischer Anmeldung"
                        ergebnis.Text = "Kein Besuch des Shops erfolgt<br /><br />Grund: <br />Ablehnung bei telefonischer Anmeldung."
                End Select

            End If
            If aktion = "keine Dekoaration gewünscht" Then
                If generell = "ja" Then
                    ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: <br />Händler wünscht generell keine Deko mehr."
                Else
                    If versand = "ja" Then
                        ergebnis.Text = "Besuchsdatum:&nbsp;" & datum & "<br /><br />Dekoration nicht möglich.<br /><br />Grund: <br />Händler wünscht Zusendung der Deko."
                    End If
                End If
            End If
        End If
    End Sub
End Class
