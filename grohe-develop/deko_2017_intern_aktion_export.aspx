<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_intern.master" Debug="true" AutoEventWireup="false" CodeFile="deko_2017_intern_aktion_export.aspx.vb" Inherits="deko_2014_intern_aktion_bestaetigt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Export</h1>
    
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Export" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="Typ" HeaderText="Typ" SortExpression="Typ" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Name2" HeaderText="Name2" SortExpression="Name2" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" 
                SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" SortExpression="Ort" />
            <asp:BoundField DataField="Dekoration" HeaderText="Dekoration" 
                SortExpression="Dekoration" />
            
            <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Banner Eurostyle" 
                HeaderText="Banner Eurostyle" 
                SortExpression="Banner Eurostyle" />
            <asp:BoundField DataField="Banner Eurostyle Note" 
                HeaderText="Banner Eurostyle Note" 
                SortExpression="Banner Eurostyle Note" />
            <asp:BoundField DataField="Banner Livestyle" 
                HeaderText="Banner Livestyle" 
                SortExpression="Banner Livestyle" />
            <asp:BoundField DataField="Banner Livestyle Note" 
                HeaderText="Banner Livestyle Note" 
                SortExpression="Banner Livestyle Note" />
            <asp:BoundField DataField="Banner Essence" 
                HeaderText="Banner Essence" 
                SortExpression="Banner Essence" />
            <asp:BoundField DataField="Banner Essence Note" 
                HeaderText="Banner Essence Note" 
                SortExpression="Banner Essence Note" />
            <asp:BoundField DataField="Aufkleber Aquatunes" 
                HeaderText="Aufkleber Aquatunes" SortExpression="Aufkleber Aquatunes" />
            <asp:BoundField DataField="Aufkleber Aquatunes Note" 
                HeaderText="Aufkleber Aquatunes Note" 
                SortExpression="Aufkleber Aquatunes Note" />
            <asp:BoundField DataField="Dekosäule Aquatunes" 
                HeaderText="Dekosäule Aquatunes" 
                SortExpression="Dekosäule Aquatunes" />
            <asp:BoundField DataField="Dekosäule Aquatunes Note" 
                HeaderText="Dekosäule Aquatunes Note" 
                SortExpression="Dekosäule Aquatunes Note" />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit" 
                HeaderText="Dekowürfel Nachhaltigkeit" 
                SortExpression="Dekowürfel Nachhaltigkeit" />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit Note" 
                HeaderText="Dekowürfel Nachhaltigkeit Note" 
                SortExpression="Dekowürfel Nachhaltigkeit Note" />
            <asp:BoundField DataField="Dekowürfel Made in Germany" 
                HeaderText="Dekowürfel Made in Germany" 
                SortExpression="Dekowürfel Made in Germany" />
            <asp:BoundField DataField="Dekowürfel Made in Germany Note" 
                HeaderText="Dekowürfel Made in Germany Note" 
                SortExpression="Dekowürfel Made in Germany Note" />
            <asp:BoundField DataField="Dekowürfel Essence" HeaderText="Dekowürfel Essence" 
                SortExpression="Dekowürfel Essence" />
            <asp:BoundField DataField="Dekowürfel Essence Note" 
                HeaderText="Dekowürfel Essence Note" 
                SortExpression="Dekowürfel Essence Note" />
            <asp:BoundField DataField="Dekosäule Logo Standard" HeaderText="Dekosäule Logo Standard" 
                SortExpression="Dekosäule Logo Standard" />
            <asp:BoundField DataField="Dekosäule Logo Standard Note" 
                HeaderText="Dekosäule Logo Standard Note" 
                SortExpression="Dekosäule Logo Standard Note" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie Note" HeaderText="Aufsteller 5 Jahre Garantie Note" 
                SortExpression="Aufsteller 5 Jahre Garantie Note" />
            <asp:BoundField DataField="Aufkleber QR Code" 
                HeaderText="Aufkleber QR Code" SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufkleber QR Code Note" 
                HeaderText="Aufkleber QR Code Note" 
                SortExpression="Aufkleber QR Code Note" />
            <asp:BoundField DataField="Aufkleber Logo" 
                HeaderText="Aufkleber Logo" 
                SortExpression="Aufkleber Logo" />
            <asp:BoundField DataField="Aufkleber Logo Note" HeaderText="Aufkleber Logo Note" 
                SortExpression="Aufkleber Logo Note" />
            <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                SortExpression="Badetuch" />
            <asp:BoundField DataField="Badetuch Note" HeaderText="Badetuch Note" 
                SortExpression="Badetuch Note" />
            <asp:BoundField DataField="Banner Rainshower SmartControl" HeaderText="Banner Rainshower SmartControl" 
                SortExpression="Banner Rainshower SmartControl" />
            <asp:BoundField DataField="Banner Rainshower SmartControl Note" 
                HeaderText="Banner Rainshower SmartControl Note" 
                SortExpression="Banner Rainshower SmartControl Note" />
            <asp:BoundField DataField="Banner SPA-Welt" 
                HeaderText="Banner SPA-Welt" SortExpression="Banner SPA-Welt" />
            <asp:BoundField DataField="Banner SPA-Welt Note" 
                HeaderText="Banner SPA-Welt Note" 
                SortExpression="Banner SPA-Welt Note" />
            <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                SortExpression="Banner Grandera" />
            <asp:BoundField DataField="Banner Grandera Note" HeaderText="Banner Grandera Note" 
                SortExpression="Banner Grandera Note" />
            <asp:BoundField DataField="Banner Sensia Arena" HeaderText="Banner Sensia Arena" 
                SortExpression="Banner Sensia Arena" />
            <asp:BoundField DataField="Banner Sensia Arena Note" 
                HeaderText="Banner Sensia Arena Note" SortExpression="Banner Sensia Arena Note" />
            <asp:BoundField DataField="Dekosäule Rainshower Smart" HeaderText="Dekosäule Rainshower Smart" 
                SortExpression="Dekosäule Rainshower Smart" />
            <asp:BoundField DataField="Dekosäule Rainshower Smart Note" 
                HeaderText="Dekosäule Rainshower Smart Note" 
                SortExpression="Dekosäule Rainshower Smart Note" />
            <asp:BoundField DataField="Dekowürfel Arena Set 3 Stk." 
                HeaderText="Dekowürfel Arena Set 3 Stk." SortExpression="Dekowürfel Arena Set 3 Stk." />
            <asp:BoundField DataField="Dekowürfel Arena Set 3 Stk.Note" HeaderText="Dekowürfel Arena Set 3 Stk.Note" 
                SortExpression="Dekowürfel Arena Set 3 Stk.Note" />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit(SPA)" HeaderText="Dekowürfel Nachhaltigkeit(SPA)" 
                SortExpression="Dekowürfel Nachhaltigkeit(SPA)" />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit Note(SPA)" HeaderText="Dekowürfel Nachhaltigkeit Note(SPA)" 
                SortExpression="Dekowürfel Nachhaltigkeit Note(SPA)" />
            <asp:BoundField DataField="Mobilee SPA-Welt" HeaderText="Mobilee SPA-Welt" 
                SortExpression="Mobilee SPA-Welt" />
            <asp:BoundField DataField="Mobilee SPA-Welt Note" HeaderText="Mobilee SPA-Welt Note" 
                SortExpression="Mobilee SPA-Welt Note" />
            <asp:BoundField DataField="Dekokörbchen (Set klein/groß)" HeaderText="Dekokörbchen (Set klein/groß)" SortExpression="Dekokörbchen (Set klein/groß)" />
            <asp:BoundField DataField="Dekobörbchen (Set klein/groß) Note" HeaderText="Dekobörbchen (Set klein/groß) Note" SortExpression="Dekobörbchen (Set klein/groß) Note" />
            <asp:BoundField DataField="Handtuch 50x100" HeaderText="Handtuch 50x100" SortExpression="Handtuch 50x100" />
            <asp:BoundField DataField="Handtuch 50x100 Note" HeaderText="Handtuch 50x100 Note" SortExpression="Handtuch 50x100 Note" />
            <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" SortExpression="Handtuch 30x50" />
            <asp:BoundField DataField="Handtuch 30x50 Note" HeaderText="Handtuch 30x50 Note" SortExpression="Handtuch 30x50 Note" />
            <asp:BoundField DataField="Bürste" HeaderText="Bürste" SortExpression="Bürste" />
            <asp:BoundField DataField="Bürste Note" HeaderText="Bürste Note" SortExpression="Bürste Note" />
            <asp:BoundField DataField="Seife" HeaderText="Seife" SortExpression="Seife" />
            <asp:BoundField DataField="Seife Note" HeaderText="Seife Note" SortExpression="Seife Note" />
            <asp:BoundField DataField="Raumspray" HeaderText="Raumspray" SortExpression="Raumspray" />
            <asp:BoundField DataField="Raumspray Note" HeaderText="Raumspray Note" SortExpression="Raumspray Note" />
            <asp:BoundField DataField="Dig Bilderrahmen" HeaderText="Dig Bilderrahmen" SortExpression="Dig Bilderrahmen" />
            <asp:BoundField DataField="Dig Bilderrahmen Note" HeaderText="Dig Bilderrahmen Note" SortExpression="Dig Bilderrahmen Note" />
            <asp:BoundField DataField="Aufkleber QR Code(SPA)" HeaderText="Aufkleber QR Code(SPA)" SortExpression="Aufkleber QR Code(SPA)" />
            <asp:BoundField DataField="Aufkleber QR Code Note(SPA)" HeaderText="Aufkleber QR Code Note(SPA)" SortExpression="Aufkleber QR Code Note(SPA)" />
            <asp:BoundField DataField="Aufkleber Grohe SPA Logo" HeaderText="Aufkleber Grohe SPA Logo" SortExpression="Aufkleber Grohe SPA Logo" />
            <asp:BoundField DataField="Aufkleber Grohe SPA  Logo Note" HeaderText="Aufkleber Grohe SPA  Logo Note" SortExpression="Aufkleber Grohe SPA  Logo Note" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie(SPA)" HeaderText="Aufsteller 5 Jahre Garantie(SPA)" SortExpression="Aufsteller 5 Jahre Garantie(SPA)" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie Note(SPA)" HeaderText="Aufsteller 5 Jahre Garantie Note(SPA)" SortExpression="Aufsteller 5 Jahre Garantie Note(SPA)" />
            <asp:BoundField DataField="Anzahl möglicher Banner" HeaderText="Anzahl möglicher Banner" SortExpression="Anzahl möglicher Banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" HeaderText="schaufenster_stromanschluss_vorhanden" SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" HeaderText="attraktivitaet_der_fenster" SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" HeaderText="eingang" SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" SortExpression="zweitanfahrt" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" SortExpression="versand_gewuenscht" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT * FROM [Gesamtauswertung_2016]">
    </asp:SqlDataSource>
</asp:Content>

