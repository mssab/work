<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_aktion_fehlend.aspx.vb" Inherits="intern_aktion_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Alle Einsatzberichte <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%Hasse%">Claudia Hasse</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="Ort" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
            <asp:BoundField DataField="datum" HeaderText="Datum" SortExpression="datum" />
            <asp:BoundField DataField="Mitarbeiter" HeaderText="Mitarbeiter" 
                ReadOnly="True" SortExpression="Mitarbeiter" />
            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="Bericht extern" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="Bilder extern" 
                SortExpression="freigabe_bilder_extern" />
            <asp:BoundField DataField="freigabe_bericht_intern" 
                HeaderText="Bericht intern" SortExpression="freigabe_bericht_intern" />
            <asp:BoundField DataField="freigabe_bilder_intern" 
                HeaderText="Bilder intern" SortExpression="freigabe_bilder_intern" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        
        SelectCommand="SELECT dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, dbo.stammdaten.dekoration, dbo.einsaetze.datum, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.id FROM dbo.stammdaten INNER JOIN dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN dbo.einsaetze ON dbo.stammdaten.id = dbo.einsaetze.stammdaten_id WHERE (dbo.promotion_login.projektleiter LIKE @promo) AND (dbo.stammdaten.freigabe_bericht_extern = 'nein') OR (dbo.promotion_login.projektleiter LIKE @promo) AND (dbo.stammdaten.freigabe_bilder_extern = 'nein') OR (dbo.promotion_login.projektleiter LIKE @promo) AND (dbo.stammdaten.freigabe_bericht_intern = 'nein') OR (dbo.promotion_login.projektleiter LIKE @promo) AND (dbo.stammdaten.freigabe_bilder_intern = 'nein')">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="promo" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

