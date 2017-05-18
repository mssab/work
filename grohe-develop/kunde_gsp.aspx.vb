
Partial Class kunde_gsp
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            e.Row.Attributes.Add("onclick", "location.href = 'kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text & "'")
            If System.IO.Directory.Exists(Server.MapPath("/gsp/" & e.Row.Cells(0).Text)) = False Or e.Row.Cells(3).Text = "offen" Then
                e.Row.Cells(0).Text = "<a href=""kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text.ToString & """><img src=""img/16-em-cross.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(0).Text = "<a href=""kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            End If

            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If suchbegriff.Text.Length > 0 Then
            Dim begriff As String = suchbegriff.Text
            'SqlDataSource1.SelectCommand = "SELECT [id], [GSP], [Kunde], [PLZ]+' '+ [Ort] as Ort, [GVL], [GLH] FROM [gsp] where ort like '%" & begriff & "%' or  GSP like '%" & begriff & "%' or  PLZ like '%" & begriff & "%' or  Ort like '%" & begriff & "%' or  GVL like '%" & begriff & "%' or  GLH like '%" & begriff & "%'  or  Kunde like '%" & begriff & "%'"
            SqlDataSource1.SelectCommand = "SELECT gsp_shops.CRM, gsp_auftraege.GSP, gsp_auftraege.Status, gsp_auftraege.Eingangsdatum, gsp_auftraege.Fertigstelldatum, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.id FROM gsp_auftraege INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id where gsp_auftraege.GSP like '%" & begriff & "%' or  gsp_shops.PLZ like '%" & begriff & "%' or  gsp_shops.Ort like '%" & begriff & "%'  or  gsp_shops.Kunde like '%" & begriff & "%' ORDER BY gsp_auftraege.JobNr DESC"
            GridView1.DataBind()
        Else
            SqlDataSource1.SelectCommand = "SELECT gsp_shops.CRM, gsp_auftraege.GSP, gsp_auftraege.Status, gsp_auftraege.Eingangsdatum, gsp_auftraege.Fertigstelldatum, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.id FROM gsp_auftraege INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id ORDER BY gsp_auftraege.JobNr DESC"
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        treffer.Text = GridView1.Rows.Count
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.AppendHeader("content-disposition", "attachment;filename=Grohe_Service_Point_Stand_" & Date.Today.Day & "_" & Date.Today.Month & "_" & Date.Today.Year & ".xls")
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = "Unicode"
        Dim str As String
        Dim j, k As Integer
        Response.ContentEncoding = System.Text.Encoding.UTF8
        str = "<table style=&quot;border-color:black; border-style:solid; border-width:1px&quot;><tr style=&quot;font-weight:bold;&quot;>"
        For k = 1 To GridView1.HeaderRow.Controls.Count - 1
            str = str & "<td >" & GridView1.Columns(k).HeaderText & "</td>"
        Next
        str = str & "</tr><tr>"
        For j = 0 To GridView1.Rows.Count - 1
            For k = 1 To GridView1.HeaderRow.Controls.Count - 1
                str = str & "<td>" & GridView1.Rows(j).Cells(k).Text & "</td>"
            Next
            str = str & "</tr><tr>"
        Next
        str = str & "</tr></table>"
        Response.Write(str)
        Response.End()
    End Sub
End Class
