﻿<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_extern.master" AutoEventWireup="false" CodeFile="deko_2014_extern_projekt_alle.aspx.vb" Inherits="deko_2014_extern_projekt_alle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Übersicht über alle Dekorationen</h1>


    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        EnableModelValidation="True" >
        <Columns>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" 
                SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" 
                SortExpression="name" />
            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                SortExpression="strasse" />
            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="PLZ" />
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="Ort" />
            <asp:BoundField DataField="telefon" HeaderText="Telefon" 
                SortExpression="telefon" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
            
        
        SelectCommand="SELECT [GP_ID], [name], [strasse], [plz], [ort], [telefon], [dekoration] FROM [deko_2014_stammdaten] WHERE ([mitarbeiter] = @mitarbeiter )">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="mitarbeiter" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

