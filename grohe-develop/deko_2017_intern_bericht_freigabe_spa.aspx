<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_intern.master" AutoEventWireup="false" CodeFile="deko_2017_intern_bericht_freigabe_spa.aspx.vb" Inherits="deko_2017_intern_bericht_freigabe_spa" Debug="true" %>

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
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="Banner_Rainshower_SmartControl" 
                HeaderText="Banner_Rainshower_SmartControl" 
                SortExpression="Banner_Rainshower_SmartControl" />
            <asp:BoundField DataField="Banner_Rainshower_SmartControl_Note" 
                HeaderText="Banner_Rainshower_SmartControl_Note" 
                SortExpression="Banner_Rainshower_SmartControl_Note" />
            <asp:BoundField DataField="column1" HeaderText="Banner SPA-Welt" 
                SortExpression="column1" />
            <asp:BoundField DataField="column2" 
                HeaderText="Banner SPA-Welt Note" 
                SortExpression="column2" />
            <asp:BoundField DataField="Banner_Grandera" HeaderText="Banner_Grandera" 
                SortExpression="Banner_Grandera" />
            <asp:BoundField DataField="Banner_Grandera_Note" HeaderText="Banner_Grandera_Note" 
                SortExpression="Banner_Grandera_Note" />
            <asp:BoundField DataField="Banner_Sensia_Arena" 
                HeaderText="Banner_Sensia_Arena" 
                SortExpression="Banner_Sensia_Arena" />
            <asp:BoundField DataField="Banner_Sensia_Arena_Note" 
                HeaderText="Banner_Sensia_Arena_Note" 
                SortExpression="Banner_Sensia_Arena_Note" />
            <asp:BoundField DataField="Dekosäule_Rainshower_Smart" HeaderText="Dekosäule_Rainshower_Smart" 
                SortExpression="Dekosäule_Rainshower_Smart" />
            <asp:BoundField DataField="Dekosäule_Rainshower_Smart_Note" HeaderText="Dekosäule_Rainshower_Smart_Note" 
                SortExpression="Dekosäule_Rainshower_Smart_Note" />
            <asp:BoundField DataField="column3" HeaderText="Dekowürfel Arena Set 3 Stk." 
                SortExpression="column3" />
            <asp:BoundField DataField="column4" 
                HeaderText="Dekowürfel Arena Set 3 Stk. Note" 
                SortExpression="column4" />
            <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit" HeaderText="Dekowürfel_Nachhaltigkeit" 
                SortExpression="Dekowürfel_Nachhaltigkeit" />
            <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit_Note" 
                HeaderText="Dekowürfel_Nachhaltigkeit_Note" 
                SortExpression="Dekowürfel_Nachhaltigkeit_Note" />
            <asp:BoundField DataField="column5" HeaderText="Mobilee SPA-Welt" 
                SortExpression="column5" />
            <asp:BoundField DataField="column6" 
                HeaderText="Mobilee SPA-Welt Note" 
                SortExpression="column6" />
            <asp:BoundField DataField="column7" 
                HeaderText="Dekokörbchen (Set klein/groß)" SortExpression="column7" />
            <asp:BoundField DataField="column8" 
                HeaderText="Dekokörbchen (Set klein/groß) Note " 
                SortExpression="column8" />
            <asp:BoundField DataField="Handtuch_50x100" 
                HeaderText="Handtuch_50x100" 
                SortExpression="Handtuch_50x100" />
            <asp:BoundField DataField="Handtuch_50x100_Note" 
                HeaderText="Handtuch_50x100_Note" 
                SortExpression="Handtuch_50x100_Note" />
            <asp:BoundField DataField="Handtuch_30x50" HeaderText="Handtuch_30x50" 
                SortExpression="Handtuch_30x50" />
            <asp:BoundField DataField="Handtuch_30x50_Note" HeaderText="Handtuch_30x50_Note" 
                SortExpression="Handtuch_30x50_Note" />
            <asp:BoundField DataField="Bürste" HeaderText="Bürste" 
                SortExpression="Bürste" />
            <asp:BoundField DataField="Bürste_Note" HeaderText="Bürste_Note" 
                SortExpression="Bürste_Note" />
            <asp:BoundField DataField="Seife" HeaderText="Seife" 
                SortExpression="Seife" />
            <asp:BoundField DataField="Seife_Note" HeaderText="Seife_Note" 
                SortExpression="Seife_Note" />
            <asp:BoundField DataField="Raumspray" HeaderText="Raumspray" 
                SortExpression="Raumspray" />
            <asp:BoundField DataField="Raumspray_Note" 
                HeaderText="Raumspray_Note" 
                SortExpression="Raumspray_Note" />
            <asp:BoundField DataField="Dig_Bilderrahmen" 
                HeaderText="Dig_Bilderrahmen" SortExpression="Dig_Bilderrahmen" />
            <asp:BoundField DataField="Dig_Bilderrahmen_Note" 
                HeaderText="Dig_Bilderrahmen_Note" 
                SortExpression="Dig_Bilderrahmen_Note" />
            <asp:BoundField DataField="Aufkleber_QR_Code" HeaderText="Aufkleber_QR_Code" 
                SortExpression="Aufkleber_QR_Code" />
            <asp:BoundField DataField="Aufkleber_QR_Code_Note" HeaderText="Aufkleber_QR_Code_Note" 
                SortExpression="Aufkleber_QR_Code_Note" />
            <asp:BoundField DataField="Aufkleber_Grohe_SPA_Logo" HeaderText="Aufkleber_Grohe_SPA_Logo" 
                SortExpression="Aufkleber_Grohe_SPA_Logo" />
            <asp:BoundField DataField="Aufkleber_Grohe_SPA_Logo_Note" 
                HeaderText="Aufkleber_Grohe_SPA_Logo_Note" 
                SortExpression="Aufkleber_Grohe_SPA_Logo_Note" />
            <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" HeaderText="Aufsteller_5_Jahre_Garantie" 
                SortExpression="Aufsteller_5_Jahre_Garantie" />
            <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie_Note" 
                HeaderText="Aufsteller_5_Jahre_Garantie_Note" 
                SortExpression="Aufsteller_5_Jahre_Garantie_Note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" 
                HeaderText="telefonische_ankuendigung" SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" 
                SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" 
                HeaderText="kuenftige_dekos" SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" 
                HeaderText="zweitanfahrt" SortExpression="zweitanfahrt" />
            
            
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [deko_2017_einsatzbericht_spa] WHERE [id] = @original_id" 
        InsertCommand="INSERT INTO [deko_2017_einsatzbericht_spa] ([stammdaten_id], [datum], [Banner Rainshower SmartControl], [Banner Rainshower SmartControl Note], [Banner SPA-Welt], [Banner SPA-Welt Note], [Banner Grandera], [Banner Grandera Note], [Banner Sensia Arena], [Banner Sensia Arena Note], [Dekosäule Rainshower Smart], [Dekosäule Rainshower Smart Note], [Dekowürfel Arena Set 3 Stk.], [Dekowürfel Arena Set 3 Stk.Note], [Dekowürfel Nachhaltigkeit], [Dekowürfel Nachhaltigkeit Note], [Mobilee SPA-Welt], [Mobilee SPA-Welt Note], [Dekokörbchen (Set klein/groß)], [Dekobörbchen (Set klein/groß) Note], [Handtuch 50x100], [Handtuch 50x100 Note], [Handtuch 30x50], [Handtuch 30x50 Note], [Bürste], [Bürste Note], [Seife], [Seife Note], [Raumspray], [Raumspray Note], [Dig Bilderrahmen], [Dig Bilderrahmen Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufkleber Grohe SPA Logo], [Aufkleber Grohe SPA  Logo Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @Banner_Rainshower_SmartControl, @Banner_Rainshower_SmartControl_Note, @column1, @column2, @Banner_Grandera, @Banner_Grandera_Note, @Banner_Sensia_Arena, @Banner_Sensia_Arena_Note, @Dekosäule_Rainshower_Smart, @Dekosäule_Rainshower_Smart_Note, @column3, @column4, @Dekowürfel_Nachhaltigkeit, @Dekowürfel_Nachhaltigkeit_Note, @column5, @column6, @column7, @column8, @Handtuch_50x100, @Handtuch_50x100_Note, @Handtuch_30x50, @Handtuch_30x50_Note, @Bürste, @Bürste_Note, @Seife, @Seife_Note, @Raumspray, @Raumspray_Note, @Dig_Bilderrahmen, @Dig_Bilderrahmen_Note, @Aufkleber_QR_Code, @Aufkleber_QR_Code_Note, @Aufkleber_Grohe_SPA_Logo, @Aufkleber_Grohe_SPA_Logo_Note, @Aufsteller_5_Jahre_Garantie, @Aufsteller_5_Jahre_Garantie_Note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @keine_deko_generell, @kuenftige_dekos, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT [id], [stammdaten_id], [datum], [Banner Rainshower SmartControl] AS Banner_Rainshower_SmartControl, [Banner Rainshower SmartControl Note] AS Banner_Rainshower_SmartControl_Note, [Banner SPA-Welt] AS column1, [Banner SPA-Welt Note] AS column2, [Banner Grandera] AS Banner_Grandera, [Banner Grandera Note] AS Banner_Grandera_Note, [Banner Sensia Arena] AS Banner_Sensia_Arena, [Banner Sensia Arena Note] AS Banner_Sensia_Arena_Note, [Dekosäule Rainshower Smart] AS Dekosäule_Rainshower_Smart, [Dekosäule Rainshower Smart Note] AS Dekosäule_Rainshower_Smart_Note, [Dekowürfel Arena Set 3 Stk.] AS column3, [Dekowürfel Arena Set 3 Stk.Note] AS column4, [Dekowürfel Nachhaltigkeit] AS Dekowürfel_Nachhaltigkeit, [Dekowürfel Nachhaltigkeit Note] AS Dekowürfel_Nachhaltigkeit_Note, [Mobilee SPA-Welt] AS column5, [Mobilee SPA-Welt Note] AS column6, [Dekokörbchen (Set klein/groß)] AS column7, [Dekobörbchen (Set klein/groß) Note] AS column8, [Handtuch 50x100] AS Handtuch_50x100, [Handtuch 50x100 Note] AS Handtuch_50x100_Note, [Handtuch 30x50] AS Handtuch_30x50, [Handtuch 30x50 Note] AS Handtuch_30x50_Note, [Bürste], [Bürste Note] AS Bürste_Note, [Seife], [Seife Note] AS Seife_Note, [Raumspray], [Raumspray Note] AS Raumspray_Note, [Dig Bilderrahmen] AS Dig_Bilderrahmen, [Dig Bilderrahmen Note] AS Dig_Bilderrahmen_Note, [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufkleber QR Code Note] AS Aufkleber_QR_Code_Note, [Aufkleber Grohe SPA Logo] AS Aufkleber_Grohe_SPA_Logo, [Aufkleber Grohe SPA  Logo Note] AS Aufkleber_Grohe_SPA_Logo_Note, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] AS Aufsteller_5_Jahre_Garantie_Note, [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt] FROM [deko_2017_einsatzbericht_spa] WHERE ([stammdaten_id] = @stammdaten_id)" 
        
        
        UpdateCommand="UPDATE [deko_2017_einsatzbericht_spa] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [Banner Rainshower SmartControl] = @Banner_Rainshower_SmartControl, [Banner Rainshower SmartControl Note] = @Banner_Rainshower_SmartControl_Note, [Banner SPA-Welt] = @column1, [Banner SPA-Welt Note] = @column2, [Banner Grandera] = @Banner_Grandera, [Banner Grandera Note] = @Banner_Grandera_Note, [Banner Sensia Arena] = @Banner_Sensia_Arena, [Banner Sensia Arena Note] = @Banner_Sensia_Arena_Note, [Dekosäule Rainshower Smart] = @Dekosäule_Rainshower_Smart, [Dekosäule Rainshower Smart Note] = @Dekosäule_Rainshower_Smart_Note, [Dekowürfel Arena Set 3 Stk.] = @column3, [Dekowürfel Arena Set 3 Stk.Note] = @column4, [Dekowürfel Nachhaltigkeit] = @Dekowürfel_Nachhaltigkeit, [Dekowürfel Nachhaltigkeit Note] = @Dekowürfel_Nachhaltigkeit_Note, [Mobilee SPA-Welt] = @column5, [Mobilee SPA-Welt Note] = @column6, [Dekokörbchen (Set klein/groß)] = @column7, [Dekobörbchen (Set klein/groß) Note] = @column8, [Handtuch 50x100] = @Handtuch_50x100, [Handtuch 50x100 Note] = @Handtuch_50x100_Note, [Handtuch 30x50] = @Handtuch_30x50, [Handtuch 30x50 Note] = @Handtuch_30x50_Note, [Bürste] = @Bürste, [Bürste Note] = @Bürste_Note, [Seife] = @Seife, [Seife Note] = @Seife_Note, [Raumspray] = @Raumspray, [Raumspray Note] = @Raumspray_Note, [Dig Bilderrahmen] = @Dig_Bilderrahmen, [Dig Bilderrahmen Note] = @Dig_Bilderrahmen_Note, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber QR Code Note] = @Aufkleber_QR_Code_Note, [Aufkleber Grohe SPA Logo] = @Aufkleber_Grohe_SPA_Logo, [Aufkleber Grohe SPA  Logo Note] = @Aufkleber_Grohe_SPA_Logo_Note, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] = @Aufsteller_5_Jahre_Garantie_Note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @original_id" 
        OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_Rainshower_SmartControl" Type="Int32" />
            <asp:Parameter Name="Banner_Rainshower_SmartControl_Note" Type="Int32" />
            <asp:Parameter Name="column1" Type="Int32" />
            <asp:Parameter Name="column2" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Sensia_Arena" Type="Int32" />
            <asp:Parameter Name="Banner_Sensia_Arena_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Rainshower_Smart" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Rainshower_Smart_Note" Type="Int32" />
            <asp:Parameter Name="column3" Type="Int32" />
            <asp:Parameter Name="column4" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit_Note" Type="Int32" />
            <asp:Parameter Name="column5" Type="Int32" />
            <asp:Parameter Name="column6" Type="Int32" />
            <asp:Parameter Name="column7" Type="Int32" />
            <asp:Parameter Name="column8" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50_Note" Type="Int32" />
            <asp:Parameter Name="Bürste" Type="Int32" />
            <asp:Parameter Name="Bürste_Note" Type="Int32" />
            <asp:Parameter Name="Seife" Type="Int32" />
            <asp:Parameter Name="Seife_Note" Type="Int32" />
            <asp:Parameter Name="Raumspray" Type="Int32" />
            <asp:Parameter Name="Raumspray_Note" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
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
            <asp:Parameter Name="Banner_Rainshower_SmartControl" Type="Int32" />
            <asp:Parameter Name="Banner_Rainshower_SmartControl_Note" Type="Int32" />
            <asp:Parameter Name="column1" Type="Int32" />
            <asp:Parameter Name="column2" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera" Type="Int32" />
            <asp:Parameter Name="Banner_Grandera_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Sensia_Arena" Type="Int32" />
            <asp:Parameter Name="Banner_Sensia_Arena_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Rainshower_Smart" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Rainshower_Smart_Note" Type="Int32" />
            <asp:Parameter Name="column3" Type="Int32" />
            <asp:Parameter Name="column4" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit_Note" Type="Int32" />
            <asp:Parameter Name="column5" Type="Int32" />
            <asp:Parameter Name="column6" Type="Int32" />
            <asp:Parameter Name="column7" Type="Int32" />
            <asp:Parameter Name="column8" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
            <asp:Parameter Name="Handtuch_50x100_Note" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
            <asp:Parameter Name="Handtuch_30x50_Note" Type="Int32" />
            <asp:Parameter Name="Bürste" Type="Int32" />
            <asp:Parameter Name="Bürste_Note" Type="Int32" />
            <asp:Parameter Name="Seife" Type="Int32" />
            <asp:Parameter Name="Seife_Note" Type="Int32" />
            <asp:Parameter Name="Raumspray" Type="Int32" />
            <asp:Parameter Name="Raumspray_Note" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
            <asp:Parameter Name="Dig_Bilderrahmen_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
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

