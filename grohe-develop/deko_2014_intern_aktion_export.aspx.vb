
Partial Class deko_2014_intern_aktion_bestaetigt
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PreRender(sender As Object, e As System.EventArgs) Handles GridView1.PreRender

    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound

    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Response.AppendHeader("content-disposition", "attachment;filename=Grohe_Deko_Stand_" & Date.Today.Day & "_" & Date.Today.Month & "_" & Date.Today.Year & ".xls")
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = "Unicode"
        Dim str As String
        Dim j, k As Integer
        Response.ContentEncoding = System.Text.Encoding.UTF8
        str = "<table style=&quot;border-color:black; border-style:solid; border-width:1px&quot;><tr style=&quot;font-weight:bold;&quot;>"
        For k = 0 To GridView1.HeaderRow.Controls.Count - 1
            str = str & "<td >" & GridView1.Columns(k).HeaderText & "</td>"
        Next
        str = str & "</tr><tr>"
        For j = 0 To GridView1.Rows.Count - 1
            For k = 0 To GridView1.HeaderRow.Controls.Count - 1
                str = str & "<td>" & GridView1.Rows(j).Cells(k).Text & "</td>"
            Next
            str = str & "</tr><tr>"
        Next
        str = str & "</tr></table>"
        Response.Write(str)
        Response.End()
    End Sub
End Class
