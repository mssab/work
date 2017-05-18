
Partial Class deko_2014_extern_projekt_alle
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        SqlDataSource1.SelectParameters("mitarbeiter").DefaultValue = User.Identity.Name
    End Sub
End Class
