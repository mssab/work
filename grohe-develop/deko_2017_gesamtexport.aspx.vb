
Partial Class deko_2017_gesamtexport
    Inherits System.Web.UI.Page

    Private Sub deko_2017_gesamtexport_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim attachment As String = "attachment; filename=Grohe_Deko_Stand_" & Date.Today.Day & "_" & Date.Today.Month & "_" & Date.Today.Year & ".xls"

        Response.ClearContent()

        Response.AddHeader("content-disposition", attachment)

        Response.ContentType = "application/ms-excel"
        Response.ContentEncoding = System.Text.Encoding.UTF8
        Dim sw As System.IO.StringWriter = New System.IO.StringWriter()

        Dim htw As HtmlTextWriter = New HtmlTextWriter(sw)

        GridView1.RenderControl(htw)

        Response.Write(sw.ToString())

        Response.End()
    End Sub

    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        Return
    End Sub
End Class
