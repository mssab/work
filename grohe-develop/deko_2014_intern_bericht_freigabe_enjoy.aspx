<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="true" CodeFile="deko_2014_intern_bericht_freigabe_enjoy.aspx.vb" Inherits="deko_2014_intern_bericht_freigabe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1>Eingabe Grohe Standard</h1>
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
            <asp:CommandField ShowEditButton="True" CancelText="Abbruch" EditText="Bearbeiten" UpdateText="Speichern"  />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="aufkleber_grohe_logo" 
                HeaderText="aufkleber_grohe_logo" SortExpression="aufkleber_grohe_logo" />
            <asp:BoundField DataField="aufkleber_grohe_logo_note" 
                HeaderText="aufkleber_grohe_logo_note" 
                SortExpression="aufkleber_grohe_logo_note" />
            <asp:BoundField DataField="aufkleber_wasser" HeaderText="aufkleber_wasser" 
                SortExpression="aufkleber_wasser" />
            <asp:BoundField DataField="aufkleber_wasser_note" 
                HeaderText="aufkleber_wasser_note" 
                SortExpression="aufkleber_wasser_note" />
            <asp:BoundField DataField="banner_kubistisch" HeaderText="banner_kubistisch" 
                SortExpression="banner_kubistisch" />
            <asp:BoundField DataField="banner_kubistisch_note" HeaderText="banner_kubistisch_note" 
                SortExpression="banner_kubistisch_note" />
            <asp:BoundField DataField="banner_kind_neu" HeaderText="banner_kind_neu" 
                SortExpression="banner_kind_neu" />
            <asp:BoundField DataField="banner_kind_neu_note" 
                HeaderText="banner_kind_neu_note" SortExpression="banner_kind_neu_note" />
            <asp:BoundField DataField="banner_minta_touch" HeaderText="banner_minta_touch" 
                SortExpression="banner_minta_touch" />
            <asp:BoundField DataField="banner_minta_touch_note" HeaderText="banner_minta_touch_note" 
                SortExpression="banner_minta_touch_note" />
            <asp:BoundField DataField="mobile_icon_flower" HeaderText="mobile_icon_flower" 
                SortExpression="mobile_icon_flower" />
            <asp:BoundField DataField="mobile_icon_flower_note" 
                HeaderText="mobile_icon_flower_note" 
                SortExpression="mobile_icon_flower_note" />
            <asp:BoundField DataField="aufkleber_icon_flower" HeaderText="aufkleber_icon_flower" 
                SortExpression="aufkleber_icon_flower" />
            <asp:BoundField DataField="aufkleber_icon_flower_note" 
                HeaderText="aufkleber_icon_flower_note" 
                SortExpression="aufkleber_icon_flower_note" />
            <asp:BoundField DataField="wuerfel_made_in_germany" HeaderText="deko_cube" 
                SortExpression="wuerfel_made_in_germany" />
            <asp:BoundField DataField="wuerfel_made_in_germany_note" 
                HeaderText="deko_cube_note" 
                SortExpression="wuerfel_made_in_germany_note" />
            <asp:BoundField DataField="aufkleber_qr_code" 
                HeaderText="aufkleber_qr_code" SortExpression="aufkleber_qr_code" />
            <asp:BoundField DataField="aufkleber_qr_code_note" 
                HeaderText="aufkleber_qr_code_note" 
                SortExpression="aufkleber_qr_code_note" />
            <asp:BoundField DataField="aufsteller_5_jahre_garantie" 
                HeaderText="aufsteller_5_jahre_garantie" 
                SortExpression="aufsteller_5_jahre_garantie" />
            <asp:BoundField DataField="aufsteller_5_jahre_garantie_note" 
                HeaderText="aufsteller_5_jahre_garantie_note" 
                SortExpression="aufsteller_5_jahre_garantie_note" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="display_mit_beleuchtung" 
                SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_mit_beleuchtung_note" 
                HeaderText="display_mit_beleuchtung_note" 
                SortExpression="display_mit_beleuchtung_note" />
            <asp:BoundField DataField="display_ohne_beleuchtung" HeaderText="display_ohne_beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung_note" HeaderText="display_ohne_beleuchtung_note" 
                SortExpression="display_ohne_beleuchtung_note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" 
                SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" 
                HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" 
                HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" 
                HeaderText="eingang" SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" 
                SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" 
                HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="winterdeko_erhalten" HeaderText="winterdeko_erhalten" 
                SortExpression="winterdeko_erhalten" />
            <asp:BoundField DataField="winterdeko_genutzt" 
                HeaderText="winterdeko_genutzt" SortExpression="winterdeko_genutzt" />
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
        DeleteCommand="DELETE FROM [deko_2014_einsatzbericht_enjoy] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2014_einsatzbericht_enjoy] ([stammdaten_id], [datum], [aufkleber_grohe_logo], [aufkleber_grohe_logo_note], [aufkleber_wasser], [aufkleber_wasser_note], [banner_kubistisch], [banner_kubistisch_note], [banner_kind_neu], [banner_kind_neu_note], [banner_minta_touch], [banner_minta_touch_note], [mobile_icon_flower], [mobile_icon_flower_note], [aufkleber_icon_flower], [aufkleber_icon_flower_note], [wuerfel_made_in_germany], [wuerfel_made_in_germany_note], [aufkleber_qr_code], [aufkleber_qr_code_note], [aufsteller_5_jahre_garantie], [aufsteller_5_jahre_garantie_note], [display_mit_beleuchtung], [display_mit_beleuchtung_note], [display_ohne_beleuchtung], [display_ohne_beleuchtung_note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @aufkleber_grohe_logo, @aufkleber_grohe_logo_note, @aufkleber_wasser, @aufkleber_wasser_note, @banner_kubistisch, @banner_kubistisch_note, @banner_kind_neu, @banner_kind_neu_note, @banner_minta_touch, @banner_minta_touch_note, @mobile_icon_flower, @mobile_icon_flower_note, @aufkleber_icon_flower, @aufkleber_icon_flower_note, @wuerfel_made_in_germany, @wuerfel_made_in_germany_note, @aufkleber_qr_code, @aufkleber_qr_code_note, @aufsteller_5_jahre_garantie, @aufsteller_5_jahre_garantie_note, @display_mit_beleuchtung, @display_mit_beleuchtung_note, @display_ohne_beleuchtung, @display_ohne_beleuchtung_note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @winterdeko_erhalten, @winterdeko_genutzt, @bewertung_winterdeko, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [deko_2014_einsatzbericht_enjoy] WHERE ([stammdaten_id] = @stammdaten_id)" 
        UpdateCommand="UPDATE [deko_2014_einsatzbericht_enjoy] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_grohe_logo_note] = @aufkleber_grohe_logo_note, [aufkleber_wasser] = @aufkleber_wasser, [aufkleber_wasser_note] = @aufkleber_wasser_note, [banner_kubistisch] = @banner_kubistisch, [banner_kubistisch_note] = @banner_kubistisch_note, [banner_kind_neu] = @banner_kind_neu, [banner_kind_neu_note] = @banner_kind_neu_note, [banner_minta_touch] = @banner_minta_touch, [banner_minta_touch_note] = @banner_minta_touch_note, [mobile_icon_flower] = @mobile_icon_flower, [mobile_icon_flower_note] = @mobile_icon_flower_note, [aufkleber_icon_flower] = @aufkleber_icon_flower, [aufkleber_icon_flower_note] = @aufkleber_icon_flower_note, [wuerfel_made_in_germany] = @wuerfel_made_in_germany, [wuerfel_made_in_germany_note] = @wuerfel_made_in_germany_note, [aufkleber_qr_code] = @aufkleber_qr_code, [aufkleber_qr_code_note] = @aufkleber_qr_code_note, [aufsteller_5_jahre_garantie] = @aufsteller_5_jahre_garantie, [aufsteller_5_jahre_garantie_note] = @aufsteller_5_jahre_garantie_note, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_mit_beleuchtung_note] = @display_mit_beleuchtung_note, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [display_ohne_beleuchtung_note] = @display_ohne_beleuchtung_note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [winterdeko_erhalten] = @winterdeko_erhalten, [winterdeko_genutzt] = @winterdeko_genutzt, [bewertung_winterdeko] = @bewertung_winterdeko, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_wasser" Type="Int32" />
            <asp:Parameter Name="aufkleber_wasser_note" Type="Int32" />
            <asp:Parameter Name="banner_kubistisch" Type="Int32" />
            <asp:Parameter Name="banner_kubistisch_note" Type="Int32" />
            <asp:Parameter Name="banner_kind_neu" Type="Int32" />
            <asp:Parameter Name="banner_kind_neu_note" Type="Int32" />
            <asp:Parameter Name="banner_minta_touch" Type="Int32" />
            <asp:Parameter Name="banner_minta_touch_note" Type="Int32" />
            <asp:Parameter Name="mobile_icon_flower" Type="Int32" />
            <asp:Parameter Name="mobile_icon_flower_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_icon_flower" Type="Int32" />
            <asp:Parameter Name="aufkleber_icon_flower_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
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
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_wasser" Type="Int32" />
            <asp:Parameter Name="aufkleber_wasser_note" Type="Int32" />
            <asp:Parameter Name="banner_kubistisch" Type="Int32" />
            <asp:Parameter Name="banner_kubistisch_note" Type="Int32" />
            <asp:Parameter Name="banner_kind_neu" Type="Int32" />
            <asp:Parameter Name="banner_kind_neu_note" Type="Int32" />
            <asp:Parameter Name="banner_minta_touch" Type="Int32" />
            <asp:Parameter Name="banner_minta_touch_note" Type="Int32" />
            <asp:Parameter Name="mobile_icon_flower" Type="Int32" />
            <asp:Parameter Name="mobile_icon_flower_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_icon_flower" Type="Int32" />
            <asp:Parameter Name="aufkleber_icon_flower_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
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

