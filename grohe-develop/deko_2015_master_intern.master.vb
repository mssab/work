Imports System.Data.SqlClient

Partial Class deko_2014_master_intern
    Inherits System.Web.UI.MasterPage

    Protected Sub logout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles logout.Click
        FormsAuthentication.SignOut()
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        '*** Prüfung, ob die Person in der Datenbank existiert ***

        Dim Command As String
        Dim dummy As String = ""
        Dim id As Integer = 0
        Command = "SELECT rolle FROM promotion_login WHERE id = " & HttpContext.Current.User.Identity.Name
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(Command, con)
            dummy = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()

        '*** Bei fehlendem Eintrag, Fehlermeldung, ansonsten Füllen der Session ***
        Select Case dummy
            Case "extern"
                Response.Redirect("deko_2015_extern_projekt_alle.aspx")
            Case "gate"

            Case "kunde"
                Response.Redirect("deko_2015_kunde_home.aspx")
            Case Else
                FormsAuthentication.SignOut()
                Response.Redirect("Default.aspx")
        End Select

    End Sub
End Class

