<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2016_master_intern.master" AutoEventWireup="false" CodeFile="deko_2016_intern_aktion_alle.aspx.vb" Inherits="deko_2016_intern_aktion_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Alle Einsatzberichte <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%pfert%">Thomas Göpfert</asp:ListItem>
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
        
        
        SelectCommand="SELECT dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.name, dbo.deko_2016_stammdaten.strasse, dbo.deko_2016_stammdaten.plz, dbo.deko_2016_stammdaten.ort, dbo.deko_2016_stammdaten.dekoration, dbo.deko_2016_einsaetze.datum, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.deko_2016_stammdaten.freigabe_bericht_extern, dbo.deko_2016_stammdaten.freigabe_bilder_extern,dbo.deko_2016_stammdaten.freigabe_bericht_intern, dbo.deko_2016_stammdaten.freigabe_bilder_intern, dbo.deko_2016_stammdaten.id FROM dbo.deko_2016_stammdaten INNER JOIN dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id Left JOIN dbo.deko_2016_einsaetze ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsaetze.stammdaten_id where promotion_login.projektleiter like @promo">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="promo" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

