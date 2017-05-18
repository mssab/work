<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_shops.aspx.vb" Inherits="intern_projekte_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Shopauswahl für Service</h1>
    <asp:Button ID="Button1" runat="server" Visible="false" Text="Filter anwenden" />
    <asp:Button ID="Button2" runat="server" Text="Neuer Shop" />

    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        DataKeyNames="id">
        <Columns>
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
            <asp:BoundField DataField="CRM" HeaderText="CRM" 
                SortExpression="CRM" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" InsertVisible="False" ReadOnly="True" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT [Kunde], [Strasse], [PLZ], [Ort], [Ansprechpartner], [CRM], [id] FROM [gsp_shops]">
    </asp:SqlDataSource>
</asp:Content>

