<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" Debug="true" AutoEventWireup="false" CodeFile="deko_2014_intern_aktion_export.aspx.vb" Inherits="deko_2014_intern_aktion_bestaetigt" %>

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
            <asp:BoundField DataField="typ" HeaderText="typ" SortExpression="typ" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="name2" HeaderText="name2" SortExpression="name2" />
            <asp:BoundField DataField="strasse" HeaderText="strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="plz" 
                SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="ort" SortExpression="ort" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" 
                SortExpression="telefon" />
            
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="dekoration" HeaderText="dekoration" 
                SortExpression="dekoration" />
            <asp:BoundField DataField="datum" 
                HeaderText="datum" 
                SortExpression="datum" />
            <asp:BoundField DataField="Dekorateur" 
                HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Standard Aufkleber Grohe Logo" 
                HeaderText="Standard Aufkleber Grohe Logo" 
                SortExpression="Standard Aufkleber Grohe Logo" />
            <asp:BoundField DataField="Standard Aufkleber Tempesta" 
                HeaderText="Standard Aufkleber Tempesta" 
                SortExpression="Standard Aufkleber Tempesta" />
            <asp:BoundField DataField="Standard Aufkleber QR" 
                HeaderText="Standard Aufkleber QR" 
                SortExpression="Standard Aufkleber QR" />
            <asp:BoundField DataField="Standard Banner Eurocube" 
                HeaderText="Standard Banner Eurocube" 
                SortExpression="Standard Banner Eurocube" />
            <asp:BoundField DataField="Standard Banner Kind" 
                HeaderText="Standard Banner Kind" SortExpression="Standard Banner Kind" />
            <asp:BoundField DataField="Standard Banner Grohtherm" 
                HeaderText="Standard Banner Grohtherm" 
                SortExpression="Standard Banner Grohtherm" />
            <asp:BoundField DataField="Standard Würfel Milleu" 
                HeaderText="Standard Würfel Milleu" 
                SortExpression="Standard Würfel Milleu" />
            <asp:BoundField DataField="Standard Würfel Germany" 
                HeaderText="Standard Würfel Germany" 
                SortExpression="Standard Würfel Germany" />
            <asp:BoundField DataField="Standard Aufsteller Garantie" 
                HeaderText="Standard Aufsteller Garantie" 
                SortExpression="Standard Aufsteller Garantie" />
            <asp:BoundField DataField="Standard Display mit Beleuchtung" 
                HeaderText="Standard Display mit Beleuchtung" 
                SortExpression="Standard Display mit Beleuchtung" />
            <asp:BoundField DataField="Standard Display ohne Beleuchtung" 
                HeaderText="Standard Display ohne Beleuchtung" 
                SortExpression="Standard Display ohne Beleuchtung" />
            <asp:BoundField DataField="Standard Quitsche Ente" 
                HeaderText="Standard Quitsche Ente" 
                SortExpression="Standard Quitsche Ente" />
            <asp:BoundField DataField="SPA Aufkleber Grohe Logo" HeaderText="SPA Aufkleber Grohe Logo" 
                SortExpression="SPA Aufkleber Grohe Logo" />
            <asp:BoundField DataField="SPA Aufkleber Allure" 
                HeaderText="SPA Aufkleber Allure" 
                SortExpression="SPA Aufkleber Allure" />
            <asp:BoundField DataField="SPA Aufkleber QR" HeaderText="SPA Aufkleber QR" 
                SortExpression="SPA Aufkleber QR" />
            <asp:BoundField DataField="SPA Banner Power and Soul" 
                HeaderText="SPA Banner Power and Soul" 
                SortExpression="SPA Banner Power and Soul" />
            <asp:BoundField DataField="SPA Banner Woman" HeaderText="SPA Banner Woman" 
                SortExpression="SPA Banner Woman" />
            <asp:BoundField DataField="SPA Banner Grandera" HeaderText="SPA Banner Grandera" 
                SortExpression="SPA Banner Grandera" />
            <asp:BoundField DataField="SPA Würfel Millieu" 
                HeaderText="SPA Würfel Millieu" SortExpression="SPA Würfel Millieu" />
            <asp:BoundField DataField="SPA Würfel Germany" 
                HeaderText="SPA Würfel Germany" 
                SortExpression="SPA Würfel Germany" />
            <asp:BoundField DataField="SPA Aufsteller Garantie" 
                HeaderText="SPA Aufsteller Garantie" 
                SortExpression="SPA Aufsteller Garantie" />
            <asp:BoundField DataField="SPA Display mit Beleuchtung" HeaderText="SPA Display mit Beleuchtung" 
                SortExpression="SPA Display mit Beleuchtung" />
            <asp:BoundField DataField="SPA Display ohne Beleuchtung" HeaderText="SPA Display ohne Beleuchtung" 
                SortExpression="SPA Display ohne Beleuchtung" />
            <asp:BoundField DataField="SPA Schwamm" HeaderText="SPA Schwamm" 
                SortExpression="SPA Schwamm" />
            <asp:BoundField DataField="SPA Duschgel" HeaderText="SPA Duschgel" 
                SortExpression="SPA Duschgel" />
            <asp:BoundField DataField="SPA Bilderrahmen" 
                HeaderText="SPA Bilderrahmen" 
                SortExpression="SPA Bilderrahmen" />
            <asp:BoundField DataField="anzahl_banner" 
                HeaderText="anzahl_banner" SortExpression="anzahl_banner" />
            <asp:BoundField DataField="stromanschluss_vorhanden" 
                HeaderText="stromanschluss_vorhanden" 
                SortExpression="stromanschluss_vorhanden" />
            <asp:BoundField DataField="stromanschluss_gelegt" HeaderText="stromanschluss_gelegt" 
                SortExpression="stromanschluss_gelegt" />
            <asp:BoundField DataField="anzahl_mehrfachsteckdosen" HeaderText="anzahl_mehrfachsteckdosen" 
                SortExpression="anzahl_mehrfachsteckdosen" />
            <asp:BoundField DataField="schaufensterhoehe" HeaderText="schaufensterhoehe" 
                SortExpression="schaufensterhoehe" />
            <asp:BoundField DataField="attraktivitaet" 
                HeaderText="attraktivitaet" SortExpression="attraktivitaet" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" 
                HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" 
                HeaderText="bemerkung" SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="keine_deko_generell" HeaderText="keine_deko_generell" 
                SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT * FROM [Gesamtuebersicht]">
    </asp:SqlDataSource>
</asp:Content>

