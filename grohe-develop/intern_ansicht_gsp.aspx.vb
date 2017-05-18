Imports System.Data.SqlClient

Partial Class intern_ansicht_gsp
    Inherits System.Web.UI.Page

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
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

End Class
