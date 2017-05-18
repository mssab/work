
Partial Class extern_projekt_tourenplan
    Inherits System.Web.UI.Page
    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init
        SqlDataSource1.SelectParameters("mitarbeiter").DefaultValue = User.Identity.Name
    End Sub
End Class
