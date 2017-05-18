Imports System.Data.SqlClient

Partial Class material_detail_standard
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_DataBound(sender As Object, e As System.EventArgs) Handles DetailsView1.DataBound
        DetailsView1.Rows(13).Visible = False
    End Sub


    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select anmeldename from promotion_login where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from Stammdaten where dekoration = 'Standard Deko' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            gesamt.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from Stammdaten where dekoration = 'Standard Deko' and neu = 'neu' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            neu.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from Stammdaten where dekoration = 'Standard Deko' and freigabe_bericht_intern='Ja' and freigabe_bilder_intern = 'Ja' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            besucht.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from Stammdaten where dekoration = 'Standard Deko' and freigabe_bericht_intern='Ja' and freigabe_bilder_intern = 'Ja' and neu = 'neu' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            neu_besucht.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
    End Sub

End Class
