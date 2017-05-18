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
            command = "select count(id) from deko_2017_Stammdaten where dekoration = 'Standard Deko' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            gesamt.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from deko_2017_Stammdaten where dekoration = 'Standard Deko' and neu = 'neu' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            neu.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from deko_2017_Stammdaten where dekoration = 'Standard Deko' and freigabe_bericht_intern='Ja' and freigabe_bilder_intern = 'Ja' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            besucht.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command = "select count(id) from deko_2017_Stammdaten where dekoration = 'Standard Deko' and freigabe_bericht_intern='Ja' and freigabe_bilder_intern = 'Ja' and neu = 'neu' and mitarbeiter = " & stamm_id
            Dim commando As New SqlCommand(command, con)
            neu_besucht.Text = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Dim i As Integer = 0
        Dim ausgabe As Integer = 0
        Dim lager As Integer = 0
        Dim restbestand As Integer = 0
        Dim derzeitigerbestandarray(12) As Integer
        For i = 1 To DetailsView1.Rows.Count - 1
            Try
                ausgabe = CInt(DetailsView2.Rows(i).Cells(1).Text)
            Catch ex As Exception
                ausgabe = 0
            End Try
            Try
                lager = CInt(DetailsView1.Rows(i).Cells(1).Text)
            Catch ex As Exception
                lager = 0
            End Try
            restbestand = lager - ausgabe
            Try
                derzeitigerbestandarray(i - 1) = restbestand
            Catch ex As Exception

            End Try
        Next

        DetailsView3.DataSource = derzeitigerbestandarray
        DetailsView3.DataBind()

        For i = 1 To DetailsView1.Rows.Count - 1
            Try
                If derzeitigerbestandarray(i - 1) < 0 Then
                    'derzeitigerbestandarray(i - 1) = 0
                    DetailsView3.Rows(i).Cells(1).BackColor = Drawing.Color.FromArgb(245, 165, 165)
                End If
                DetailsView3.Rows(i).Cells(1).Text = CStr(derzeitigerbestandarray(i - 1))
            Catch ex As Exception

            End Try
        Next
    End Sub

End Class
