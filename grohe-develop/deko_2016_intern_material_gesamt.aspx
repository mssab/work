<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2016_master_intern.master" AutoEventWireup="false" CodeFile="deko_2016_intern_material_gesamt.aspx.vb" Inherits="intern_material_gesamt" %>

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
            <asp:BoundField DataField="Banner Eurostyle" 
                HeaderText="Banner Eurostyle" 
                SortExpression="Banner Eurostyle" />
            <asp:BoundField DataField="Banner Livestyle" HeaderText="Banner Livestyle" 
                SortExpression="Banner Livestyle" />
            <asp:BoundField DataField="Banner Essence" HeaderText="Banner Essence" 
                SortExpression="Banner Essence" />
            <asp:BoundField DataField="Aufkleber Aquatunes" HeaderText="Aufkleber Aquatunes" 
                SortExpression="Aufkleber Aquatunes" />
            <asp:BoundField DataField="Dekosäule Aquatunes" HeaderText="Dekosäule Aquatunes" 
                SortExpression="Dekosäule Aquatunes" />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                SortExpression="Dekowürfel Nachhaltigkeit" />
            <asp:BoundField DataField="Dekowürfel Made in Germany" HeaderText="Dekowürfel Made in Germany" 
                SortExpression="Dekowürfel Made in Germany" />
            <asp:BoundField DataField="Dekosäule Logo Standard" HeaderText="Dekosäule Logo Standard" 
                SortExpression="Dekosäule Logo Standard" />
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                HeaderText="Aufsteller 5 Jahre Garantie" 
                SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="Aufkleber QR Code" 
                HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufkleber Logo" 
                HeaderText="Aufkleber Logo" 
                SortExpression="Aufkleber Logo" />
            <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                SortExpression="Badetuch" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" ReadOnly="True" />
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT * FROM [deko_2016_materialansicht_standard]">
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
            <asp:BoundField DataField="Banner Rainshower SmartControl" 
                HeaderText="Banner Rainshower SmartControl" 
                SortExpression="Banner Rainshower SmartControl" />
            <asp:BoundField DataField="Banner SPA-Welt" HeaderText="Banner SPA-Welt" 
                SortExpression="Banner SPA-Welt" />
            <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                SortExpression="Banner Grandera" />
            <asp:BoundField DataField="Banner Sensia Arena" 
                HeaderText="Banner Sensia Arena" 
                SortExpression="Banner Sensia Arena" />
            <asp:BoundField DataField="Dekosäule Rainshower Smart" HeaderText="Dekosäule Rainshower Smart" 
                SortExpression="Dekosäule Rainshower Smart" />
            <asp:BoundField DataField="Dekowürfel Arena Set 3 Stk." HeaderText="Dekowürfel Arena Set 3 Stk." 
                SortExpression="Dekowürfel Arena Set 3 Stk." />
            <asp:BoundField DataField="Dekowürfel Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                SortExpression="Dekowürfel Nachhaltigkeit" />
            <asp:BoundField DataField="Mobilee SPA-Welt" HeaderText="Mobilee SPA-Welt" 
                SortExpression="Mobilee SPA-Welt" />
            <asp:BoundField DataField="Dekokörbchen (Set klein/groß)" 
                HeaderText="Dekokörbchen (Set klein/groß)" SortExpression="Dekokörbchen (Set klein/groß)" />
            <asp:BoundField DataField="Handtuch 50x100" 
                HeaderText="Handtuch 50x100" 
                SortExpression="Handtuch 50x100" />
            <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" 
                SortExpression="Handtuch 30x50" />
            <asp:BoundField DataField="Bürste" HeaderText="Bürste" 
                SortExpression="Bürste" />
            <asp:BoundField DataField="Seife" HeaderText="Seife" 
                SortExpression="Seife" />
            <asp:BoundField DataField="Raumspray" HeaderText="Raumspray" 
                SortExpression="Raumspray" />
            <asp:BoundField DataField="Dig Bilderrahmen" HeaderText="Dig Bilderrahmen" 
                SortExpression="Dig Bilderrahmen" />
            <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                SortExpression="Aufkleber QR Code" />
            <asp:BoundField DataField="Aufkleber Grohe SPA Logo" 
                HeaderText="Aufkleber Grohe SPA Logo" SortExpression="Aufkleber Grohe SPA Logo" />
            
            <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" HeaderText="Aufsteller 5 Jahre Garantie" SortExpression="Aufsteller 5 Jahre Garantie" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:promotion %>" 
    SelectCommand="SELECT * FROM [deko_2016_materialansicht_spa]">
</asp:SqlDataSource>
</asp:Content>

