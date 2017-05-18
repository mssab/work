<%@ Page Title="" Language="VB" Debug="true" MasterPageFile="~/deko_2016_master_extern.master" AutoEventWireup="true" CodeFile="deko_2016_extern_aktion_offen.aspx.vb" Inherits="deko_2016_extern_aktion_offen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Dekorationen mit offenen Berichten und Bildern</h1>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True" >
        <Columns>
            
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" 
                SortExpression="name" />
            <asp:BoundField DataField="strasse" HeaderText="Straße" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="Ort" 
                SortExpression="ort" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
           
           
            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="Bericht" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="Bilder" 
                SortExpression="freigabe_bilder_extern" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.name, dbo.deko_2016_stammdaten.strasse, dbo.deko_2016_stammdaten.plz, dbo.deko_2016_stammdaten.ort, dbo.deko_2016_stammdaten.dekoration, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.deko_2016_stammdaten.freigabe_bericht_extern, dbo.deko_2016_stammdaten.freigabe_bilder_extern, dbo.deko_2016_stammdaten.id FROM dbo.deko_2016_stammdaten INNER JOIN dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id WHERE ((dbo.deko_2016_stammdaten.freigabe_bericht_extern = 'Nein') OR (dbo.deko_2016_stammdaten.freigabe_bilder_extern = 'Nein')) and mitarbeiter = @mitarbeiter">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="mitarbeiter" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

