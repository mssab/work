<%@ Page Title="" Language="VB" MasterPageFile="~/master_extern.master" AutoEventWireup="true" CodeFile="extern_aktion_berichte.aspx.vb" Inherits="extern_aktion_berichte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Aktionsberichte</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True" EmptyDataText="Es sind noch keine Aktionberichte vollständig abgegeben worden." >
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
           <asp:BoundField DataField="datum" HeaderText="Datum" 
                SortExpression="datum" />
           
            
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, dbo.stammdaten.dekoration, dbo.einsaetze.datum, dbo.promotion_login.vorname + ' ' + dbo.promotion_login.nachname AS Mitarbeiter, dbo.stammdaten.id FROM dbo.stammdaten INNER JOIN dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id INNER JOIN dbo.einsaetze ON dbo.stammdaten.id = dbo.einsaetze.stammdaten_id WHERE (dbo.stammdaten.freigabe_bericht_extern = 'Ja') and (dbo.stammdaten.freigabe_bilder_extern = 'Ja') and mitarbeiter = @mitarbeiter">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="mitarbeiter" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

