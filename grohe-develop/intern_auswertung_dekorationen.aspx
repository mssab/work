<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_auswertung_dekorationen.aspx.vb" Inherits="intern_auswertung_dekorationen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Auswertung Dekorationen</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" ShowFooter="true">
        <Columns>
            <asp:BoundField DataField="Kategorie" HeaderText="Kategorie" 
                SortExpression="Kategorie" />
            <asp:BoundField DataField="Gemeldete Partner" HeaderText="Gemeldete Partner" 
                SortExpression="Gemeldete Partner" />
            <asp:BoundField DataField="Absage bei Terminabsprache" 
                HeaderText="Absage bei Terminabsprache" 
                SortExpression="Absage bei Terminabsprache" />
            <asp:BoundField DataField="Anzahl besuchte Outlets" 
                HeaderText="Anzahl besuchte Outlets" SortExpression="Anzahl besuchte Outlets" />
            <asp:BoundField DataField="Anzahl Zweitbesuche" 
                HeaderText="Anzahl Zweitbesuche" SortExpression="Anzahl Zweitbesuche" />
            <asp:BoundField DataField="Anzahl Deko" HeaderText="Anzahl Deko" 
                SortExpression="Anzahl Deko" />
            <asp:BoundField DataField="Anzahl nicht Deko" HeaderText="Anzahl nicht Deko" 
                SortExpression="Anzahl nicht Deko" />
            <asp:BoundField DataField="Anzahl Abgabe" HeaderText="Anzahl Abgabe" 
                SortExpression="Anzahl Abgabe" />
            <asp:BoundField DataField="Keine Deko gewuenscht" 
                HeaderText="Keine Deko gewünscht" SortExpression="Keine Deko gewuenscht" />
            <asp:BoundField DataField="Keine Deko moeglich" 
                HeaderText="Keine Deko möglich" SortExpression="Keine Deko moeglich" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <FooterStyle BackColor="#A09E97" Font-Bold="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT dbo.bericht_gemeldete_partner.dekoration AS Kategorie, dbo.bericht_gemeldete_partner.anzahl AS [Gemeldete Partner], dbo.bericht_telefonische_absage.anzahl AS [Absage bei Terminabsprache], dbo.bericht_besuchte_partner.anzahl AS [Anzahl besuchte Outlets], dbo.bericht_zweitanfahrten.anzahl AS [Anzahl Zweitbesuche], dbo.bericht_deko_durchgefuehrt.anzahl AS [Anzahl Deko], dbo.bericht_nicht_deko.anzahl AS [Anzahl nicht Deko], dbo.bericht_abgabe.anzahl AS [Anzahl Abgabe], dbo.bericht_keine_deko_gewuenscht.anzahl AS [Keine Deko gewuenscht], dbo.bericht_keine_deko_moeglich.anzahl AS [Keine Deko moeglich] FROM dbo.bericht_keine_deko_moeglich INNER JOIN dbo.bericht_besuchte_partner ON dbo.bericht_keine_deko_moeglich.deko = dbo.bericht_besuchte_partner.deko INNER JOIN dbo.bericht_gemeldete_partner ON dbo.bericht_besuchte_partner.deko = dbo.bericht_gemeldete_partner.dekoration INNER JOIN dbo.bericht_telefonische_absage ON dbo.bericht_keine_deko_moeglich.deko = dbo.bericht_telefonische_absage.deko INNER JOIN dbo.bericht_deko_durchgefuehrt ON dbo.bericht_gemeldete_partner.dekoration = dbo.bericht_deko_durchgefuehrt.deko INNER JOIN dbo.bericht_abgabe ON dbo.bericht_deko_durchgefuehrt.deko = dbo.bericht_abgabe.deko INNER JOIN dbo.bericht_keine_deko_gewuenscht ON dbo.bericht_telefonische_absage.deko = dbo.bericht_keine_deko_gewuenscht.deko INNER JOIN dbo.bericht_nicht_deko ON dbo.bericht_keine_deko_gewuenscht.deko = dbo.bericht_nicht_deko.deko INNER JOIN dbo.bericht_zweitanfahrten ON dbo.bericht_nicht_deko.deko = dbo.bericht_zweitanfahrten.deko">
    </asp:SqlDataSource>
    <br />
    <br />
    <h1>Auswertung Schaufenster</h1>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" EnableModelValidation="True" ShowFooter="true">
        <HeaderStyle BackColor="#A09E97" />
        <Columns>
            <asp:BoundField DataField="Kategorie" HeaderText="Kategorie" 
                SortExpression="Kategorie" />
            
            <asp:BoundField DataField="Anzahl besuchte Outlets" 
                HeaderText="Anzahl besuchte Outlets" 
                SortExpression="Anzahl besuchte Outlets" />
            <asp:BoundField DataField="Angaben Schaufenster Banner" 
                HeaderText="Angaben Schaufenster Banner" 
                SortExpression="Angaben Schaufenster Banner" />
            <asp:BoundField DataField="Anzahl Schaufenster 1 Banner" 
                HeaderText="Anzahl Schaufenster 1 Banner" 
                SortExpression="Anzahl Schaufenster 1 Banner" />
            <asp:BoundField DataField="Anzahl Schaufenster 2 Banner" 
                HeaderText="Anzahl Schaufenster 2 Banner" 
                SortExpression="Anzahl Schaufenster 2 Banner" />
            <asp:BoundField DataField="Anzahl Schaufenster 3 Banner" 
                HeaderText="Anzahl Schaufenster 3 Banner" 
                SortExpression="Anzahl Schaufenster 3 Banner" />
            <asp:BoundField DataField="Angaben Schaufenster Attraktivität" 
                HeaderText="Angaben Schaufenster Attraktivität" 
                SortExpression="Angaben Schaufenster Attraktivität" />
            <asp:BoundField DataField="Schaufenster Attraktivität A" 
                HeaderText="Schaufenster Attraktivität A" 
                SortExpression="Schaufenster Attraktivität A" />
            <asp:BoundField DataField="Schaufenster Attraktivität B" 
                HeaderText="Schaufenster Attraktivität B" 
                SortExpression="Schaufenster Attraktivität B" />
            <asp:BoundField DataField="Schaufenster Attraktivität C" 
                HeaderText="Schaufenster Attraktivität C" 
                SortExpression="Schaufenster Attraktivität C" />
            <asp:BoundField DataField="Schaufenster Strom- anschluss" 
                HeaderText="Schaufenster Strom- anschluss" 
                SortExpression="Schaufenster Strom- anschluss" />
        </Columns>
        <FooterStyle BackColor="#A09E97" Font-Bold="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        SelectCommand="SELECT dbo.bericht_besuchte_partner.deko AS Kategorie, dbo.bericht_besuchte_partner.anzahl AS [Anzahl besuchte Outlets], dbo.bericht_schaufenster_angaben.anzahl AS [Angaben Schaufenster Banner], dbo.bericht_anzahl_banner_1.anzahl AS [Anzahl Schaufenster 1 Banner], dbo.bericht_anzahl_banner_2.anzahl AS [Anzahl Schaufenster 2 Banner], dbo.bericht_anzahl_banner_3.anzahl AS [Anzahl Schaufenster 3 Banner], dbo.bericht_attraktivitaet.anzahl AS [Angaben Schaufenster Attraktivität], dbo.bericht_schaufenster_a.anzahl AS [Schaufenster Attraktivität A], dbo.bericht_schaufenster_b.anzahl AS [Schaufenster Attraktivität B], dbo.bericht_schaufenster_c.anzahl AS [Schaufenster Attraktivität C], dbo.bericht_stromanschluss.anzahl AS [Schaufenster Strom- anschluss] FROM dbo.bericht_besuchte_partner INNER JOIN dbo.bericht_anzahl_banner_1 ON dbo.bericht_besuchte_partner.deko = dbo.bericht_anzahl_banner_1.deko INNER JOIN dbo.bericht_anzahl_banner_3 ON dbo.bericht_anzahl_banner_1.deko = dbo.bericht_anzahl_banner_3.deko INNER JOIN dbo.bericht_schaufenster_a ON dbo.bericht_anzahl_banner_3.deko = dbo.bericht_schaufenster_a.deko INNER JOIN dbo.bericht_schaufenster_c ON dbo.bericht_schaufenster_a.deko = dbo.bericht_schaufenster_c.deko INNER JOIN dbo.bericht_schaufenster_b ON dbo.bericht_schaufenster_c.deko = dbo.bericht_schaufenster_b.deko INNER JOIN dbo.bericht_stromanschluss ON dbo.bericht_schaufenster_b.deko = dbo.bericht_stromanschluss.deko INNER JOIN dbo.bericht_attraktivitaet ON dbo.bericht_stromanschluss.deko = dbo.bericht_attraktivitaet.deko INNER JOIN dbo.bericht_anzahl_banner_2 ON dbo.bericht_attraktivitaet.deko = dbo.bericht_anzahl_banner_2.deko INNER JOIN dbo.bericht_schaufenster_angaben ON dbo.bericht_anzahl_banner_1.deko = dbo.bericht_schaufenster_angaben.deko">
    </asp:SqlDataSource>
    <br />
    <br />
    <h1>Auswertung keine Dekoration</h1>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" EnableModelValidation="True" ShowFooter="true">
    <HeaderStyle BackColor="#A09E97" />
        <Columns>
            <asp:BoundField DataField="Kategorie" HeaderText="Kategorie" 
                SortExpression="Kategorie" />
            <asp:BoundField DataField="Keine Deko möglich" HeaderText="Keine Deko möglich" 
                SortExpression="Keine Deko möglich" />
            <asp:BoundField DataField="Anzahl nicht angetroffen" 
                HeaderText="Anzahl nicht angetroffen" 
                SortExpression="Anzahl nicht angetroffen" />
            <asp:BoundField DataField="Anzahl Betriebsferien" 
                HeaderText="Anzahl Betriebsferien" SortExpression="Anzahl Betriebsferien" />
            <asp:BoundField DataField="Anzahl Umbau" HeaderText="Anzahl Umbau" 
                SortExpression="Anzahl Umbau" />
            <asp:BoundField DataField="Anzahl Umzug" HeaderText="Anzahl Umzug" 
                SortExpression="Anzahl Umzug" />
            <asp:BoundField DataField="Anzahl Geschäftsaufgabe" 
                HeaderText="Anzahl Geschäftsaufgabe" SortExpression="Anzahl Geschäftsaufgabe" />
            <asp:BoundField DataField="Anzahl nicht existent" 
                HeaderText="Anzahl nicht existent" SortExpression="Anzahl nicht existent" />
            <asp:BoundField DataField="Anzahl kein Schaufenster" 
                HeaderText="Anzahl kein Schaufenster" 
                SortExpression="Anzahl kein Schaufenster" />
        </Columns>
        <FooterStyle BackColor="#A09E97" Font-Bold="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT dbo.bericht_keine_deko_moeglich.deko AS Kategorie, dbo.bericht_keine_deko_moeglich.anzahl AS [Keine Deko möglich], dbo.bericht_nicht_angetroffen.anzahl AS [Anzahl nicht angetroffen], dbo.bericht_betriebsferien.anzahl AS [Anzahl Betriebsferien], dbo.bericht_umbau.anzahl AS [Anzahl Umbau], dbo.bericht_umzug.anzahl AS [Anzahl Umzug], dbo.bericht_geschaeftsaufgabe.anzahl AS [Anzahl Geschäftsaufgabe], dbo.bericht_nicht_existent.anzahl AS [Anzahl nicht existent], dbo.bericht_keine_schaufenster.anzahl AS [Anzahl kein Schaufenster] FROM dbo.bericht_nicht_existent INNER JOIN dbo.bericht_nicht_angetroffen INNER JOIN dbo.bericht_keine_deko_moeglich ON dbo.bericht_nicht_angetroffen.deko = dbo.bericht_keine_deko_moeglich.deko INNER JOIN dbo.bericht_betriebsferien ON dbo.bericht_nicht_angetroffen.deko = dbo.bericht_betriebsferien.deko INNER JOIN dbo.bericht_umbau ON dbo.bericht_betriebsferien.deko = dbo.bericht_umbau.deko INNER JOIN dbo.bericht_umzug ON dbo.bericht_umbau.deko = dbo.bericht_umzug.deko INNER JOIN dbo.bericht_geschaeftsaufgabe ON dbo.bericht_umzug.deko = dbo.bericht_geschaeftsaufgabe.deko ON dbo.bericht_nicht_existent.deko = dbo.bericht_geschaeftsaufgabe.deko INNER JOIN dbo.bericht_keine_schaufenster ON dbo.bericht_nicht_existent.deko = dbo.bericht_keine_schaufenster.deko">
    </asp:SqlDataSource>
</asp:Content>

