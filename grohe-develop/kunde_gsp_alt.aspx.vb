
Partial Class kunde_gsp
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            e.Row.Attributes.Add("onclick", "location.href = 'kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text & "'")
            If System.IO.Directory.Exists(Server.MapPath("/gsp/" & e.Row.Cells(0).Text)) = False Then
                e.Row.Cells(0).Text = "<a href=""kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text.ToString & """><img src=""img/16-em-cross.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(0).Text = "<a href=""kunde_gsp_detail.aspx?id=" & e.Row.Cells(0).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            End If

            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='Silver'")
            Dim result As Integer
            Math.DivRem(e.Row.RowIndex, 2, result)
            If result = 0 Then
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#FFFFFF'")
            Else
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor='#DFDFDF'")
            End If

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If suchbegriff.Text.Length > 0 Then
            Dim begriff As String = suchbegriff.Text
            SqlDataSource1.SelectCommand = "SELECT [id], [GSP], [Kunde], [PLZ]+' '+ [Ort] as Ort, [GVL], [GLH] FROM [gsp] where ort like '%" & begriff & "%' or  GSP like '%" & begriff & "%' or  PLZ like '%" & begriff & "%' or  Ort like '%" & begriff & "%' or  GVL like '%" & begriff & "%' or  GLH like '%" & begriff & "%'  or  Kunde like '%" & begriff & "%'"
            GridView1.DataBind()
        Else
            SqlDataSource1.SelectCommand = "SELECT [id], [GSP], [Kunde], [PLZ]+' '+ [Ort] as Ort, [GVL], [GLH] FROM [gsp]"
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        treffer.Text = GridView1.Rows.Count
    End Sub
End Class
