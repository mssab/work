<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_material_gesamt.aspx.vb" Inherits="intern_material_gesamt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Equipment</h1>
    <h2>Auswahl</h2>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%Hasse%">Claudia Hasse</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <h2>Materialausgabe Grohe Standard</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="anmeldename" HeaderText="Dekorateur" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neu" HeaderText="Neu" SortExpression="Neu" />
            <asp:BoundField DataField="aufkleber_grohe_logo" 
                HeaderText="Logo" SortExpression="aufkleber_grohe_logo" />
            <asp:BoundField DataField="aufkleber_tempesta" HeaderText="Tempesta" 
                SortExpression="aufkleber_tempesta" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="QR" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="banner_eurocube" HeaderText="Eurocube" 
                SortExpression="banner_eurocube" />
            <asp:BoundField DataField="banner_kind" HeaderText="Kind" 
                SortExpression="banner_kind" />
            <asp:BoundField DataField="banner_grohtherm" HeaderText="Grohtherm" 
                SortExpression="banner_grohtherm" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="Millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="Germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="Garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="Display beleuchtet" SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="Display unbeleuchtet" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="quitsche_ente" HeaderText="Ente" 
                SortExpression="quitsche_ente" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT [anmeldename], [Gesamt], [Neu], [aufkleber_grohe_logo], [aufkleber_tempesta], [aufkleber_qr], [banner_eurocube], [banner_kind], [banner_grohtherm], [wuerfel_millieu], [wuerfel_germany], [aufsteller_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [quitsche_ente], [id] FROM [materialsicht_standard] WHERE ([projektleiter] like @projektleiter)">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="projektleiter" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h2>Materialausgabe SPA</h2>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
        EnableModelValidation="True" AutoGenerateColumns="False" 
    DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="anmeldename" HeaderText="Dekorateur" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="Gesamt" HeaderText="Gesamt" 
                SortExpression="Gesamt" />
            <asp:BoundField DataField="Neu" HeaderText="Neu" SortExpression="Neu" />
            <asp:BoundField DataField="aufkleber_grohe_logo" 
                HeaderText="Logo" SortExpression="aufkleber_grohe_logo" />
            <asp:BoundField DataField="aufkleber_allure" HeaderText="Allure" 
                SortExpression="aufkleber_allure" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="QR" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="banner_power_and_soul" 
                HeaderText="Power&Soul" SortExpression="banner_power_and_soul" />
            <asp:BoundField DataField="banner_woman" HeaderText="Woman" 
                SortExpression="banner_woman" />
            <asp:BoundField DataField="banner_grandera" HeaderText="Grandera" 
                SortExpression="banner_grandera" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="Millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="Germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="Garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="Displ. mit Beleuchtung" SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="Displ. ohne Beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="schwamm" HeaderText="Schwamm" 
                SortExpression="schwamm" />
            <asp:BoundField DataField="duschgel" HeaderText="Duschgel" 
                SortExpression="duschgel" />
            <asp:BoundField DataField="bilderrahmen" HeaderText="Bilderrahmen" 
                SortExpression="bilderrahmen" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            
        </Columns>
        <HeaderStyle BackColor="#A09E97"  Wrap="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:promotion %>" 
    SelectCommand="SELECT * FROM [materialsicht_spa] WHERE ([projektleiter] LIKE '%' + @projektleiter + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" DefaultValue="0" Name="projektleiter" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

