<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="true" CodeFile="deko_2015_intern_bericht_freigabe_enjoy.aspx.vb" Inherits="deko_2015_intern_bericht_freigabe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1>Freigabe Grohe Standard</h1>
    <table>
        <tr>
            <td style="width:10%">Name:</td>
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
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True">
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
            <asp:BoundField DataField="id" HeaderText="id" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="Banner kubistisches Design" 
                HeaderText="Banner kubistisches Design" 
                SortExpression="Banner kubistisches Design" />
            <asp:BoundField DataField="Banner kubistisches Design Note" 
                HeaderText="Banner kubistisches Design Note" 
                SortExpression="Banner kubistisches Design Note" />
            <asp:BoundField DataField="Banner Livestyle" HeaderText="Banner Livestyle" 
                SortExpression="Banner Livestyle" />
            <asp:BoundField DataField="Banner Livestyle Note" 
                HeaderText="Banner Livestyle Note" 
                SortExpression="Banner Livestyle Note" />
            <asp:BoundField DataField="Banner Armaturen" HeaderText="Banner Armaturen" 
                SortExpression="Banner Armaturen" />
            <asp:BoundField DataField="Banner Armaturen Note" HeaderText="Banner Armaturen Note" 
                SortExpression="Banner Armaturen Note" />
            <asp:BoundField DataField="Deko Saeule SML Standard" HeaderText="Deko Saeule SML Standard" 
                SortExpression="Deko Saeule SML Standard" />
            <asp:BoundField DataField="Deko Saeule SML Standard Note" 
                HeaderText="Deko Saeule SML Standard Note" 
                SortExpression="Deko Saeule SML Standard Note" />
            <asp:BoundField DataField="Vase" HeaderText="Vase" 
                SortExpression="Vase" />
            <asp:BoundField DataField="Vase Note" HeaderText="Vase Note" 
                SortExpression="Vase Note" />
            <asp:BoundField DataField="Orchideen" HeaderText="Orchideen" 
                SortExpression="Orchideen" />
            <asp:BoundField DataField="Orchideen Note" 
                HeaderText="Orchideen Note" 
                SortExpression="Orchideen Note" />
            <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                SortExpression="Badetuch" />
            <asp:BoundField DataField="Badetuch Note" 
                HeaderText="Badetuch Note" 
                SortExpression="Badetuch Note" />
            <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufkleber QR Code Note" 
                HeaderText="Aufkleber QR Code Note" 
                SortExpression="Aufkleber QR Code Note" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie Note" 
                HeaderText="Aufsteller 5 Jahre Garantie Note" 
                SortExpression="Aufsteller 5 Jahre Garantie Note" />
            <asp:BoundField DataField="Aufkleber Wasser Splash" 
                HeaderText="Aufkleber Wasser Splash" 
                SortExpression="Aufkleber Wasser Splash" />
            <asp:BoundField DataField="Aufkleber Wasser Splash Note" 
                HeaderText="Aufkleber Wasser Splash Note" 
                SortExpression="Aufkleber Wasser Splash Note" />
            <asp:BoundField DataField="Aufkleber Logo" 
                HeaderText="Aufkleber Logo" 
                SortExpression="Aufkleber Logo" />
            <asp:BoundField DataField="Aufkleber Logo Note" 
                HeaderText="Aufkleber Logo Note" 
                SortExpression="Aufkleber Logo Note" />
            <asp:BoundField DataField="Deko Saeule Logo Standard" HeaderText="Deko Saeule Logo Standard" 
                SortExpression="Deko Saeule Logo Standard" />
            <asp:BoundField DataField="Deko Saeule Logo Standard Note" HeaderText="Deko Saeule Logo Standard Note" 
                SortExpression="Deko Saeule Logo Standard Note" />
            <asp:BoundField DataField="Mobile Icon Flower" HeaderText="Mobile Icon Flower" 
                SortExpression="Mobile Icon Flower" />
            <asp:BoundField DataField="Mobile Icon Flower Note" 
                HeaderText="Mobile Icon Flower Note" 
                SortExpression="Mobile Icon Flower Note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" 
                HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" 
                SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" 
                HeaderText="bemerkung" SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" 
                HeaderText="eingang" 
                SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" 
                SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" 
                HeaderText="kuenftige_dekos" SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="winterdeko_erhalten" HeaderText="winterdeko_erhalten" 
                SortExpression="winterdeko_erhalten" />
            <asp:BoundField DataField="winterdeko_genutzt" HeaderText="winterdeko_genutzt" 
                SortExpression="winterdeko_genutzt" />
            <asp:BoundField DataField="bewertung_winterdeko" HeaderText="bewertung_winterdeko" 
                SortExpression="bewertung_winterdeko" />
            
            
            
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
            
            
            
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [deko_2015_einsatzbericht_enjoy] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2015_einsatzbericht_enjoy] ([stammdaten_id], [datum], [Banner kubistisches Design], [Banner kubistisches Design Note], [Banner Livestyle], [Banner Livestyle Note], [Banner Armaturen], [Banner Armaturen Note], [Deko Saeule SML Standard], [Deko Saeule SML Standard Note], [Vase], [Vase Note], [Orchideen], [Orchideen Note], [Badetuch], [Badetuch Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Aufkleber Wasser Splash], [Aufkleber Wasser Splash Note], [Aufkleber Logo], [Aufkleber Logo Note], [Deko Saeule Logo Standard], [Deko Saeule Logo Standard Note], [Mobile Icon Flower], [Mobile Icon Flower Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @Banner_kubistisches_Design, @Banner_kubistisches_Design_Note, @Banner_Livestyle, @Banner_Livestyle_Note, @Banner_Armaturen, @Banner_Armaturen_Note, @Deko_Saeule_SML_Standard, @Deko_Saeule_SML_Standard_Note, @Vase, @Vase_Note, @Orchideen, @Orchideen_Note, @Badetuch, @Badetuch_Note, @Aufkleber_QR_Code, @Aufkleber_QR_Code_Note, @Aufsteller_5_Jahre_Garantie, @Aufsteller_5_Jahre_Garantie_Note, @Aufkleber_Wasser_Splash, @Aufkleber_Wasser_Splash_Note, @Aufkleber_Logo, @Aufkleber_Logo_Note, @Deko_Saeule_Logo_Standard, @Deko_Saeule_Logo_Standard_Note, @Mobile_Icon_Flower, @Mobile_Icon_Flower_Note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @winterdeko_erhalten, @winterdeko_genutzt, @bewertung_winterdeko, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [deko_2015_einsatzbericht_enjoy] WHERE ([stammdaten_id] = @stammdaten_id)" 
        
                    UpdateCommand="UPDATE [deko_2015_einsatzbericht_enjoy] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [Banner kubistisches Design] = @Banner_kubistisches_Design, [Banner kubistisches Design Note] = @Banner_kubistisches_Design_Note, [Banner Livestyle] = @Banner_Livestyle, [Banner Livestyle Note] = @Banner_Livestyle_Note, [Banner Armaturen] = @Banner_Armaturen, [Banner Armaturen Note] = @Banner_Armaturen_Note, [Deko Saeule SML Standard] = @Deko_Saeule_SML_Standard, [Deko Saeule SML Standard Note] = @Deko_Saeule_SML_Standard_Note, [Vase] = @Vase, [Vase Note] = @Vase_Note, [Orchideen] = @Orchideen, [Orchideen Note] = @Orchideen_Note, [Badetuch] = @Badetuch, [Badetuch Note] = @Badetuch_Note, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber QR Code Note] = @Aufkleber_QR_Code_Note, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] = @Aufsteller_5_Jahre_Garantie_Note, [Aufkleber Wasser Splash] = @Aufkleber_Wasser_Splash, [Aufkleber Wasser Splash Note] = @Aufkleber_Wasser_Splash_Note, [Aufkleber Logo] = @Aufkleber_Logo, [Aufkleber Logo Note] = @Aufkleber_Logo_Note, [Deko Saeule Logo Standard] = @Deko_Saeule_Logo_Standard, [Deko Saeule Logo Standard Note] = @Deko_Saeule_Logo_Standard_Note, [Mobile Icon Flower] = @Mobile_Icon_Flower, [Mobile Icon Flower Note] = @Mobile_Icon_Flower_Note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [winterdeko_erhalten] = @winterdeko_erhalten, [winterdeko_genutzt] = @winterdeko_genutzt, [bewertung_winterdeko] = @bewertung_winterdeko, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_kubistisches_Design" Type="Int32" />
            <asp:Parameter Name="Banner_kubistisches_Design_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Armaturen" Type="Int32" />
            <asp:Parameter Name="Banner_Armaturen_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SML_Standard" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SML_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Vase" Type="Int32" />
            <asp:Parameter Name="Vase_Note" Type="Int32" />
            <asp:Parameter Name="Orchideen" Type="Int32" />
            <asp:Parameter Name="Orchideen_Note" Type="Int32" />
            <asp:Parameter Name="Badetuch" Type="Int32" />
            <asp:Parameter Name="Badetuch_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Wasser_Splash" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Wasser_Splash_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_Logo_Standard" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_Logo_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Mobile_Icon_Flower" Type="Int32" />
            <asp:Parameter Name="Mobile_Icon_Flower_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="winterdeko_erhalten" Type="String" />
            <asp:Parameter Name="winterdeko_genutzt" Type="String" />
            <asp:Parameter Name="bewertung_winterdeko" Type="Int32" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="stammdaten_id" QueryStringField="id" 
                Type="Int32" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_kubistisches_Design" Type="Int32" />
            <asp:Parameter Name="Banner_kubistisches_Design_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Armaturen" Type="Int32" />
            <asp:Parameter Name="Banner_Armaturen_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SML_Standard" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SML_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Vase" Type="Int32" />
            <asp:Parameter Name="Vase_Note" Type="Int32" />
            <asp:Parameter Name="Orchideen" Type="Int32" />
            <asp:Parameter Name="Orchideen_Note" Type="Int32" />
            <asp:Parameter Name="Badetuch" Type="Int32" />
            <asp:Parameter Name="Badetuch_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Wasser_Splash" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Wasser_Splash_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_Logo_Standard" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_Logo_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Mobile_Icon_Flower" Type="Int32" />
            <asp:Parameter Name="Mobile_Icon_Flower_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="winterdeko_erhalten" Type="String" />
            <asp:Parameter Name="winterdeko_genutzt" Type="String" />
            <asp:Parameter Name="bewertung_winterdeko" Type="Int32" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
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

