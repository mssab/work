﻿<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_bericht_freigabe_spa.aspx.vb" Inherits="intern_bericht_freigabe_spa" %>

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
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True">
        <HeaderStyle BackColor="#A09E97" />
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
            <asp:BoundField DataField="aufkleber_allure" HeaderText="aufkleber_allure" 
                SortExpression="aufkleber_allure" />
            <asp:BoundField DataField="aufkleber_allure_note" 
                HeaderText="aufkleber_allure_note" SortExpression="aufkleber_allure_note" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="aufkleber_qr" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="aufkleber_qr_note" HeaderText="aufkleber_qr_note" 
                SortExpression="aufkleber_qr_note" />
            <asp:BoundField DataField="banner_power_and_soul" 
                HeaderText="banner_power_and_soul" SortExpression="banner_power_and_soul" />
            <asp:BoundField DataField="banner_power_and_soul_note" 
                HeaderText="banner_power_and_soul_note" 
                SortExpression="banner_power_and_soul_note" />
            <asp:BoundField DataField="banner_woman" HeaderText="banner_woman" 
                SortExpression="banner_woman" />
            <asp:BoundField DataField="banner_woman_note" HeaderText="banner_woman_note" 
                SortExpression="banner_woman_note" />
            <asp:BoundField DataField="banner_grandera" HeaderText="banner_grandera" 
                SortExpression="banner_grandera" />
            <asp:BoundField DataField="banner_grandera_note" 
                HeaderText="banner_grandera_note" SortExpression="banner_grandera_note" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="wuerfel_millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_millieu_note" 
                HeaderText="wuerfel_millieu_note" SortExpression="wuerfel_millieu_note" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="wuerfel_germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="wuerfel_germany_note" 
                HeaderText="wuerfel_germany_note" SortExpression="wuerfel_germany_note" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="aufsteller_garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="aufsteller_garantie_note" 
                HeaderText="aufsteller_garantie_note" 
                SortExpression="aufsteller_garantie_note" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="display_mit_beleuchtung" SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_mit_beleuchtung_note" 
                HeaderText="display_mit_beleuchtung_note" 
                SortExpression="display_mit_beleuchtung_note" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="display_ohne_beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung_note" 
                HeaderText="display_ohne_beleuchtung_note" 
                SortExpression="display_ohne_beleuchtung_note" />
            <asp:BoundField DataField="schwamm" HeaderText="schwamm" 
                SortExpression="schwamm" />
            <asp:BoundField DataField="schwamm_note" HeaderText="schwamm_note" 
                SortExpression="schwamm_note" />
            <asp:BoundField DataField="duschgel" HeaderText="duschgel" 
                SortExpression="duschgel" />
            <asp:BoundField DataField="duschgel_note" HeaderText="duschgel_note" 
                SortExpression="duschgel_note" />
            <asp:BoundField DataField="bilderrahmen" HeaderText="bilderrahmen" 
                SortExpression="bilderrahmen" />
            <asp:BoundField DataField="bilderrahmen_note" HeaderText="bilderrahmen_note" 
                SortExpression="bilderrahmen_note" />
            <asp:BoundField DataField="anzahl_banner" HeaderText="anzahl_banner" 
                SortExpression="anzahl_banner" />
            <asp:BoundField DataField="stromanschluss_vorhanden" 
                HeaderText="stromanschluss_vorhanden" 
                SortExpression="stromanschluss_vorhanden" />
            <asp:BoundField DataField="stromanschluss_gelegt" 
                HeaderText="stromanschluss_gelegt" SortExpression="stromanschluss_gelegt" />
            <asp:BoundField DataField="anzahl_mehrfachsteckdosen" 
                HeaderText="anzahl_mehrfachsteckdosen" 
                SortExpression="anzahl_mehrfachsteckdosen" />
            <asp:BoundField DataField="schaufensterhoehe" HeaderText="schaufensterhoehe" 
                SortExpression="schaufensterhoehe" />
            <asp:BoundField DataField="attraktivitaet" HeaderText="attraktivitaet" 
                SortExpression="attraktivitaet" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" 
                HeaderText="aktivitaet_bemerkung" SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" 
                HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" HeaderText="eingang" 
                SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" 
                HeaderText="keine_deko_generell" SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [einsatzbericht_spa] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [einsatzbericht_spa] ([stammdaten_id], [datum], [aufkleber_grohe_logo], [aufkleber_grohe_logo_note], [aufkleber_allure], [aufkleber_allure_note], [aufkleber_qr], [aufkleber_qr_note], [banner_power_and_soul], [banner_power_and_soul_note], [banner_woman], [banner_woman_note], [banner_grandera], [banner_grandera_note], [wuerfel_millieu], [wuerfel_millieu_note], [wuerfel_germany], [wuerfel_germany_note], [aufsteller_garantie], [aufsteller_garantie_note], [display_mit_beleuchtung], [display_mit_beleuchtung_note], [display_ohne_beleuchtung], [display_ohne_beleuchtung_note], [schwamm], [schwamm_note], [duschgel], [duschgel_note], [bilderrahmen], [bilderrahmen_note], [anzahl_banner], [stromanschluss_vorhanden], [stromanschluss_gelegt], [anzahl_mehrfachsteckdosen], [schaufensterhoehe], [attraktivitaet], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @aufkleber_grohe_logo, @aufkleber_grohe_logo_note, @aufkleber_allure, @aufkleber_allure_note, @aufkleber_qr, @aufkleber_qr_note, @banner_power_and_soul, @banner_power_and_soul_note, @banner_woman, @banner_woman_note, @banner_grandera, @banner_grandera_note, @wuerfel_millieu, @wuerfel_millieu_note, @wuerfel_germany, @wuerfel_germany_note, @aufsteller_garantie, @aufsteller_garantie_note, @display_mit_beleuchtung, @display_mit_beleuchtung_note, @display_ohne_beleuchtung, @display_ohne_beleuchtung_note, @schwamm, @schwamm_note, @duschgel, @duschgel_note, @bilderrahmen, @bilderrahmen_note, @anzahl_banner, @stromanschluss_vorhanden, @stromanschluss_gelegt, @anzahl_mehrfachsteckdosen, @schaufensterhoehe, @attraktivitaet, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [einsatzbericht_spa] WHERE ([stammdaten_id] = @stammdaten_id)" 
        UpdateCommand="UPDATE [einsatzbericht_spa] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_grohe_logo_note] = @aufkleber_grohe_logo_note, [aufkleber_allure] = @aufkleber_allure, [aufkleber_allure_note] = @aufkleber_allure_note, [aufkleber_qr] = @aufkleber_qr, [aufkleber_qr_note] = @aufkleber_qr_note, [banner_power_and_soul] = @banner_power_and_soul, [banner_power_and_soul_note] = @banner_power_and_soul_note, [banner_woman] = @banner_woman, [banner_woman_note] = @banner_woman_note, [banner_grandera] = @banner_grandera, [banner_grandera_note] = @banner_grandera_note, [wuerfel_millieu] = @wuerfel_millieu, [wuerfel_millieu_note] = @wuerfel_millieu_note, [wuerfel_germany] = @wuerfel_germany, [wuerfel_germany_note] = @wuerfel_germany_note, [aufsteller_garantie] = @aufsteller_garantie, [aufsteller_garantie_note] = @aufsteller_garantie_note, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_mit_beleuchtung_note] = @display_mit_beleuchtung_note, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [display_ohne_beleuchtung_note] = @display_ohne_beleuchtung_note, [schwamm] = @schwamm, [schwamm_note] = @schwamm_note, [duschgel] = @duschgel, [duschgel_note] = @duschgel_note, [bilderrahmen] = @bilderrahmen, [bilderrahmen_note] = @bilderrahmen_note, [anzahl_banner] = @anzahl_banner, [stromanschluss_vorhanden] = @stromanschluss_vorhanden, [stromanschluss_gelegt] = @stromanschluss_gelegt, [anzahl_mehrfachsteckdosen] = @anzahl_mehrfachsteckdosen, [schaufensterhoehe] = @schaufensterhoehe, [attraktivitaet] = @attraktivitaet, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_note" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul_note" Type="Int32" />
            <asp:Parameter Name="banner_woman" Type="Int32" />
            <asp:Parameter Name="banner_woman_note" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="banner_grandera_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="schwamm_note" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="duschgel_note" Type="Int32" />
            <asp:Parameter Name="bilderrahmen" Type="Int32" />
            <asp:Parameter Name="bilderrahmen_note" Type="Int32" />
            <asp:Parameter Name="anzahl_banner" Type="Int32" />
            <asp:Parameter Name="stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="stromanschluss_gelegt" Type="String" />
            <asp:Parameter Name="anzahl_mehrfachsteckdosen" Type="Int32" />
            <asp:Parameter Name="schaufensterhoehe" Type="Int32" />
            <asp:Parameter Name="attraktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
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
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_note" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul_note" Type="Int32" />
            <asp:Parameter Name="banner_woman" Type="Int32" />
            <asp:Parameter Name="banner_woman_note" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="banner_grandera_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="schwamm_note" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="duschgel_note" Type="Int32" />
            <asp:Parameter Name="bilderrahmen" Type="Int32" />
            <asp:Parameter Name="bilderrahmen_note" Type="Int32" />
            <asp:Parameter Name="anzahl_banner" Type="Int32" />
            <asp:Parameter Name="stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="stromanschluss_gelegt" Type="String" />
            <asp:Parameter Name="anzahl_mehrfachsteckdosen" Type="Int32" />
            <asp:Parameter Name="schaufensterhoehe" Type="Int32" />
            <asp:Parameter Name="attraktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
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

