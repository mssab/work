
Partial Class kunde_schaufenster_liste
    Inherits System.Web.UI.Page

    Protected Sub GridView1_DataBound(sender As Object, e As System.EventArgs) Handles GridView1.DataBound
        GridView1.HeaderRow.Cells(7).Visible = False
        GridView1.HeaderRow.Cells(6).Visible = False
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            If e.Row.Cells(7).Text.ToString = "Nein" Then
                e.Row.Cells(0).Text = "<a href=""kunde_schaufenster_detail.aspx?id=" & e.Row.Cells(6).Text.ToString & """><img src=""img/16-em-cross.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(0).Text = "<a href=""kunde_schaufenster_detail.aspx?id=" & e.Row.Cells(6).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            End If
            e.Row.Attributes.Add("onclick", "location.href = 'kunde_schaufenster_detail.aspx?id=" & e.Row.Cells(6).Text & "'")
            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If
            e.Row.Cells(7).Visible = False
            e.Row.Cells(6).Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        If suchbegriff.Text.Length > 0 Then
            Dim begriff As String = suchbegriff.Text
            SqlDataSource1.SelectCommand = "SELECT [GP_ID], [name], [plz]+' '+ [ort] as ort, [dekoration], [glh], [id], freigabe_bilder_intern FROM [stammdaten] where ort like '%" & begriff & "%' or  GP_ID like '%" & begriff & "%' or  plz like '%" & begriff & "%' or  dekoration like '%" & begriff & "%' or  vl like '%" & begriff & "%' or  gvl like '%" & begriff & "%' or  glh like '%" & begriff & "%' or  name like '%" & begriff & "%'"
            GridView1.DataBind()
        Else
            SqlDataSource1.SelectCommand = "SELECT [GP_ID], [name], [plz]+' '+ [ort] as ort, [dekoration], [glh], [id], freigabe_bilder_intern FROM [stammdaten]"
            GridView1.DataBind()
        End If
    End Sub
End Class
