Imports System.Data.SqlClient

Partial Class MasterPage_extern
    Inherits System.Web.UI.MasterPage

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

            Case "gate"
                Response.Redirect("intern_projekte_alle.aspx")
            Case "kunde"
                Response.Redirect("home.aspx")
            Case Else
                FormsAuthentication.SignOut()
                Response.Redirect("Default.aspx")
        End Select


    End Sub

    Protected Sub logout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles logout.Click
        FormsAuthentication.SignOut()
        Response.Redirect("Default.aspx")
    End Sub
End Class

