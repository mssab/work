Imports System.Data.SqlClient

Partial Class kunde_schaufenster_detail
    Inherits System.Web.UI.Page

    Protected Sub nav_back_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles nav_back.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i - 1
        Response.Redirect("deko_2016_kunde_schaufenster_detail.aspx?id=" & i)
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i - 1
        Response.Redirect("deko_2016_kunde_schaufenster_detail.aspx?id=" & i)
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i + 1
        Response.Redirect("deko_2016_kunde_schaufenster_detail.aspx?id=" & i)
    End Sub

    Protected Sub nav_fwd_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles nav_fwd.Click
        Dim i As Integer = CInt(Request.QueryString.Item("id"))
        i = i + 1
        Response.Redirect("deko_2016_kunde_schaufenster_detail.aspx?id=" & i)
    End Sub

    Protected Sub nav_search_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles nav_search.Click
        Response.Redirect("deko_2016_kunde_schaufenster_liste.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Response.Redirect("deko_2016_kunde_schaufenster_liste.aspx")
    End Sub

    Protected Sub nav_back_PreRender(sender As Object, e As System.EventArgs) Handles nav_back.PreRender
        If Request.QueryString.Item("id") = 300 Then
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
            command = "select max(id) from deko_2016_stammdaten"
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
            command = "select count(id) from deko_2016_stammdaten"
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        stand.Text = "GP-ID &nbsp;&nbsp; " & CInt(Request.QueryString.Item("id")) & "/" & zahl
        Try
            command = "select name from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            shop.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select name2 from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            shop.Text = shop.Text & "<br /><br />" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select GP_ID from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            nummer.Text = "GP-ID:&nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            adresse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as ort from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            adresse.Text = adresse.Text & "<br />" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select telefon from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            telefon.Text = "Telefon:&nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Dim dummy As String = ""
        Try
            command = "select dekoration from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        dekoart.Text = "Dekoration: &nbsp;" & dummy
        Try
            command = "select glh from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            GHL.Text = "GLH: &nbsp;" & commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Dim dummy_bilder As String = ""
        Dim dummy_bericht As String = ""
        Try
            command = "select freigabe_bilder_intern from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy_bilder = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select freigabe_bericht_intern from deko_2016_stammdaten where id =" & stamm_id
            Dim commando As New SqlCommand(command, con)
            dummy_bericht = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        If dummy_bericht = "Nein" Or dummy_bilder = "Nein" Then
            bilder_vorhanden.Visible = False
            bilder_nicht_vorhanden.Visible = True
            ergebnis.Text = "Dieser Shop wurde noch nicht dekoriert."
        Else
            check_bericht(dummy, stamm_id)
            bilder_laden()
        End If
        con.Close()
        con.Dispose()
    End Sub

    Public Sub bilder_laden()
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim zaehler As Integer = 0
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/vorher_1.jpg")) Then
            bild_labeltext("vorher_1.jpg", vorher_1)
            zaehler = zaehler + 1
        Else
            vorher_1.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/vorher_2.jpg")) Then
            bild_labeltext("vorher_2.jpg", vorher_2)
            zaehler = zaehler + 1
        Else
            vorher_2.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/vorher_3.jpg")) Then
            bild_labeltext("vorher_3.jpg", vorher_3)
            zaehler = zaehler + 1
        Else
            vorher_3.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/vorher_4.jpg")) Then
            bild_labeltext("vorher_4.jpg", vorher_4)
            zaehler = zaehler + 1
        Else
            vorher_4.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/nachher_1.jpg")) Then
            bild_labeltext("nachher_1.jpg", nachher_1)
            zaehler = zaehler + 1
        Else
            nachher_1.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/nachher_2.jpg")) Then
            bild_labeltext("nachher_2.jpg", nachher_2)
            zaehler = zaehler + 1
        Else
            nachher_2.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/nachher_3.jpg")) Then
            bild_labeltext("nachher_3.jpg", nachher_3)
            zaehler = zaehler + 1
        Else
            nachher_3.Visible = False
        End If
        If IO.File.Exists(Server.MapPath("deko_2016_upload/" & stamm_id & "/nachher_4.jpg")) Then
            bild_labeltext("nachher_4.jpg", nachher_4)
            zaehler = zaehler + 1
        Else
            nachher_4.Visible = False
        End If
        If zaehler = 0 Then
            bilder_nicht_vorhanden.Visible = True
            bilder_vorhanden.Visible = False
        Else
            bilder_nicht_vorhanden.Visible = False
            bilder_vorhanden.Visible = True
        End If
    End Sub



    Public Sub bild_labeltext(ByVal bildname As String, ByVal lab As Label)
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        lab.Text = "<a href=""http://www.grohe.gate-internet.de/deko_2016_upload/" & stamm_id & "/" & bildname & """ target=""_blank"" id=""example1""><img src=""http://www.grohe.gate-internet.de/deko_2016_upload/" & stamm_id & "/" & bildname & """ alt="""" width=""320px"" class=""imgshadow"" /></a>"
        lab.Text = lab.Text & "<br /><br />"
        lab.Text = lab.Text & "<img src=""img/zoomin.gif"" width=""16"" height=""16"" alt="""" />&nbsp;&nbsp;<a href=""http://www.grohe.gate-internet.de/deko_2016_upload/" & stamm_id & "/" & bildname & """ id=""example1"" style=""color:#000;"">vergrößern</a><br /><br />"
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
                command = "select aktivitaet from deko_2016_einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select aktivitaet_bemerkung from deko_2016_einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion_bemerkung = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select datum from deko_2016_einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                datum = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select keine_deko_generell from deko_2016_einsatzbericht_enjoy where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                generell = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select versand_gewuenscht from deko_2016_einsatzbericht_enjoy where stammdaten_id = " & stamm_id
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
                command = "select aktivitaet from deko_2016_einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select aktivitaet_bemerkung from deko_2016_einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                aktion_bemerkung = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select datum from deko_2016_einsatzbericht_spa where stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                datum = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select keine_deko_generell from deko_2016_einsatzbericht_spawhere stammdaten_id = " & stamm_id
                Dim commando As New SqlCommand(command, con)
                generell = commando.ExecuteScalar

            Catch ex As Exception

            End Try
            Try
                command = "select versand_gewuenscht from deko_2016_einsatzbericht_spa where stammdaten_id = " & stamm_id
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
