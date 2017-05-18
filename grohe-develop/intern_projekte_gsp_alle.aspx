<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_alle.aspx.vb" Inherits="intern_projekte_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Übersicht über Services</h1>


    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" 
                SortExpression="JobNr" />
            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                SortExpression="GSP" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                SortExpression="Eingangsdatum" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Fertigstelldatum" HeaderText="Fertigstelldatum" 
                SortExpression="Fertigstelldatum" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" 
                SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" 
                SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" 
                SortExpression="Ort" />
            <asp:BoundField DataField="anmeldename" HeaderText="Dekorateur" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
            
        
        SelectCommand="SELECT gsp_auftraege.JobNr, gsp_auftraege.GSP, gsp_auftraege.Status, gsp_auftraege.Eingangsdatum, gsp_auftraege.Fertigstelldatum, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, promotion_login.anmeldename, gsp_auftraege.id FROM gsp_auftraege INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id LEFT OUTER JOIN promotion_login ON gsp_auftraege.Team = promotion_login.id ORDER BY gsp_auftraege.JobNr DESC">
    </asp:SqlDataSource>
</asp:Content>

