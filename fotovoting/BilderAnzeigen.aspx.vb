Imports System.IO
Imports System.Collections.Generic
Imports System.Data.SqlClient

Partial Class BilderAnzeigen
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim di As New DirectoryInfo(Server.MapPath("imagefolder/"))
        Dim zaehlvariable As Integer = 1
        Dim bildname As String = ""
        Dim bildnummer As String = ""

        labelallebilder.Text = ""
        For Each fi As FileInfo In di.GetFiles()
            bildname = fi.ToString
            bildname = bildname.Replace("Bild", "")
            bildname = bildname.Replace(".jpg", "")
            bildnummer = bildname
            labelallebilder.Text = labelallebilder.Text & "<div style=""border: 0px solid red; height: 200px; width: 150px; overflow:hidden; margin: 5px 5px 5px 5px; float:left;"">"
            labelallebilder.Text = labelallebilder.Text & "<a href=""BilderAnzeigen.aspx?id="
            labelallebilder.Text = labelallebilder.Text & bildnummer & """>"
            labelallebilder.Text = labelallebilder.Text & "        <img src=""imagefolder/"
            labelallebilder.Text = labelallebilder.Text & fi.ToString & """"
            labelallebilder.Text = labelallebilder.Text & " alt="""" border=""0"" width=""150"" /></a>"
            labelallebilder.Text = labelallebilder.Text & "    </div>   "
            labelallebilder.Text = labelallebilder.Text & "       "
            zaehlvariable += 1
        Next
        Dim ident As String = ""
        Try
            ident = Request.QueryString.Item("id")
        Catch ex As Exception
            ident = "0"
        End Try
        vote_bild.Text = ""
        vote_bild.Text = vote_bild.Text & "<div style=""border: 0px solid red; width: 265px; height: 330px; overflow:hidden; margin: 0px 0px 0px 0px;"">"
       
        If ident = "0" Or ident Is Nothing Then
            ButtonVote.Visible = False
            'labelFacebookShareButton.Text = ""
            'labelFacebookShareButton.Text = "<a href=""http://www.facebook.com/sharer.php?u=http://www.fotovoting.dewhoch21.de/BilderAnzeigen.aspx"" target=""_blank"">f Share</a>"
		vote_bild.Text = vote_bild.Text & "        <img src=""img/null"
        vote_bild.Text = vote_bild.Text & ".png"""
        vote_bild.Text = vote_bild.Text & " alt="""" border=""0"" width=""0"" />"
        vote_bild.Text = vote_bild.Text & "    </div>   "
        vote_bild.Text = vote_bild.Text & "       "
        Else
            ButtonVote.Visible = True
		vote_bild.Text = vote_bild.Text & "        <img src=""imagefolder/Bild"
        vote_bild.Text = vote_bild.Text & ident & ".jpg"""
        vote_bild.Text = vote_bild.Text & " alt="""" border=""0"" width=""265"" />"
        vote_bild.Text = vote_bild.Text & "    </div>   "
        vote_bild.Text = vote_bild.Text & "       "
            labelFacebookShareButton.Text = ""
            labelFacebookShareButton.Text = labelFacebookShareButton.Text & "<a href=""http://www.facebook.com/sharer.php?u=http://www.dewhoch21-develop.gate-internet.de/fotovoting/BilderAnzeigen.aspx?id="
            labelFacebookShareButton.Text = labelFacebookShareButton.Text & ident 
            labelFacebookShareButton.Text = labelFacebookShareButton.Text & """ target=""_blank""><img alt="""" src=""img/fbteilen.jpg"" border=""0"" style=""float:right;"" /></a>"
        End If

    End Sub

    Protected Sub ButtonVote_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonVote.Click
        Dim idnumber As String = ""
        Try
            idnumber = Request.QueryString.Item("id")
        Catch ex As Exception
            idnumber = "0"
        End Try
        Voten(idnumber)
        Response.Redirect("VotingErgebnis.aspx?id=" & idnumber)
    End Sub

    Public Sub Voten(ByVal identitynumber As String)
        Dim command As String
        command = "UPDATE [dbo].[dew21_teilnehmer_bilderwettbewerb] SET voting += 1 WHERE id = " & identitynumber
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("testdbdew21connection").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
    End Sub

End Class
