<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_projekte_alle.aspx.vb" Inherits="intern_projekte_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Übersicht über alle Dekorationen</h1>


    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="true">
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" 
                SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" 
                SortExpression="name" />
            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="ort" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
            <asp:BoundField DataField="datum" HeaderText="Datum" 
                SortExpression="datum" />
            <asp:BoundField DataField="vl" HeaderText="VL" 
                SortExpression="vl" />
            <asp:BoundField DataField="gvl" HeaderText="GVL" 
                SortExpression="gvl" />
            <asp:BoundField DataField="glh" HeaderText="GLH" 
                SortExpression="glh" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
            SelectCommand="SELECT GP_ID, name, strasse, plz, ort, dekoration, datum, vl, gvl, glh, id FROM uebersicht_deko_2013">
    </asp:SqlDataSource>
</asp:Content>

