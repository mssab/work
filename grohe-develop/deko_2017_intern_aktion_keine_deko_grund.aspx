<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_intern.master" AutoEventWireup="false" Debug="true" CodeFile="deko_2017_intern_aktion_keine_deko_grund.aspx.vb" Inherits="deko_2017_intern_aktion_offen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Vakanzen - Keine Deko ohne Zuordnung - Gründe <asp:Label ID="anzahl" runat="server" ></asp:Label></h1>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="Name" />
            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="ort" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
            
            <asp:BoundField DataField="datum" HeaderText="Datum" SortExpression="datum" />
            <asp:BoundField DataField="grund" HeaderText="Grund" 
                SortExpression="grund" />
            <asp:BoundField DataField="bemerkung" HeaderText="Bemerkung" 
                SortExpression="bemerkung" />
                <asp:BoundField DataField="bis" HeaderText="bis" 
                SortExpression="bis" />
            <asp:BoundField DataField="neue_adresse" HeaderText="neue Adresse" 
                SortExpression="neue_adresse" />
            <asp:BoundField DataField="eingang" HeaderText="Eingang" SortExpression="eingang" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
         SelectCommand="SELECT deko_2016_stammdaten.GP_ID, deko_2016_stammdaten.name, deko_2016_stammdaten.strasse, deko_2016_stammdaten.plz, deko_2016_stammdaten.ort, deko_2016_stammdaten.dekoration, deko_2016_stammdaten.id, deko_2016_vakanz.datum, deko_2016_vakanz.grund, deko_2016_vakanz.bemerkung, deko_2016_vakanz.bis, deko_2016_vakanz.neue_adresse, deko_2016_vakanz.eingang FROM deko_2016_stammdaten INNER JOIN deko_2016_vakanz ON deko_2016_stammdaten.id = deko_2016_vakanz.stammdaten_id WHERE (deko_2016_stammdaten.mitarbeiter = 0)">
    </asp:SqlDataSource>
</asp:Content>

