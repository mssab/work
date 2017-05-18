Imports System.Data.SqlClient

Partial Class extern_gsp_eingabe
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        dekodatum.SelectedDate = Date.Today

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim command As String
        Dim stamm_id As String = Request.QueryString.Item("id").ToString
        Dim kunden_id As Integer = 0
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "select kunde from gsp_auftraege where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            kunden_id = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select Kunde from gsp_shops where id = " & kunden_id
            Dim commando As New SqlCommand(command, con)
            name.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select strasse from gsp_shops where id = " & kunden_id
            Dim commando As New SqlCommand(command, con)
            strasse.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select plz + ' ' + ort as adresse from gsp_shops where id = " & kunden_id
            Dim commando As New SqlCommand(command, con)
            plz_ort.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select gsp from gsp_auftraege where id = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            deko.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
    End Sub

    Protected Sub speichern_material_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles speichern_material.Click

        speichern()


    End Sub

    Public Sub speichern()
        '*** Command-String ***
        Dim command As String = ""

        '***Speichern in die Datenbank mit Prüfung auf Vollzug ***
        Dim erfolg As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        

        command = "update gsp_auftraege set Regalmeter = '" & regalmeter.Text & "', freigabe_bericht_extern = 'Ja', Fertigstelldatum = '" & dekodatum.SelectedDate.ToString("yyyy-MM-dd") & "' where id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(command, con)
            erfolg = commando.ExecuteNonQuery

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Response.Redirect("extern_aktion_gsp_offen.aspx")
        

    End Sub
    
End Class
