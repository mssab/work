<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="false" CodeFile="deko_2015_intern_bericht_freigabe_spa.aspx.vb" Inherits="deko_2015_intern_bericht_freigabe_spa" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Freigabe Grohe SPA</h1>
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
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" UpdateText="Speichern" CancelText="Abbruch" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="Banner F Digital Deluxe" 
                HeaderText="Banner F Digital Deluxe" 
                SortExpression="Banner F Digital Deluxe" />
            <asp:BoundField DataField="Banner F Digital  Deluxe Note" 
                HeaderText="Banner F Digital  Deluxe Note" 
                SortExpression="Banner F Digital  Deluxe Note" />
            <asp:BoundField DataField="Banner Essence" HeaderText="Banner Essence" 
                SortExpression="Banner Essence" />
            <asp:BoundField DataField="Banner Essence Note" 
                HeaderText="Banner Essence Note" 
                SortExpression="Banner Essence Note" />
            <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                SortExpression="Banner Grandera" />
            <asp:BoundField DataField="Banner Grandera Note" HeaderText="Banner Grandera Note" 
                SortExpression="Banner Grandera Note" />
            <asp:BoundField DataField="Aufkleber F Digital Bluetooth" 
                HeaderText="Aufkleber F Digital Bluetooth" 
                SortExpression="Aufkleber F Digital Bluetooth" />
            <asp:BoundField DataField="Aufkleber F Digital Bluetooth Note" 
                HeaderText="Aufkleber F Digital Bluetooth Note" 
                SortExpression="Aufkleber F Digital Bluetooth Note" />
            <asp:BoundField DataField="Deko Wuerfel Essence" HeaderText="Deko Wuerfel Essence" 
                SortExpression="Deko Wuerfel Essence" />
            <asp:BoundField DataField="Deko Wuerfel Essence Note" HeaderText="Deko Wuerfel Essence Note" 
                SortExpression="Deko Wuerfel Essence Note" />
            <asp:BoundField DataField="Aufkleber Grohe SPA Logo" HeaderText="Aufkleber Grohe SPA Logo" 
                SortExpression="Aufkleber Grohe SPA Logo" />
            <asp:BoundField DataField="Aufkleber Grohe SPA  Logo Note" 
                HeaderText="Aufkleber Grohe SPA  Logo Note" 
                SortExpression="Aufkleber Grohe SPA  Logo Note" />
            <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufkleber QR Code Note" 
                HeaderText="Aufkleber QR Code Note" 
                SortExpression="Aufkleber QR Code Note" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie Note" 
                HeaderText="Aufsteller 5 Jahre Garantie Note" 
                SortExpression="Aufsteller 5 Jahre Garantie Note" />
            <asp:BoundField DataField="Deko Saeule SPA Logo" 
                HeaderText="Deko Saeule SPA Logo" SortExpression="Deko Saeule SPA Logo" />
            <asp:BoundField DataField="Deko Saeule SPA Logo Note" 
                HeaderText="Deko Saeule SPA Logo Note" 
                SortExpression="Deko Saeule SPA Logo Note" />
            <asp:BoundField DataField="Body Lotion" 
                HeaderText="Body Lotion" 
                SortExpression="Body Lotion" />
            <asp:BoundField DataField="Body Lotion Note" 
                HeaderText="Body Lotion Note" 
                SortExpression="Body Lotion Note" />
            <asp:BoundField DataField="Handtuch 50x100" HeaderText="Handtuch 50x100" 
                SortExpression="Handtuch 50x100" />
            <asp:BoundField DataField="Handtuch 50x100 Note" HeaderText="Handtuch 50x100 Note" 
                SortExpression="Handtuch 50x100 Note" />
            <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" 
                SortExpression="Handtuch 30x50" />
            <asp:BoundField DataField="Handtuch 30x50 Note" HeaderText="Handtuch 30x50 Note" 
                SortExpression="Handtuch 30x50 Note" />
            <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                SortExpression="Schwamm" />
            <asp:BoundField DataField="Schwamm Note" HeaderText="Schwamm Note" 
                SortExpression="Schwamm Note" />
            <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" 
                SortExpression="Duschgel" />
            <asp:BoundField DataField="Duschgel Note" 
                HeaderText="Duschgel Note" 
                SortExpression="Duschgel Note" />
            <asp:BoundField DataField="Dig Bilderrahmen" 
                HeaderText="Dig Bilderrahmen" SortExpression="Dig Bilderrahmen" />
            <asp:BoundField DataField="Dig Bilderrahmen Note" 
                HeaderText="Dig Bilderrahmen Note" 
                SortExpression="Dig Bilderrahmen Note" />
            <asp:BoundField DataField="Deko Steine Hot Stones" HeaderText="Deko Steine Hot Stones" 
                SortExpression="Deko Steine Hot Stones" />
            <asp:BoundField DataField="Deko Steine Hot Stones Note" HeaderText="Deko Steine Hot Stones Note" 
                SortExpression="Deko Steine Hot Stones Note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" 
                SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" 
                HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" 
                HeaderText="bemerkung" SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" HeaderText="eingang" 
                SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" 
                SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="winterdeko_erhalten" 
                HeaderText="winterdeko_erhalten" SortExpression="winterdeko_erhalten" />
            <asp:BoundField DataField="winterdeko_genutzt" HeaderText="winterdeko_genutzt" 
                SortExpression="winterdeko_genutzt" />
            <asp:BoundField DataField="bewertung_winterdeko" 
                HeaderText="bewertung_winterdeko" SortExpression="bewertung_winterdeko" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" 
                HeaderText="zweitanfahrt" SortExpression="zweitanfahrt" />
            
            
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [deko_2015_einsatzbericht_spa] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2015_einsatzbericht_spa] ([stammdaten_id], [datum], [Banner F Digital Deluxe], [Banner F Digital  Deluxe Note], [Banner Essence], [Banner Essence Note], [Banner Grandera], [Banner Grandera Note], [Aufkleber F Digital Bluetooth], [Aufkleber F Digital Bluetooth Note], [Deko Wuerfel Essence], [Deko Wuerfel Essence Note], [Aufkleber Grohe SPA Logo], [Aufkleber Grohe SPA  Logo Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Deko Saeule SPA Logo], [Deko Saeule SPA Logo Note], [Body Lotion], [Body Lotion Note], [Handtuch 50x100], [Handtuch 50x100 Note], [Handtuch 30x50], [Handtuch 30x50 Note], [Schwamm], [Schwamm Note], [Duschgel], [Duschgel Note], [Dig Bilderrahmen], [Dig Bilderrahmen Note], [Deko Steine Hot Stones], [Deko Steine Hot Stones Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @Banner_F_Digital_Deluxe, @Banner_F_Digital_Deluxe_Note, @Banner_Essence, @Banner_Essence_Note, @Banner_Grandera, @Banner_Grandera_Note, @Aufkleber_F_Digital_Bluetooth, @Aufkleber_F_Digital_Bluetooth_Note, @Deko_Wuerfel_Essence, @Deko_Wuerfel_Essence_Note, @Aufkleber_Grohe_SPA_Logo, @Aufkleber_Grohe_SPA_Logo_Note, @Aufkleber_QR_Code, @Aufkleber_QR_Code_Note, @Aufsteller_5_Jahre_Garantie, @Aufsteller_5_Jahre_Garantie_Note, @Deko_Saeule_SPA_Logo, @Deko_Saeule_SPA_Logo_Note, @Body_Lotion, @Body_Lotion_Note, @Handtuch_50x100, @Handtuch_50x100_Note, @Handtuch_30x50, @Handtuch_30x50_Note, @Schwamm, @Schwamm_Note, @Duschgel, @Duschgel_Note, @Dig_Bilderrahmen, @Dig_Bilderrahmen_Note, @Deko_Steine_Hot_Stones, @Deko_Steine_Hot_Stones_Note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @winterdeko_erhalten, @winterdeko_genutzt, @bewertung_winterdeko, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [deko_2015_einsatzbericht_spa] WHERE ([stammdaten_id] = @stammdaten_id)" 
        
        
        UpdateCommand="UPDATE [deko_2015_einsatzbericht_spa] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [Banner F Digital Deluxe] = @Banner_F_Digital_Deluxe, [Banner F Digital  Deluxe Note] = @Banner_F_Digital_Deluxe_Note, [Banner Essence] = @Banner_Essence, [Banner Essence Note] = @Banner_Essence_Note, [Banner Grandera] = @Banner_Grandera, [Banner Grandera Note] = @Banner_Grandera_Note, [Aufkleber F Digital Bluetooth] = @Aufkleber_F_Digital_Bluetooth, [Aufkleber F Digital Bluetooth Note] = @Aufkleber_F_Digital_Bluetooth_Note, [Deko Wuerfel Essence] = @Deko_Wuerfel_Essence, [Deko Wuerfel Essence Note] = @Deko_Wuerfel_Essence_Note, [Aufkleber Grohe SPA Logo] = @Aufkleber_Grohe_SPA_Logo, [Aufkleber Grohe SPA  Logo Note] = @Aufkleber_Grohe_SPA_Logo_Note, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber QR Code Note] = @Aufkleber_QR_Code_Note, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] = @Aufsteller_5_Jahre_Garantie_Note, [Deko Saeule SPA Logo] = @Deko_Saeule_SPA_Logo, [Deko Saeule SPA Logo Note] = @Deko_Saeule_SPA_Logo_Note, [Body Lotion] = @Body_Lotion, [Body Lotion Note] = @Body_Lotion_Note, [Handtuch 50x100] = @Handtuch_50x100, [Handtuch 50x100 Note] = @Handtuch_50x100_Note, [Handtuch 30x50] = @Handtuch_30x50, [Handtuch 30x50 Note] = @Handtuch_30x50_Note, [Schwamm] = @Schwamm, [Schwamm Note] = @Schwamm_Note, [Duschgel] = @Duschgel, [Duschgel Note] = @Duschgel_Note, [Dig Bilderrahmen] = @Dig_Bilderrahmen, [Dig Bilderrahmen Note] = @Dig_Bilderrahmen_Note, [Deko Steine Hot Stones] = @Deko_Steine_Hot_Stones, [Deko Steine Hot Stones Note] = @Deko_Steine_Hot_Stones_Note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [winterdeko_erhalten] = @winterdeko_erhalten, [winterdeko_genutzt] = @winterdeko_genutzt, [bewertung_winterdeko] = @bewertung_winterdeko, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id" 
        OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_F_Digital_Deluxe" Type="Int32" />
            <asp:Parameter Name="Banner_F_Digital_Deluxe_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Essence" Type="Int32" />
            <asp:Parameter Name="Banner_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth" Type="Int32" />
            <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Wuerfel_Essence" Type="Int32" />
            <asp:Parameter Name="Deko_Wuerfel_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Body_Lotion" Type="Int32" />
            <asp:Parameter Name="Body_Lotion_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50_Note" Type="Int32" />
            <asp:Parameter Name="Schwamm" Type="Int32" />
            <asp:Parameter Name="Schwamm_Note" Type="Int32" />
            <asp:Parameter Name="Duschgel" Type="Int32" />
            <asp:Parameter Name="Duschgel_Note" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Steine_Hot_Stones" Type="Int32" />
            <asp:Parameter Name="Deko_Steine_Hot_Stones_Note" Type="Int32" />
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
            <asp:QueryStringParameter DefaultValue="0" Name="stammdaten_id" 
                QueryStringField="id" Type="Int32" />
        </SelectParameters>        
        <UpdateParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_F_Digital_Deluxe" Type="Int32" />
            <asp:Parameter Name="Banner_F_Digital_Deluxe_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Essence" Type="Int32" />
            <asp:Parameter Name="Banner_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth" Type="Int32" />
            <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Wuerfel_Essence" Type="Int32" />
            <asp:Parameter Name="Deko_Wuerfel_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Deko_Saeule_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Body_Lotion" Type="Int32" />
            <asp:Parameter Name="Body_Lotion_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50_Note" Type="Int32" />
            <asp:Parameter Name="Schwamm" Type="Int32" />
            <asp:Parameter Name="Schwamm_Note" Type="Int32" />
            <asp:Parameter Name="Duschgel" Type="Int32" />
            <asp:Parameter Name="Duschgel_Note" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen_Note" Type="Int32" />
            <asp:Parameter Name="Deko_Steine_Hot_Stones" Type="Int32" />
            <asp:Parameter Name="Deko_Steine_Hot_Stones_Note" Type="Int32" />
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

