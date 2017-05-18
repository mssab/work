<%@ Page Title="" Language="VB" MasterPageFile="~/master_extern_gsp.master" AutoEventWireup="false" CodeFile="extern_projekt_gsp_alle.aspx.vb" Inherits="extern_projekt_gsp_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Übersicht über alle Dekorationen</h1>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="3" 
        DataKeyNames="id" AllowSorting="True" >
        <Columns>
            
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" 
                SortExpression="JobNr" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" 
                SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" 
                SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" 
                SortExpression="Ort" />
           
           
            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                SortExpression="GSP" />
            
            <asp:BoundField DataField="Ansprechpartner" HeaderText="Ansprechpartner" 
                SortExpression="Ansprechpartner" />
            <asp:BoundField DataField="Telefon" HeaderText="Telefon" 
                SortExpression="Telefon" />
            <asp:BoundField DataField="Mail" HeaderText="E-Mail" SortExpression="Mail" />
            <asp:BoundField DataField="Fertigstelldatum" 
                HeaderText="Fertigstelldatum" SortExpression="Fertigstelldatum" 
                DataFormatString="{0:d}" />
            
            
            
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        
        
        
        SelectCommand="SELECT gsp_auftraege.JobNr, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.GSP, gsp_shops.Ansprechpartner, gsp_shops.Telefon, gsp_shops.Mail, gsp_auftraege.Fertigstelldatum, gsp_auftraege.freigabe_bericht_extern, gsp_auftraege.freigabe_bilder_extern, gsp_auftraege.id FROM promotion_login INNER JOIN gsp_auftraege ON promotion_login.id = gsp_auftraege.Team INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id WHERE (gsp_auftraege.Team = @mitarbeiter) AND (gsp_auftraege.angenommen = 'ja')">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="mitarbeiter" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

