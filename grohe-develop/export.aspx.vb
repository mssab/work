
Partial Class export
    Inherits System.Web.UI.Page

    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        
    End Sub

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles senden.Click
        If kennwort.Text = "gatecg2013" Then
            panel_freigabe.Visible = False
            panel_export.Visible = True
        Else
            panel_freigabe.Visible = True
            panel_export.Visible = False
        End If
    End Sub

    Protected Sub export_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles export.Click
        Response.AppendHeader("content-disposition", "attachment;filename=Dortmunder_Kreis_Anmeldungen_Stand_" & Date.Now.Day & "_" & Date.Now.Month & "_" & Date.Now.Year & ".xls")
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = "Unicode"
        Dim str As String
        Dim i, j, k As Integer
        Response.ContentEncoding = System.Text.Encoding.UTF8
        str = "<table style=&quot;border-color:black; border-style:solid; border-width:1px; font-family:Arial;&quot;><tr>"
        str = str & "<th style=""font-weight:bold;background-color:grey;"">lfd. Nr.</th>"
        For i = 0 To GridView1.HeaderRow.Controls.Count - 1
            str = str & "<th style=""font-weight:bold;background-color:grey;"">" & GridView1.HeaderRow.Cells(i).Text & "</th>"
        Next
        str = str & "</tr><tr>"
        For j = 0 To GridView1.Rows.Count - 1
            str = str & "<td>" & j + 1 & "</td>"
            For k = 0 To GridView1.HeaderRow.Controls.Count - 1
                str = str & "<td>" & GridView1.Rows(j).Cells(k).Text & "</td>"
            Next
            str = str & "</tr><tr>"
        Next
        str = str & "</tr></table>"
        Response.Write(str)
        Response.End()
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            If e.Row.Cells(11).Text.ToString = "False" Then
                e.Row.Cells(11).Text = "nein"
            End If
            If e.Row.Cells(11).Text = "True" Then
                e.Row.Cells(11).Text = "ja"
            End If
            If e.Row.Cells(17).Text.ToString = "False" Then
                e.Row.Cells(17).Text = "nein"
            End If
            If e.Row.Cells(17).Text = "True" Then
                e.Row.Cells(17).Text = "ja"
            End If
        End If

    End Sub
End Class
