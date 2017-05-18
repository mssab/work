<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="false" CodeFile="deko_2015_intern_auswertung_mitarbeiter.aspx.vb" Inherits="deko_2015_intern_auswertung_mitarbeiter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Auswertung nach Dekorateur</h1>
    <asp:DropDownList ID="auswahl" runat="server" AutoPostBack="True">
        <asp:ListItem Value="%a%">alle</asp:ListItem>
        <asp:ListItem Value="%pfert%">Thomas Göpfert</asp:ListItem>
        <asp:ListItem Value="%Konczak%">Timo Konczak</asp:ListItem>
        <asp:ListItem Value="%Fluch%">Martin Fluch</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" ShowFooter="true">
        <Columns>
            <asp:BoundField DataField="Dekorateur" HeaderText="Dekorateur" 
                SortExpression="Dekorateur" />
            <asp:BoundField DataField="Anzahl besuchte Outlets" 
                HeaderText="Anzahl besuchte Outlets" SortExpression="Anzahl besuchte Outlets" />
            <asp:BoundField DataField="davon GROHE Standard" 
                HeaderText="davon GROHE Standard" SortExpression="davon GROHE Standard" />
            <asp:BoundField DataField="davon GROHE Spa" HeaderText="davon GROHE Spa" 
                SortExpression="davon GROHE Spa" />
            <asp:BoundField DataField="Anzahl Zweitbesuche" 
                HeaderText="Anzahl Zweitbesuche" SortExpression="Anzahl Zweitbesuche" />
            <asp:BoundField DataField="Anzahl Deko gesamt" HeaderText="Anzahl Deko gesamt" 
                SortExpression="Anzahl Deko gesamt" />
            <asp:TemplateField HeaderText="Deko Schnitt"></asp:TemplateField>
        </Columns>
    <HeaderStyle BackColor="#A09E97"  Wrap="true" />
    <FooterStyle BackColor="#A09E97" Font-Bold="true" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2015_anzahl_besuche_gesamt.anzahl AS [Anzahl besuchte Outlets], dbo.deko_2015_anzahl_standard.anzahl AS [davon GROHE Standard], dbo.deko_2015_anzahl_spa.anzahl AS [davon GROHE Spa], dbo.[deko_2015_anzahl_zweitanfahrten nach mitarbeiter].menge AS [Anzahl Zweitbesuche], dbo.deko_2015_anzahl_dekorationen_pro_mitarbeiter.menge AS [Anzahl Deko gesamt] FROM dbo.deko_2015_anzahl_standard RIGHT OUTER JOIN dbo.promotion_login LEFT OUTER JOIN dbo.[deko_2015_anzahl_zweitanfahrten nach mitarbeiter] ON dbo.promotion_login.id = dbo.[deko_2015_anzahl_zweitanfahrten nach mitarbeiter].mitarbeiter ON dbo.deko_2015_anzahl_standard.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN dbo.deko_2015_anzahl_spa ON dbo.promotion_login.id = dbo.deko_2015_anzahl_spa.mitarbeiter LEFT OUTER JOIN dbo.deko_2015_anzahl_dekorationen_pro_mitarbeiter ON dbo.promotion_login.id = dbo.deko_2015_anzahl_dekorationen_pro_mitarbeiter.mitarbeiter LEFT OUTER JOIN dbo.deko_2015_anzahl_besuche_gesamt ON dbo.promotion_login.id = dbo.deko_2015_anzahl_besuche_gesamt.mitarbeiter WHERE (dbo.promotion_login.projektleiter LIKE @projektleiter) and dbo.promotion_login.id in (select distinct mitarbeiter from deko_2015_stammdaten)">
        <SelectParameters>
            <asp:ControlParameter ControlID="auswahl" Name="projektleiter" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

