<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_werbedamen_family_sommersorten.master" AutoEventWireup="false" Debug="true" CodeFile="reporting_eingabe.aspx.vb" Inherits="intern_aktion_offen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <h1>Reporting - Eingabe <asp:Label ID="aktion" runat="server" ></asp:Label></h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="3" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="Markt_Name" HeaderText="Markt_Name" SortExpression="Markt_Name" />
            <asp:BoundField DataField="Markt_PLZ" HeaderText="Markt_PLZ" SortExpression="Markt_PLZ" />
            <asp:BoundField DataField="Markt_Ort" HeaderText="Markt_Ort" 
                SortExpression="Markt_Ort" />
            <asp:BoundField DataField="Markt_Strasse" HeaderText="Markt_Strasse" SortExpression="Markt_Strasse" />
            <asp:BoundField DataField="Markt_AP" HeaderText="Markt_AP" SortExpression="Markt_AP" />
            <asp:BoundField DataField="aktion_beginn" HeaderText="aktion_beginn" 
                SortExpression="aktion_beginn" DataFormatString="{0:d}" />
            <asp:BoundField DataField="aktion_ende" HeaderText="aktion_ende" SortExpression="aktion_ende" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Promotor_durchfuehrend" HeaderText="Promotor_durchfuehrend" SortExpression="Promotor_durchfuehrend" />
            <asp:TemplateField></asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" InsertVisible="False" ReadOnly="True" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:reportingConnectionString %>" 
        
        
        SelectCommand="SELECT Markt_Name, Markt_PLZ, Markt_Ort, Markt_Strasse, Markt_AP, aktion_beginn, aktion_ende, Promotor_durchfuehrend, id FROM Einsaetze WHERE (aktion_ende &lt; { fn NOW() }) AND (aktion = @aktion) AND (id NOT IN (SELECT einsatz_id FROM einsatzbericht) OR id NOT IN (SELECT einsatz_id FROM fragebogen))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="aktion" SessionField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

