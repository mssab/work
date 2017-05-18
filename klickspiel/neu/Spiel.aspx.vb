
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If Request.QueryString.Keys.Count > 2 Then
            Try
                Dim spieler1 As String = Request.QueryString.Item("SP1")
                Dim spieler2 As String = Request.QueryString.Item("SP2")
                Dim punkte1 As String = Request.QueryString.Item("P1")
                Dim punkte2 As String = Request.QueryString.Item("P2")
                Dim rd As Integer = CInt(Request.QueryString.Item("runde"))
                If rd = 5 Then
                    If punkte1 < punkte2 Then
                        Response.Redirect("http://www.klick.gate-internet.de/neu/Ergebnis.aspx?Gewinner=Spieler2")
                    End If
                    If punkte1 > punkte2 Then
                        Response.Redirect("http://www.klick.gate-internet.de//neu/Ergebnis.aspx?Gewinner=Spieler1")
                    End If
                    If punkte1 = punkte2 Then
                        Response.Redirect("http://www.klick.gate-internet.de/neu/Ergebnis.aspx?Gewinner=kein_gewinner")
                    End If
                End If
            Catch ex As Exception

            End Try
        Else

        End If
        
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Start.Attributes.Add("onclick", "starter();")
        Stopp.Attributes.Add("onclick", "stopper();")
        Aufloesen.Attributes.Add("onclick", "loesen();")
        Weiter.Attributes.Add("onclick", "weiter();")
        Spieler1_Plus.Attributes.Add("onclick", "plus1();")
        Spieler2_Plus.Attributes.Add("onclick", "plus2();")


        runde.Text = "1"
        Spieler1_Punkte.Text = "0"
        Spieler2_Punkte.Text = "0"
        punkte.Text = "12"

        If Request.QueryString.Keys.Count > 2 Then
            Try
                
                Dim punkte1 As String = Request.QueryString.Item("P1")
                Dim punkte2 As String = Request.QueryString.Item("P2")
                Dim rd As Integer = CInt(Request.QueryString.Item("runde"))
                
                Spieler1_Punkte.Text = punkte1
                Spieler2_Punkte.Text = punkte2
                runde.Text = rd + 1
            Catch ex As Exception

            End Try
        Else
            beleger(16)
        End If
        Dim hintergrund As String
        Dim loesungsdummy As String
        Dim durchgang As Integer = CInt(runde.Text)
        Select Case durchgang
            Case 1
                hintergrund = "Bilder_Klick/" & Session.Item("Bild1")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung1")
            Case 2
                hintergrund = "Bilder_Klick/" & Session.Item("Bild2")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung2")
            Case 3
                hintergrund = "Bilder_Klick/" & Session.Item("Bild3")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung3")
            Case 4
                hintergrund = "Bilder_Klick/" & Session.Item("Bild4")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung4")
            Case 5
                hintergrund = "Bilder_Klick/" & Session.Item("Bild5")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung5")
            Case Else
                hintergrund = "Bilder_Klick/" & Session.Item("Bild1")
                loesungsdummy = "Bilder_Klick/" & Session.Item("Bild_loesung1")
        End Select
        suchbild.ImageUrl = hintergrund
        loesungsbild.ImageUrl = loesungsdummy
        Splitter1.ImageUrl = "Bilder_Klick/1.png"
        Splitter2.ImageUrl = "Bilder_Klick/2.png"
        Splitter3.ImageUrl = "Bilder_Klick/3.png"
        Splitter4.ImageUrl = "Bilder_Klick/4.png"
        Splitter5.ImageUrl = "Bilder_Klick/5.png"
        Splitter6.ImageUrl = "Bilder_Klick/6.png"
        Splitter7.ImageUrl = "Bilder_Klick/7.png"
        Splitter8.ImageUrl = "Bilder_Klick/8.png"
        Splitter9.ImageUrl = "Bilder_Klick/9.png"
        Splitter10.ImageUrl = "Bilder_Klick/10.png"
        Splitter11.ImageUrl = "Bilder_Klick/11.png"
        Splitter12.ImageUrl = "Bilder_Klick/12.png"
        Splitter13.ImageUrl = "Bilder_Klick/13.png"

        

    End Sub

    Public Sub beleger(ByVal bildermenge As Integer)
        Dim zufallszahl As New System.Random
        zufallszahl.Next(1, bildermenge)
        Dim i As Integer = 0

        '*** Fünf Zufallszahlen generieren, die voneinander verschieden sind ***

        Dim eins, zwei, drei, vier, fuenf As Integer
        eins = zufallszahl.Next(1, bildermenge)
        Do
            zwei = zufallszahl.Next(1, bildermenge)
        Loop Until (eins <> zwei)
        Do
            drei = zufallszahl.Next(1, bildermenge)
        Loop Until eins <> drei And zwei <> drei
        Do
            vier = zufallszahl.Next(1, bildermenge)
        Loop Until eins <> vier And zwei <> vier And drei <> vier
        Do
            fuenf = zufallszahl.Next(1, bildermenge)
        Loop Until eins <> fuenf And zwei <> fuenf And drei <> fuenf And vier <> fuenf

        Session.Add("Bild1", "Bild" & eins & ".jpg")
        Session.Add("Bild2", "Bild" & zwei & ".jpg")
        Session.Add("Bild3", "Bild" & drei & ".jpg")
        Session.Add("Bild4", "Bild" & vier & ".jpg")
        Session.Add("Bild5", "Bild" & fuenf & ".jpg")

        Session.Add("Bild_loesung1", "Bild_mit_Aufloesung" & eins & ".jpg")
        Session.Add("Bild_loesung2", "Bild_mit_Aufloesung" & zwei & ".jpg")
        Session.Add("Bild_loesung3", "Bild_mit_Aufloesung" & drei & ".jpg")
        Session.Add("Bild_loesung4", "Bild_mit_Aufloesung" & vier & ".jpg")
        Session.Add("Bild_loesung5", "Bild_mit_Aufloesung" & fuenf & ".jpg")
    End Sub

End Class
