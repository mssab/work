
Partial Class aktion_setting
    Inherits System.Web.UI.Page

    Private Sub aktion_setting_Init(sender As Object, e As EventArgs) Handles Me.Init
        Dim id As Integer = CInt(Request.QueryString.Item(0))
        Session.Add("Einsatz_ID", id)
        Response.Redirect("reporting_fragebogen_eingabe.aspx")
    End Sub
End Class
