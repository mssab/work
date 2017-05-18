Imports System.IO
Imports System.Collections.Generic
Imports System.Data.SqlClient
Imports System.Drawing

Partial Class VotingErgebnis
    Inherits System.Web.UI.Page

    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Dim command As String
        Dim summe As Integer = 0
        Dim i As Integer = 0
        Dim k As Integer = 0
        Dim prozentangabe As Double = 0.0
        Dim bildnummer As String = ""
        Dim bildbezeichnung As String = ""

        command = "SELECT SUM(voting) FROM [dbo].[dew21_teilnehmer_bilderwettbewerb]"
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("testdbdew21connection").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(command, con)
            summe = CInt(commando.ExecuteScalar())
        Catch ex As Exception
            summe = 0
        End Try

        command = "SELECT id, bildname, vorname, nachname, voting FROM [dbo].[dew21_teilnehmer_bilderwettbewerb] ORDER BY voting DESC"

        Try
            Dim commando As New SqlCommand(command, con)
            GridViewVoting.DataSource = commando.ExecuteReader()
            GridViewVoting.DataBind()
        Catch ex As Exception
            lblStatus.Text = ex.Message
        End Try
        con.Close()
        con.Dispose()

        For i = 0 To GridViewVoting.Columns.Count - 1
            Try
                GridViewVoting.HeaderRow.Cells(i).Visible = False
            Catch ex As Exception

            End Try
        Next

        For i = 0 To GridViewVoting.Rows.Count - 1
            Try
                GridViewVoting.Rows(i).Cells(0).Visible = False
                GridViewVoting.Rows(i).Cells(1).Visible = False
                GridViewVoting.Rows(i).Cells(2).Visible = False
                GridViewVoting.Rows(i).Cells(3).Visible = False
                GridViewVoting.Rows(i).Cells(4).Visible = False
                GridViewVoting.Rows(i).Cells(5).Visible = False
                If i > 9 Then
                    GridViewVoting.Rows(i).Cells(6).Visible = False
                    GridViewVoting.Rows(i).Cells(7).Visible = False
					GridViewVoting.Rows(i).Cells(8).Visible = False
                End If
                k = i + 1
                bildbezeichnung = GridViewVoting.Rows(i).Cells(1).Text
                bildnummer = bildbezeichnung
                bildnummer = bildbezeichnung.Replace("Bild", "")
                bildnummer = bildbezeichnung.Replace(".jpg", "")

                GridViewVoting.Rows(i).Cells(5).Text = k


                GridViewVoting.Rows(i).Cells(6).Text = ""
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & "<div style=""border-top: 8px solid white; border-bottom: 8px solid white; border-left: 0px solid white; border-right: 0px solid white;overflow:hidden; height: 133px; float:left"">"
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & "<a href=""BilderAnzeigen.aspx?id="
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & bildnummer & """>"
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & "        <img src=""imagefolder/"
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & bildbezeichnung & """"
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & " alt="""" border=""0"" height=""133"" style=""margin-top:0px;"" />"
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & "    </div>   "
                GridViewVoting.Rows(i).Cells(6).Text = GridViewVoting.Rows(i).Cells(6).Text & "       "

                prozentangabe = CDbl(GridViewVoting.Rows(i).Cells(4).Text * 100 / summe)
                GridViewVoting.Rows(i).Cells(4).Text = Format(Math.Round(prozentangabe, 2), "00.00").ToString() & "%"

                GridViewVoting.Rows(i).Cells(7).Text = ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "<div style=""border: 0px solid white; background-color:#e5ecf3; height:133px; width:563px; color:#176897; font-size: 22px;"">"
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "<div style=""margin-left: 30px; margin-bottom: 20px; padding-top: 20px;"">Platz "
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & k & ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & ": "
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & GridViewVoting.Rows(i).Cells(2).Text & ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & " "
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & GridViewVoting.Rows(i).Cells(3).Text & ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "</div>"
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "<div style=""border: 0px solid black; background-color:white; width: 530px; height: 38px; float: left; margin: 0px 0px 0px 30px"">"
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "<div style=""background-color:#e3001b; width: "
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & Math.Round(prozentangabe, 0).ToString & ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & "%; height: 38px;""></div></div></div>"
                'GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text & GridViewVoting.Rows(i).Cells(4).Text & ""
                GridViewVoting.Rows(i).Cells(7).Text = GridViewVoting.Rows(i).Cells(7).Text

                GridViewVoting.Rows(i).Cells(8).Text = "<div style=""border: 0px solid white; background-color:#e5ecf3; height:133px; width:142px; color:#176897; font-size: 35px;padding-left:8px""><div style=""color: #176897; margin-left: 0px; padding-top: 65px""> " & GridViewVoting.Rows(i).Cells(4).Text &"</div></div>"
            Catch ex As Exception

            End Try
        Next

        Dim arr As String() = {"", ""}
        GridViewIhrBild.DataSource = arr
        GridViewIhrBild.DataBind()

        Dim ident As String = ""
        Try
            ident = Request.QueryString.Item("id")
        Catch ex As Exception
            ident = "0"
        End Try

        If Request.QueryString.HasKeys() = True Then
            panelVoteBild.Visible = True
        Else
            panelVoteBild.Visible = False
        End If

        If ident <> "0" Or ident IsNot Nothing Then
            GridViewIhrBild.Rows(0).Cells(0).Text = ""
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & "<div style=""border: 0px solid white; width: 100px; overflow:hidden; float:left"">"
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & "        <img src=""imagefolder/Bild"
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & ident & ".jpg"""
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & " alt="""" border=""0"" width=""100"" />"
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & "    </div>   "
            GridViewIhrBild.Rows(0).Cells(0).Text = GridViewIhrBild.Rows(0).Cells(0).Text & "       "

            For i = 0 To GridViewVoting.Rows.Count - 1
                If GridViewVoting.Rows(i).Cells(0).Text = ident Then
                    'GridViewIhrBild.Rows(0).Cells(1).Text = GridViewVoting.Rows(i).Cells(6).Text

                    GridViewIhrBild.Rows(0).Cells(1).Text = ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "<div style=""border: 0px solid white; background-color:#e5ecf3; height:133px; width:563px; color:#176897; font-size: 22px;"">"
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "<div style=""margin-left: 30px; margin-bottom: 20px; padding-top: 20px;"">Platz "
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & GridViewVoting.Rows(i).Cells(5).Text & ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & ": "
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & GridViewVoting.Rows(i).Cells(2).Text & ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & " "
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & GridViewVoting.Rows(i).Cells(3).Text & ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "</div>"
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "<div style=""border: 0px solid black; background-color:white; width: 530px; height: 38px; float: left; margin: 0px 0px 0px 30px"">"
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "<div style=""background-color:#e3001b; width: "
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & Math.Round(CDbl(GridViewVoting.Rows(i).Cells(4).Text.Replace("%", "")), 0).ToString & ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & "%; height: 38px;""></div></div></div>"
                    'GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text & GridViewVoting.Rows(i).Cells(4).Text & ""
                    GridViewIhrBild.Rows(0).Cells(1).Text = GridViewIhrBild.Rows(0).Cells(1).Text

                    GridViewIhrBild.Rows(0).Cells(2).Text = "<div style=""border: 0px solid white; background-color:#e5ecf3; height:133px; width:142px; color:#176897; font-size: 35px;padding-left:8px""><div style=""color: #176897; margin-left: 0px; padding-top: 65px""> " & GridViewVoting.Rows(i).Cells(4).Text & "</div></div>"

                End If
            Next
        Else

        End If

        Try
            GridViewIhrBild.HeaderRow.Cells(0).Visible = False
            GridViewIhrBild.HeaderRow.Cells(1).Visible = False
            GridViewIhrBild.HeaderRow.Cells(2).Visible = False
        Catch ex As Exception

        End Try

    End Sub


End Class
