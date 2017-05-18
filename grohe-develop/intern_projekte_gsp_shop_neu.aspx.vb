Imports System.Data.SqlClient

Partial Class intern_projekte_gsp_shop_neu
    Inherits System.Web.UI.Page
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        
    End Sub

    Protected Sub zurueck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles zurueck.Click
        Response.Redirect("intern_projekte_gsp_shops.aspx")
    End Sub

    Protected Sub speichern_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles speichern.Click
        If abspeichern() = 1 Then
            Response.Redirect("intern_projekte_gsp_shops.aspx")
        End If
    End Sub

    Public Function abspeichern() As Integer
        Dim command As String
        Dim dummy As String = ""
        Dim zahl As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString)
        con.Open()
        Try
            command = "INSERT INTO [gsp_shops] ([Kunde],[Strasse] ,[PLZ] ,[Ort] ,[Ansprechpartner] ,[Telefon] ,[Mail] ,[CRM],[Regalmeter],[StoreCheck],[GVL],[Handy_GVL],[GLH] ,[Handy_GLH])  VALUES ('" & kunde.Text & "' ,'" & strasse.Text & "' ,'" & plz.Text & "'  ,'" & ort.Text & "' ,'" & ansprechpartner.Text & "'  ,'" & telefon.Text & "'  ,'" & email.Text & "'  ,'" & crm.Text & "' ,'" & regalmeter.Text & "' ,'" & storecheck.Text & "' ,'" & gvl.Text & "','" & gvl_handy.Text & "' ,'" & glh.Text & "' ,'" & glh_handy.Text & "')"
            Dim commando As New SqlCommand(command, con)
            zahl = commando.ExecuteNonQuery()

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return zahl
    End Function
End Class
