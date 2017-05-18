
Partial Class intern_aktion_gsp_fehlend
    Inherits System.Web.UI.Page
    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        
        anzahl.Text = "(" & GridView1.Rows.Count.ToString & ")"
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            e.Row.Cells(8).FindControl("freigabe")
            e.Row.Cells(9).FindControl("freigabe_bilder")
            e.Row.Cells(10).FindControl("freigabe")
            e.Row.Cells(11).FindControl("freigabe_bilder")
            If e.Row.Cells(8).Text.ToString = "nein" Then
                e.Row.Cells(8).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(8).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(9).Text.ToString = "nein" Then
                e.Row.Cells(9).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(9).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(10).Text.ToString = "nein" Then
                e.Row.Cells(10).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(10).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If
            If e.Row.Cells(11).Text.ToString = "nein" Then
                e.Row.Cells(11).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                e.Row.Cells(11).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
            End If

        End If
    End Sub
End Class
