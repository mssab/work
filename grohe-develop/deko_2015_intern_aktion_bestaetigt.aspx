<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" Debug="true" AutoEventWireup="false" CodeFile="deko_2015_intern_aktion_bestaetigt.aspx.vb" Inherits="deko_2015_intern_aktion_bestaetigt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Bestätigte Aktionsberichte <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%pfert%">Thomas Göpfert</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="ort" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
            <asp:BoundField DataField="datum" HeaderText="Datum" SortExpression="datum" />
            <asp:BoundField DataField="Mitarbeiter" HeaderText="Mitarbeiter" 
                ReadOnly="True" SortExpression="Mitarbeiter" />
            
            <asp:BoundField DataField="id" HeaderText="id" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.name, dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, dbo.deko_2015_stammdaten.ort, dbo.deko_2015_stammdaten.dekoration, dbo.deko_2015_einsaetze.datum, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.deko_2015_stammdaten.freigabe_bericht_intern, dbo.deko_2015_stammdaten.freigabe_bilder_intern, dbo.deko_2015_stammdaten.id FROM dbo.deko_2015_stammdaten INNER JOIN dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id INNER JOIN dbo.deko_2015_einsaetze ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_einsaetze.stammdaten_id WHERE (dbo.deko_2015_stammdaten.freigabe_bericht_intern = 'Ja') and (dbo.deko_2015_stammdaten.freigabe_bilder_intern = 'Ja') and promotion_login.projektleiter like @promo">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="promo" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

