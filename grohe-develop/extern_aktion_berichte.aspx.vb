
Partial Class extern_aktion_berichte
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
           
            e.Row.Cells(7).Visible = False
        End If
    End Sub

    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init
        SqlDataSource1.SelectParameters("mitarbeiter").DefaultValue = User.Identity.Name
    End Sub

    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(7).Visible = False
        End If

    End Sub
End Class
