Imports System.Data.SqlClient

Partial Class intern_auswertung_dekorationen
    Inherits System.Web.UI.Page

    Protected Sub GridView1_DataBound(sender As Object, e As System.EventArgs) Handles GridView1.DataBound

        Try
            GridView1.FooterRow.Cells(0).Text = "Gesamt<br /><br />Anteil"
            GridView1.FooterRow.Cells(1).Text = summe(1) & "<br /><br /><br />"
            GridView1.FooterRow.Cells(2).Text = summe(2) & "<br /><br /><br />"
            GridView1.FooterRow.Cells(3).Text = summe(3) & "<br /><br /><br />"
            GridView1.FooterRow.Cells(4).Text = summe(4) & "<br /><br />" & schnitt(4) & " %"
            GridView1.FooterRow.Cells(5).Text = summe(5) & "<br /><br />" & schnitt(5) & " %"
            GridView1.FooterRow.Cells(6).Text = summe(6) & "<br /><br />" & schnitt(6) & " %"
            GridView1.FooterRow.Cells(7).Text = summe(7) & "<br /><br />" & schnitt(7) & " %"
            GridView1.FooterRow.Cells(8).Text = summe(8) & "<br /><br />" & schnitt(8) & " %"
            GridView1.FooterRow.Cells(9).Text = summe(9) & "<br /><br />" & schnitt(9) & " %"
        Catch ex As Exception

        End Try
       
    End Sub

    Public Function summe(ByVal spalte As Integer) As Integer
        Dim j As Integer
        j = 0
        Dim speicher As Integer = 0
        For j = 0 To GridView1.Rows.Count - 1
            speicher = speicher + CInt(GridView1.Rows(j).Cells(spalte).Text)
        Next

        Return speicher
    End Function

    Public Function summe2(ByVal spalte As Integer) As Integer
        Dim j As Integer
        j = 0
        Dim speicher As Integer = 0
        For j = 0 To GridView2.Rows.Count - 1
            speicher = speicher + CInt(GridView2.Rows(j).Cells(spalte).Text)
        Next

        Return speicher
    End Function

    Public Function schnitt(ByVal spalte As Integer) As Decimal
        Dim wert As Decimal
        Try
            wert = summe(spalte) / (summe(3))
            wert = wert * 100
            wert = Math.Round(wert, 2)
        Catch ex As Exception
            wert = 0
        End Try
        
        Return wert
    End Function

    Public Function schnitt2(ByVal spalte As Integer, ByVal spalte2 As Integer) As Decimal
        Dim wert As Decimal
        Try
            wert = summe2(spalte) / summe2(spalte2)
            wert = wert * 100
            wert = Math.Round(wert, 2)
        Catch ex As Exception
            wert = 0
        End Try
        
        Return wert
    End Function

    Protected Sub GridView2_DataBound(sender As Object, e As System.EventArgs) Handles GridView2.DataBound
        GridView2.FooterRow.Cells(0).Text = "Gesamt<br /><br />Anteil"
        GridView2.FooterRow.Cells(1).Text = summe2(1) & "<br /><br /><br />"
        GridView2.FooterRow.Cells(2).Text = summe2(2) & "<br /><br /><br />"
        GridView2.FooterRow.Cells(3).Text = summe2(3) & "<br /><br />" & schnitt2(3, 2) & " %"
        GridView2.FooterRow.Cells(4).Text = summe2(4) & "<br /><br />" & schnitt2(4, 2) & " %"
        GridView2.FooterRow.Cells(5).Text = summe2(5) & "<br /><br />" & schnitt2(5, 2) & " %"
        GridView2.FooterRow.Cells(6).Text = summe2(6) & "<br /><br /><br />"
        GridView2.FooterRow.Cells(7).Text = summe2(7) & "<br /><br />" & schnitt2(7, 6) & " %"
        GridView2.FooterRow.Cells(8).Text = summe2(8) & "<br /><br />" & schnitt2(8, 6) & " %"
        GridView2.FooterRow.Cells(9).Text = summe2(9) & "<br /><br />" & schnitt2(9, 6) & " %"
        GridView2.FooterRow.Cells(10).Text = summe2(10) & "<br /><br /><br />"
    End Sub

    Public Function summe3(ByVal spalte As Integer) As Integer
        Dim j As Integer
        j = 0
        Dim speicher As Integer = 0
        For j = 0 To GridView3.Rows.Count - 1
            speicher = speicher + CInt(GridView3.Rows(j).Cells(spalte).Text)
        Next

        Return speicher
    End Function

    Public Function schnitt3(ByVal spalte As Integer) As Decimal
        Dim divident As Integer
        Dim wert As Decimal
        Try
            divident = summe2(1)
            wert = summe3(spalte) / divident
            wert = wert * 100
            wert = Math.Round(wert, 2)
        Catch ex As Exception
            wert = 0
        End Try
        Return wert
    End Function

    Protected Sub GridView3_DataBound(sender As Object, e As System.EventArgs) Handles GridView2.DataBound
        Try
            GridView3.FooterRow.Cells(0).Text = "Gesamt<br /><br />Anteil"
            GridView3.FooterRow.Cells(1).Text = summe3(1) & "<br /><br />" & schnitt3(1) & " %"
            GridView3.FooterRow.Cells(2).Text = summe3(2) & "<br /><br />" & schnitt3(2) & " %"
            GridView3.FooterRow.Cells(3).Text = summe3(3) & "<br /><br />" & schnitt3(3) & " %"
            GridView3.FooterRow.Cells(4).Text = summe3(4) & "<br /><br />" & schnitt3(4) & " %"
            GridView3.FooterRow.Cells(5).Text = summe3(5) & "<br /><br />" & schnitt3(5) & " %"
            GridView3.FooterRow.Cells(6).Text = summe3(6) & "<br /><br />" & schnitt3(6) & " %"
            GridView3.FooterRow.Cells(7).Text = summe3(7) & "<br /><br />" & schnitt3(7) & " %"
            GridView3.FooterRow.Cells(8).Text = summe3(8) & "<br /><br />" & schnitt3(8) & " %"
        Catch ex As Exception

        End Try
        

    End Sub
End Class
