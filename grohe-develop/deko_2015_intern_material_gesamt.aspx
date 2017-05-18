<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="false" CodeFile="deko_2015_intern_material_gesamt.aspx.vb" Inherits="intern_material_gesamt" %>

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
        DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neue Shops" HeaderText="Neue Shops" 
                SortExpression="Neue Shops" />
            <asp:BoundField DataField="Banner kubistisches Design" 
                HeaderText="Banner kubistisches Design" 
                SortExpression="Banner kubistisches Design" />
            <asp:BoundField DataField="Banner Livestyle" HeaderText="Banner Livestyle" 
                SortExpression="Banner Livestyle" />
            <asp:BoundField DataField="Banner Armaturen" HeaderText="Banner Armaturen" 
                SortExpression="Banner Armaturen" />
            <asp:BoundField DataField="Deko Saeule SML Standard" HeaderText="Deko Saeule SML Standard" 
                SortExpression="Deko Saeule SML Standard" />
            <asp:BoundField DataField="Vase" HeaderText="Vase" 
                SortExpression="Vase" />
            <asp:BoundField DataField="Orchideen" HeaderText="Orchideen" 
                SortExpression="Orchideen" />
            <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                SortExpression="Badetuch" />
            <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Aufkleber Wasser Splash" 
                HeaderText="Aufkleber Wasser Splash" 
                SortExpression="Aufkleber Wasser Splash" />
            <asp:BoundField DataField="Aufkleber Logo" 
                HeaderText="Aufkleber Logo" 
                SortExpression="Aufkleber Logo" />
            <asp:BoundField DataField="Deko Saeule Logo Standard" HeaderText="Deko Saeule Logo Standard" 
                SortExpression="Deko Saeule Logo Standard" />
            <asp:BoundField DataField="Mobile Icon Flower" HeaderText="Mobile Icon Flower" 
                SortExpression="Mobile Icon Flower" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT * FROM [deko_2015_materialansicht_standard]">
    </asp:SqlDataSource>
    <h2>Materialausgabe SPA</h2>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" 
    DataKeyNames="id" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neue Shops" HeaderText="Neue Shops" 
                SortExpression="Neue Shops" />
            <asp:BoundField DataField="Banner F Digital Deluxe" 
                HeaderText="Banner F Digital Deluxe" 
                SortExpression="Banner F Digital Deluxe" />
            <asp:BoundField DataField="Banner Essence" HeaderText="Banner Essence" 
                SortExpression="Banner Essence" />
            <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                SortExpression="Banner Grandera" />
            <asp:BoundField DataField="Aufkleber F Digital Bluetooth" 
                HeaderText="Aufkleber F Digital Bluetooth" 
                SortExpression="Aufkleber F Digital Bluetooth" />
            <asp:BoundField DataField="Deko Wuerfel Essence" HeaderText="Deko Wuerfel Essence" 
                SortExpression="Deko Wuerfel Essence" />
            <asp:BoundField DataField="Aufkleber Grohe SPA Logo" HeaderText="Aufkleber Grohe SPA Logo" 
                SortExpression="Aufkleber Grohe SPA Logo" />
            <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Deko Saeule SPA Logo" 
                HeaderText="Deko Saeule SPA Logo" SortExpression="Deko Saeule SPA Logo" />
            <asp:BoundField DataField="Body Lotion" 
                HeaderText="Body Lotion" 
                SortExpression="Body Lotion" />
            <asp:BoundField DataField="Handtuch 50x100" HeaderText="Handtuch 50x100" 
                SortExpression="Handtuch 50x100" />
            <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" 
                SortExpression="Handtuch 30x50" />
            <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                SortExpression="Schwamm" />
            <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" 
                SortExpression="Duschgel" />
            <asp:BoundField DataField="Dig Bilderrahmen" HeaderText="Dig Bilderrahmen" 
                SortExpression="Dig Bilderrahmen" />
            <asp:BoundField DataField="Deko Steine Hot Stones" HeaderText="Deko Steine Hot Stones" 
                SortExpression="Deko Steine Hot Stones" />
            <asp:BoundField DataField="id" 
                HeaderText="id" SortExpression="id" ReadOnly="True" />
            
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:promotion %>" 
    SelectCommand="SELECT * FROM [deko_2015_materialansicht_spa]">
</asp:SqlDataSource>
</asp:Content>

