<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="false" Debug="true" CodeFile="deko_2014_intern_aktion_offen.aspx.vb" Inherits="deko_2014_intern_aktion_offen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Einsatzberichte mit offenen Freigaben <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%pfert%">Thomas Göpfert</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True" >
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
            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="Bericht" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="Bilder" 
                SortExpression="freigabe_bilder_extern" />
                <asp:BoundField DataField="freigabe_bericht_intern" HeaderText="Bericht" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_intern" HeaderText="Bilder" 
                SortExpression="freigabe_bilder_extern" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.name, dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, dbo.deko_2014_stammdaten.ort, dbo.deko_2014_stammdaten.dekoration, dbo.deko_2014_einsaetze.datum, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.deko_2014_stammdaten.freigabe_bericht_extern, dbo.deko_2014_stammdaten.freigabe_bilder_extern, dbo.deko_2014_stammdaten.freigabe_bericht_intern, dbo.deko_2014_stammdaten.freigabe_bilder_intern, dbo.deko_2014_stammdaten.id FROM dbo.deko_2014_stammdaten INNER JOIN dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id INNER JOIN dbo.deko_2014_einsaetze ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_einsaetze.stammdaten_id WHERE ((dbo.deko_2014_stammdaten.freigabe_bericht_intern = 'Nein' and dbo.deko_2014_stammdaten.freigabe_bericht_extern = 'Ja') OR (dbo.deko_2014_stammdaten.freigabe_bilder_intern = 'Nein' and dbo.deko_2014_stammdaten.freigabe_bilder_extern = 'Ja')) and dbo.promotion_login.projektleiter Like @projektleiter">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="projektleiter" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

