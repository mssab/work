<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="false" CodeFile="deko_2014_intern_material_gesamt.aspx.vb" Inherits="intern_material_gesamt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Equipment</h1>
    <h2>Auswahl</h2>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%pfert%">Thomas Göpfert</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <h2>Materialausgabe Grohe Standard</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neue Shops" HeaderText="Neue Shops" 
                SortExpression="Neue Shops" />
            <asp:BoundField DataField="Aufkleber Grohe" 
                HeaderText="Aufkleber Grohe" SortExpression="Aufkleber Grohe" />
            <asp:BoundField DataField="Aufkleber Wasser" HeaderText="Aufkleber Wasser" 
                SortExpression="Aufkleber Wasser" />
            <asp:BoundField DataField="Banner Kubistisch" HeaderText="Banner Kubistisch" 
                SortExpression="Banner Kubistisch" />
            <asp:BoundField DataField="Banner Kind" HeaderText="Banner Kind" 
                SortExpression="Banner Kind" />
            <asp:BoundField DataField="Banner Minta" HeaderText="Banner Minta" 
                SortExpression="Banner Minta" />
            <asp:BoundField DataField="Mobile Flower" HeaderText="Mobile Flower" 
                SortExpression="Mobile Flower" />
            <asp:BoundField DataField="Aufkleber Flower" HeaderText="Aufkleber Flower" 
                SortExpression="Aufkleber Flower" />
            <asp:BoundField DataField="Würfel Deko" HeaderText="Deko Cube" 
                SortExpression="Würfel Deko" />
            <asp:BoundField DataField="Aufkleber QR" 
                HeaderText="Aufkleber QR" SortExpression="Aufkleber QR" />
            <asp:BoundField DataField="Aufsteller Garantie" 
                HeaderText="Aufsteller Garantie" SortExpression="Aufsteller Garantie" />
            <asp:BoundField DataField="Display mit Beleuchtung" 
                HeaderText="Display mit Beleuchtung" 
                SortExpression="Display mit Beleuchtung" />
            <asp:BoundField DataField="Display ohne Beleuchtung" HeaderText="Display ohne Beleuchtung" 
                SortExpression="Display ohne Beleuchtung" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT * FROM [deko_2014_materialansicht_standard]">
    </asp:SqlDataSource>
    <h2>Materialausgabe SPA</h2>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" 
    DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neue Shops" HeaderText="Neue Shops" 
                SortExpression="Neue Shops" />
            <asp:BoundField DataField="Aufkleber Digital" 
                HeaderText="Aufkleber Digital" SortExpression="Aufkleber Digital" />
            <asp:BoundField DataField="Banner Digital Deluxe" HeaderText="Banner Digital Deluxe" 
                SortExpression="Banner Digital Deluxe" />
            <asp:BoundField DataField="Banner NCC" HeaderText="Banner NCC" 
                SortExpression="Banner NCC" />
            <asp:BoundField DataField="Würfel Deko" 
                HeaderText="Deko Cube" SortExpression="Würfel Germany" />
            <asp:BoundField DataField="Hot Stones" HeaderText="Hot Stones" 
                SortExpression="Hot Stones" />
            <asp:BoundField DataField="SD-Card" HeaderText="Neue Slideshow (SD-Card)" 
                SortExpression="SD-Card" />
            <asp:BoundField DataField="Aufkleber Spa" HeaderText="Aufkleber GROHE SPA Logo" 
                SortExpression="Aufkleber Spa" />
            <asp:BoundField DataField="Aufkleber QR" HeaderText="Aufkleber QR" 
                SortExpression="Aufkleber QR" />
            <asp:BoundField DataField="Banner Grandera" 
                HeaderText="Banner Grandera" SortExpression="Banner Grandera" />
            <asp:BoundField DataField="Aufsteller Garantie" 
                HeaderText="Aufsteller Garantie" 
                SortExpression="Aufsteller Garantie" />
            <asp:BoundField DataField="Display mit Beleuchtung" HeaderText="Display mit Beleuchtung" 
                SortExpression="Display mit Beleuchtung" />
            <asp:BoundField DataField="Display ohne Beleuchtung" HeaderText="Display ohne Beleuchtung" 
                SortExpression="Display ohne Beleuchtung" />
            <asp:BoundField DataField="Bürste" HeaderText="Bürste" 
                SortExpression="Bürste" />
            <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" 
                SortExpression="Duschgel" />
            <asp:BoundField DataField="Handtuch" HeaderText="Handtuch" 
                SortExpression="Handtuch" />
            <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                SortExpression="Schwamm" />
            <asp:BoundField DataField="Digitaler Bilderrahmen" 
                HeaderText="Digitaler Bilderrahmen" SortExpression="Digitaler Bilderrahmen" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:promotion %>" 
    SelectCommand="SELECT * FROM [deko_2014_materialansicht_spa]">
</asp:SqlDataSource>
</asp:Content>

