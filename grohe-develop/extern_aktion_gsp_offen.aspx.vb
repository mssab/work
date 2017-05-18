
Partial Class extern_aktion_gsp_offen
    Inherits System.Web.UI.Page
    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(8).Visible = False
        End If

    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            If e.Row.Cells(6).Text.ToString = "nein" Then
                e.Row.Cells(6).Text = "<a href=""extern_gsp_eingabe.aspx?id=" & e.Row.Cells(8).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(6).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(7).Text.ToString = "nein" Then
                e.Row.Cells(7).Text = "<a href=""extern_gsp_bilder.aspx?id=" & e.Row.Cells(8).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(7).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            e.Row.Cells(8).Visible = False
        End If
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        SqlDataSource1.SelectParameters.Item("mitarbeiter").DefaultValue = User.Identity.Name
    End Sub
End Class
