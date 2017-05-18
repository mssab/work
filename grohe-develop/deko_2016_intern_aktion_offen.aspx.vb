
Partial Class deko_2016_intern_aktion_offen
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(12).Visible = False
            GridView1.HeaderRow.Cells(8).Visible = False
            GridView1.HeaderRow.Cells(9).Visible = False
        End If
        anzahl.Text = "(" & GridView1.Rows.Count.ToString & ")"
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then



            If e.Row.Cells(8).Text.ToString = "Nein" Then
                e.Row.Cells(10).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                If e.Row.Cells(10).Text.ToString = "Nein" Then
                    If e.Row.Cells(5).Text = "Standard Deko" Then
                        e.Row.Cells(10).Text = "<a href=""deko_2016_intern_bericht_freigabe_enjoy.aspx?id=" & e.Row.Cells(12).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
                    End If
                    If e.Row.Cells(5).Text = "SPA Deko" Then
                        e.Row.Cells(10).Text = "<a href=""deko_2016_intern_bericht_freigabe_spa.aspx?id=" & e.Row.Cells(12).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
                    End If

                Else
                    e.Row.Cells(10).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
                End If
            End If
            If e.Row.Cells(9).Text.ToString = "Nein" Then
                e.Row.Cells(11).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            Else
                If e.Row.Cells(11).Text.ToString = "Nein" Then
                    e.Row.Cells(11).Text = "<a href=""deko_2016_intern_bild_freigabe.aspx?id=" & e.Row.Cells(12).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
                Else
                    e.Row.Cells(11).Text = "<img src=""img/16-em-check.png"" alt = ""check"" />"
                End If
            End If
            e.Row.Cells(8).Visible = False
            e.Row.Cells(9).Visible = False
            e.Row.Cells(12).Visible = False
        End If
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

    End Sub
End Class
