<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_offen.aspx.vb" Inherits="intern_projekte_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Shopauswahl für Service</h1>
    <asp:Button ID="Button1" runat="server" Text="Filter anwenden" />
    <asp:Button ID="Button2" runat="server" Text="Neuer Shop" />

    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" 
                SortExpression="JobNr" />
            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                SortExpression="GSP" />
            <asp:BoundField DataField="Umruestung" HeaderText="Umruestung" 
                SortExpression="Umruestung" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" 
                SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" 
                SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" 
                SortExpression="Ort" />
            <asp:BoundField DataField="Ansprechpartner" HeaderText="Ansprechpartner" 
                SortExpression="Ansprechpartner" />
            <asp:BoundField DataField="CRM" HeaderText="CRM" SortExpression="CRM" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        SelectCommand="SELECT gsp_auftraege.JobNr, gsp_auftraege.GSP, gsp_auftraege.Umruestung, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_shops.Ansprechpartner, gsp_shops.CRM, gsp_auftraege.id FROM gsp_shops INNER JOIN gsp_auftraege ON gsp_shops.id = gsp_auftraege.Kunde WHERE (gsp_auftraege.Kunde = 0)">
    </asp:SqlDataSource>
</asp:Content>

