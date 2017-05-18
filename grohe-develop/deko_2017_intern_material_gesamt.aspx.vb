
Partial Class intern_material_gesamt
    Inherits System.Web.UI.Page

    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(15).Visible = False
        End If
        If e.Row.RowType = DataControlRowType.DataRow Then
            e.Row.Attributes.Add("onclick", "location.href = 'deko_2016_material_detail_standard.aspx?id=" & e.Row.Cells(15).Text & "'")
            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If
            e.Row.Cells(15).Visible = False
        End If
    End Sub

    Protected Sub GridView2_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView2.RowDataBound
        If GridView2.Rows.Count > 0 Then
            GridView2.HeaderRow.Cells(21).Visible = False
        End If
        If e.Row.RowType = DataControlRowType.DataRow Then
            e.Row.Attributes.Add("onclick", "location.href = 'deko_2016_material_detail_spa.aspx?id=" & e.Row.Cells(21).Text & "'")
            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If
            e.Row.Cells(21).Visible = False
        End If
    End Sub
End Class
