
Partial Class intern_projekte_alle
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        GridView1.HeaderRow.Cells(6).Visible = False
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            e.Row.Attributes.Add("onclick", "location.href = 'intern_projekte_gsp_neu.aspx?id=" & e.Row.Cells(6).Text & "'")
            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If
            e.Row.Cells(6).Visible = False
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("intern_projekte_gsp_shop_neu.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub
End Class
