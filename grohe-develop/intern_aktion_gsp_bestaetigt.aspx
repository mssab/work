<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" Debug="true" AutoEventWireup="false" CodeFile="intern_aktion_gsp_bestaetigt.aspx.vb" Inherits="intern_aktion_gsp_bestaetigt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Bestätigte Aktionsberichte <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%Hasse%">Claudia Hasse</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="3" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" SortExpression="JobNr" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" SortExpression="Ort" />
            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                SortExpression="GSP" />
            <asp:BoundField DataField="Fertigstelldatum" HeaderText="Fertigstelldatum" 
                SortExpression="Fertigstelldatum" DataFormatString="{0:d}" />
            <asp:BoundField DataField="anmeldename" HeaderText="Dekorateur" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT gsp_auftraege.JobNr, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.GSP, gsp_auftraege.Fertigstelldatum, promotion_login.anmeldename, gsp_auftraege.freigabe_bericht_extern, gsp_auftraege.freigabe_bilder_extern, gsp_auftraege.freigabe_bericht_intern, gsp_auftraege.freigabe_bilder_intern, gsp_auftraege.id FROM gsp_auftraege LEFT OUTER JOIN promotion_login ON gsp_auftraege.Team = promotion_login.id LEFT OUTER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id  WHERE (dbo.gsp_auftraege.freigabe_bericht_intern = 'ja') OR (dbo.gsp_auftraege.freigabe_bilder_intern = 'ja') order by gsp_auftraege.JobNr desc">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="promo" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

