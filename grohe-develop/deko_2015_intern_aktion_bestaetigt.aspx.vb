
Partial Class deko_2015_intern_aktion_bestaetigt
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(8).Visible = False
        End If
        anzahl.Text = "(" & GridView1.Rows.Count.ToString & ")"
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            If e.Row.Cells(5).Text = "Standard Deko" Then
                e.Row.Attributes.Add("onclick", "location.href = 'deko_2015_intern_ansicht_standard.aspx?id=" & e.Row.Cells(8).Text & "'")
            End If
            If e.Row.Cells(5).Text = "SPA Deko" Then
                e.Row.Attributes.Add("onclick", "location.href = 'deko_2015_intern_ansicht_spa.aspx?id=" & e.Row.Cells(8).Text & "'")
            End If



            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If
            e.Row.Cells(8).Visible = False
        End If
    End Sub
End Class
