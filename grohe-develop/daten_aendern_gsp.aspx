<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="daten_aendern_gsp.aspx.vb" Inherits="daten_aendern_gsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Stammdaten ändern</h1>
    <asp:DetailsView ID="DetailsView1" runat="server" DataKeyNames="id"  CellPadding="3"  
                        DataSourceID="SqlDataSource1" AutoGenerateRows="False" 
        CommandRowStyle-BackColor="#A09E97" >

<CommandRowStyle BackColor="#A09E97"></CommandRowStyle>
        <Fields>
         <asp:CommandField ShowEditButton="True" EditText="Bearbeitung" CancelText="Abbruch" UpdateText="Speichern" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="Team" HeaderText="Team" 
                                SortExpression="Team"  />
                            <asp:BoundField DataField="JobNr" HeaderText="JobNr" 
                                SortExpression="JobNr" />
                            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                                SortExpression="GSP" />                            
                            <asp:BoundField DataField="Umruestung" HeaderText="Umruestung" 
                                SortExpression="Umruestung" />
                            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
                            <asp:BoundField DataField="Bemerkungen" 
                HeaderText="Bemerkungen" SortExpression="Bemerkungen" />
                            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                                SortExpression="Eingangsdatum" />
                            <asp:BoundField DataField="Fertigstelldatum" 
                HeaderText="Fertigstelldatum" SortExpression="Fertigstelldatum" />
                            <asp:BoundField DataField="Kunde" HeaderText="Kunde" 
                                SortExpression="Kunde" />
                            <asp:BoundField DataField="Regalmeter" HeaderText="Regalmeter" 
                                SortExpression="Regalmeter" />
                            <asp:BoundField DataField="Regallaenge" HeaderText="Regallaenge" 
                                SortExpression="Regallaenge" />
                            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="freigabe_bericht_extern" 
                                SortExpression="freigabe_bericht_extern" />
                            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="freigabe_bilder_extern" 
                                SortExpression="freigabe_bilder_extern" />
                            <asp:BoundField DataField="freigabe_bericht_intern" HeaderText="freigabe_bericht_intern" 
                                SortExpression="freigabe_bericht_intern" />
                            <asp:BoundField DataField="freigabe_bilder_intern" HeaderText="freigabe_bilder_intern" 
                                SortExpression="freigabe_bilder_intern" />
                            
                            
                            
                        <asp:BoundField DataField="angenommen" HeaderText="angenommen" 
                SortExpression="angenommen" />
            <asp:BoundField DataField="abgerechnet" HeaderText="abgerechnet" 
                SortExpression="abgerechnet" />
            <asp:BoundField DataField="anfragedatum" HeaderText="anfragedatum" 
                SortExpression="anfragedatum" />
           
                            
                            
                            
                        </Fields>
                        <AlternatingRowStyle BackColor="#DFDFDF" />
                        <HeaderStyle BackColor="#DFDFDF" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:promotion %>" 
                        DeleteCommand="DELETE FROM [gsp_auftraege] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [gsp_auftraege] ([Team], [JobNr], [GSP], [Umruestung], [Status], [Bemerkungen], [Eingangsdatum], [Fertigstelldatum], [Kunde], [Regalmeter], [Regallaenge], [freigabe_bericht_extern], [freigabe_bilder_extern], [freigabe_bericht_intern], [freigabe_bilder_intern], [angenommen], [abgerechnet], [anfragedatum]) VALUES (@Team, @JobNr, @GSP, @Umruestung, @Status, @Bemerkungen, @Eingangsdatum, @Fertigstelldatum, @Kunde, @Regalmeter, @Regallaenge, @freigabe_bericht_extern, @freigabe_bilder_extern, @freigabe_bericht_intern, @freigabe_bilder_intern, @angenommen, @abgerechnet, @anfragedatum)" 
                        SelectCommand="SELECT * FROM [gsp_auftraege] WHERE ([id] = @id)" 
                        
        
        UpdateCommand="UPDATE [gsp_auftraege] SET [Team] = @Team, [JobNr] = @JobNr, [GSP] = @GSP, [Umruestung] = @Umruestung, [Status] = @Status, [Bemerkungen] = @Bemerkungen, [Eingangsdatum] = @Eingangsdatum, [Fertigstelldatum] = @Fertigstelldatum, [Kunde] = @Kunde, [Regalmeter] = @Regalmeter, [Regallaenge] = @Regallaenge, [freigabe_bericht_extern] = @freigabe_bericht_extern, [freigabe_bilder_extern] = @freigabe_bilder_extern, [freigabe_bericht_intern] = @freigabe_bericht_intern, [freigabe_bilder_intern] = @freigabe_bilder_intern, [angenommen] = @angenommen, [abgerechnet] = @abgerechnet, [anfragedatum] = @anfragedatum WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Team" Type="Int32" />
                                <asp:Parameter Name="JobNr" Type="Int32" />
                                <asp:Parameter Name="GSP" Type="String" />
                                <asp:Parameter Name="Umruestung" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                                <asp:Parameter Name="Bemerkungen" Type="String" />
                                <asp:Parameter Name="Eingangsdatum" DbType="Date" />
                                <asp:Parameter Name="Fertigstelldatum" DbType="Date" />
                                <asp:Parameter Name="Kunde" Type="Int32" />
                                <asp:Parameter Name="Regalmeter" Type="String" />
                                <asp:Parameter Name="Regallaenge" Type="String" />
                                <asp:Parameter Name="freigabe_bericht_extern" Type="String" />
                                <asp:Parameter Name="freigabe_bilder_extern" Type="String" />
                                <asp:Parameter Name="freigabe_bericht_intern" Type="String" />
                                <asp:Parameter Name="freigabe_bilder_intern" Type="String" />
                                
                                <asp:Parameter Name="angenommen" Type="String" />
                                <asp:Parameter Name="abgerechnet" Type="String" />
                                <asp:Parameter DbType="Date" Name="anfragedatum" />
                                
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="id" 
                                    QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Team" Type="Int32" />
                                <asp:Parameter Name="JobNr" Type="Int32" />
                                <asp:Parameter Name="GSP" Type="String" />
                                <asp:Parameter Name="Umruestung" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                                <asp:Parameter Name="Bemerkungen" Type="String" />
                                <asp:Parameter Name="Eingangsdatum" DbType="Date" />
                                <asp:Parameter Name="Fertigstelldatum" DbType="Date" />
                                <asp:Parameter Name="Kunde" Type="Int32" />
                                <asp:Parameter Name="Regalmeter" Type="String" />
                                <asp:Parameter Name="Regallaenge" Type="String" />
                                <asp:Parameter Name="freigabe_bericht_extern" Type="String" />
                                <asp:Parameter Name="freigabe_bilder_extern" Type="String" />
                                <asp:Parameter Name="freigabe_bericht_intern" Type="String" />
                                <asp:Parameter Name="freigabe_bilder_intern" Type="String" />
                                <asp:Parameter Name="angenommen" Type="String" />
                                <asp:Parameter Name="abgerechnet" Type="String" />
                                <asp:Parameter DbType="Date" Name="anfragedatum" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                    </asp:SqlDataSource>
</asp:Content>

