
Partial Class Ergebnis
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim gewinner As String = Request.QueryString.Item("Gewinner")
        
        If gewinner = "kein_gewinner" Then
            textteil.Text = "Wir haben ein Unentschieden!"
        Else
            If gewinner = "Spieler1" Then
                textteil.Text = "Spieler 1 hat gewonnen!"
            End If
            If gewinner = "Spieler2" Then
                textteil.Text = "Spieler 2 hat gewonnen!"
            End If
        End If
        


    End Sub
End Class
