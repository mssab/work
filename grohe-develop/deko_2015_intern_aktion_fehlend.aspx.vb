
Partial Class deko_2015_intern_aktion_alle
    Inherits System.Web.UI.Page
    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(12).Visible = False
        End If
        anzahl.Text = "(" & GridView1.Rows.Count.ToString & ")"
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            e.Row.Cells(8).FindControl("freigabe")
            e.Row.Cells(9).FindControl("freigabe_bilder")
            e.Row.Cells(10).FindControl("freigabe")
            e.Row.Cells(11).FindControl("freigabe_bilder")
            If e.Row.Cells(8).Text.ToString = "Nein" Then
                e.Row.Cells(8).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(8).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(9).Text.ToString = "Nein" Then
                e.Row.Cells(9).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(9).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(10).Text.ToString = "Nein" Then
                e.Row.Cells(10).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(10).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(11).Text.ToString = "Nein" Then
                e.Row.Cells(11).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(11).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            e.Row.Cells(12).Visible = False
        End If
    End Sub
End Class
