
Partial Class intern_auswertung_mitarbeiter
    Inherits System.Web.UI.Page
    Public Function summe(ByVal spalte As Integer) As Integer
        Dim j As Integer
        j = 0
        Dim speicher As Integer = 0
        For j = 0 To GridView1.Rows.Count - 1
            speicher = speicher + CInt(GridView1.Rows(j).Cells(spalte).Text)
        Next

        Return speicher
    End Function

    Public Function schnitt(ByVal spalte As Integer) As Decimal
        Dim wert As Decimal
        wert = summe(spalte) / summe(1)
        wert = wert * 100
        wert = Math.Round(wert, 2)
        Return wert
    End Function

    Protected Sub GridView1_DataBound(sender As Object, e As System.EventArgs) Handles GridView1.DataBound
        Dim i As Integer = 0
        Dim j As Integer = 0
        For i = 0 To GridView1.Rows.Count - 1
            For j = 1 To GridView1.HeaderRow.Controls.Count - 2
                If IsNumeric(GridView1.Rows(i).Cells(j).Text) Then

                Else
                    GridView1.Rows(i).Cells(j).Text = "0"
                End If
            Next
            Dim de As Decimal
            If CInt(GridView1.Rows(i).Cells(1).Text) > 0 Then
                de = CInt(GridView1.Rows(i).Cells(5).Text) / CInt(GridView1.Rows(i).Cells(1).Text)
                GridView1.Rows(i).Cells(6).Text = Math.Round(de, 2) * 100 & " %"
            Else
                GridView1.Rows(i).Cells(6).Text = "-- %"
            End If


        Next
        Try
            GridView1.FooterRow.Cells(0).Text = "Gesamt<br /><br />Anteil"
            GridView1.FooterRow.Cells(1).Text = summe(1) & "<br /><br /><br />"
            GridView1.FooterRow.Cells(2).Text = summe(2) & "<br /><br />" & schnitt(2) & " %"
            GridView1.FooterRow.Cells(3).Text = summe(3) & "<br /><br />" & schnitt(3) & " %"
            GridView1.FooterRow.Cells(4).Text = summe(4) & "<br /><br />" & schnitt(4) & " %"
            GridView1.FooterRow.Cells(5).Text = summe(5) & "<br /><br />" & schnitt(5) & " %"
        Catch ex As Exception

        End Try
        
        
    End Sub
End Class
