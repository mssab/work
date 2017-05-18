<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_bericht_freigabe_gsp.aspx.vb" Inherits="intern_bericht_freigabe_spa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Eingabe Grohe SPA</h1>
    <table>
        <tr>
            <td>Name:</td>
            <td><asp:Label ID="name" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Straße:</td>
            <td><asp:Label ID="strasse" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>PLZ und Ort:</td>
            <td><asp:Label ID="plz_ort" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Dekoration:</td>
            <td><asp:Label ID="deko" runat="server"></asp:Label></td>
        </tr>        
    </table>
    <br />
    <table>
        <tr>
            <td valign="top">
                <h2>Bericht</h2>
                 <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Team" HeaderText="Team" 
                SortExpression="Team" />
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" SortExpression="JobNr" />
            <asp:BoundField DataField="GSP" 
                HeaderText="GSP" SortExpression="GSP" />
            <asp:BoundField DataField="Umruestung" 
                HeaderText="Umruestung" 
                SortExpression="Umruestung" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Bemerkungen" 
                HeaderText="Bemerkungen" SortExpression="Bemerkungen" />
            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                SortExpression="Eingangsdatum" />
            <asp:BoundField DataField="Fertigstelldatum" HeaderText="Fertigstelldatum" 
                SortExpression="Fertigstelldatum" />
            <asp:BoundField DataField="Kunde" 
                HeaderText="Kunde" SortExpression="Kunde" />
            <asp:BoundField DataField="Regalmeter" 
                HeaderText="Regalmeter" 
                SortExpression="Regalmeter" />
            <asp:BoundField DataField="Regallaenge" HeaderText="Regallaenge" 
                SortExpression="Regallaenge" />
            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="freigabe_bericht_extern" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="freigabe_bilder_extern" 
                SortExpression="freigabe_bilder_extern" />
            <asp:BoundField DataField="freigabe_bericht_intern" 
                HeaderText="freigabe_bericht_intern" 
                SortExpression="freigabe_bericht_intern" />
            <asp:BoundField DataField="freigabe_bilder_intern" HeaderText="freigabe_bilder_intern" 
                SortExpression="freigabe_bilder_intern" />
            <asp:BoundField DataField="angenommen" 
                HeaderText="angenommen" SortExpression="angenommen" />
            <asp:BoundField DataField="abgerechnet" HeaderText="abgerechnet" 
                SortExpression="abgerechnet" />
            <asp:BoundField DataField="anfragedatum" 
                HeaderText="anfragedatum" SortExpression="anfragedatum" />
            
            
        </Fields>
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
            <asp:Parameter Name="anfragedatum" DbType="Date" />
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
            <asp:Parameter Name="anfragedatum" DbType="Date" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            
            </td>
            <td valign="top" style="padding-left:20px">
                <h2>Freigabe</h2>
                <asp:Button ID="freigabe" runat="server" Text="Bericht freigeben" />
                <br />
                <br />
                <br />
                <h2>Bericht löschen</h2>
                <p>Im Falle der Löschung des Berichtes sind die eingegebenen Daten unwideruflich gelöscht. Der Dekorateur kann in seinem Portal den Bericht erneut eingeben.</p>
                <asp:Button ID="loeschen" runat="server" Text="Bericht löschen" />
                <br />
                <br />
                <br />
                <h2>Bild des Berichts</h2>
                <p>Sofern ein Bild des Berichtes hochgeladen wurde, ist es hier ansehbar:</p>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
        </tr>
    </table>
   
    
    
</asp:Content>

