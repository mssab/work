
Partial Class intern_aktion_offen
    Inherits System.Web.UI.Page

    Protected Sub GridView1_PreRender(sender As Object, e As System.EventArgs) Handles GridView1.PreRender
        If GridView1.Rows.Count > 0 Then
            GridView1.HeaderRow.Cells(10).Visible = False
            GridView1.HeaderRow.Cells(8).Visible = False
            GridView1.HeaderRow.Cells(9).Visible = False
        End If
        aktion.Text = Session("Name")
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
           
            
            If einsatzpruefung(e.Row.Cells(10).Text) < 1 Then
                e.Row.Cells(8).Text = "<a href=""reporting_bericht_setting.aspx?id=" & e.Row.Cells(10).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(8).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            End If

            If fragebogenpruefung(e.Row.Cells(10).Text) < 1 Then
                e.Row.Cells(9).Text = "<a href=""reporting_fragebogen_setting.aspx?id=" & e.Row.Cells(10).Text.ToString & """><img src=""img/add.png"" alt = ""check"" /></a>"
            Else
                e.Row.Cells(9).Text = "<img src=""img/16-em-cross.png"" alt = ""check"" />"
            End If

            e.Row.Cells(8).Visible = False
            e.Row.Cells(9).Visible = False
            e.Row.Cells(10).Visible = False
        End If
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

    End Sub

    Public Function einsatzpruefung(ByVal id As Integer) As Integer
        Dim ausgabe As Integer = 0
        Dim command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("reportingConnectionString").ConnectionString)
        con.Open()
        command = "SELECT count(id) FROM einsatzbericht where einsatz_id = " & id
        Try
            Dim commando As New SqlCommand(command, con)
            ausgabe = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        
        con.Close()
        con.Dispose()
        Return ausgabe
    End Function

    Public Function fragebogenpruefung(ByVal id As Integer) As Integer
        Dim ausgabe As Integer = 0
        Dim command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("reportingConnectionString").ConnectionString)
        con.Open()
        command = "SELECT count(id) FROM fragebogen where einsatz_id = " & id
        Try
            Dim commando As New SqlCommand(command, con)
            ausgabe = commando.ExecuteScalar
        Catch ex As Exception

        End Try

        con.Close()
        con.Dispose()
        Return ausgabe
    End Function
End Class
