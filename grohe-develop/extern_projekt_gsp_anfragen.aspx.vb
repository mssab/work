﻿
Partial Class extern_projekt_gsp_alle
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        SqlDataSource1.SelectParameters("mitarbeiter").DefaultValue = User.Identity.Name
    End Sub

    Protected Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(10).Visible = False
        End If
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim annahme As Button = e.Row.FindControl("Button1")
            Dim ablehnung As Button = e.Row.FindControl("Button2")
            annahme.PostBackUrl = "http://www.grohe.gate-internet.de/extern_gsp_annahme.aspx?id=" & e.Row.Cells(10).Text
            ablehnung.PostBackUrl = "http://www.grohe.gate-internet.de/extern_gsp_ablehnung.aspx?id=" & e.Row.Cells(10).Text
            If e.Row.Cells(8).Text.Length > 5 Then
                e.Row.Cells(8).Text = "<a href=""mailto:" & e.Row.Cells(8).Text & """ style=""color:#000000; text-decoration:none;"">" & e.Row.Cells(8).Text & "</a>"
            Else

            End If
            e.Row.Cells(10).Visible = False
        End If
    End Sub

    
End Class
