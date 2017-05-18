<%@ Page Language="VB" AutoEventWireup="false" CodeFile="export.aspx.vb" Inherits="export" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Export der Anmeldungsliste</h1>
        <asp:Panel ID="panel_freigabe" runat="server" Visible="true">
            <p>Bitte geben Sie hier das Kennwort ein, um die Listen-Ansicht inklusive Excel-Export zu öffnen.</p>
            <table>
                <tr>
                    <td>Kennwort</td>
                    <td><asp:TextBox ID="kennwort" runat="server"></asp:TextBox></td>
                    <td><asp:Button ID="senden" runat="server" Text="senden" /></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="panel_export" runat="server" Visible="false">
            <asp:Button ID="export" runat="server" Text="Daten in Excel exportieren" />
            <br />
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="firma" HeaderText="firma" SortExpression="firma" />
                <asp:BoundField DataField="filiale" HeaderText="filiale" 
                    SortExpression="filiale" />
                <asp:BoundField DataField="anrede" HeaderText="anrede" 
                    SortExpression="anrede" />
                <asp:BoundField DataField="titel" HeaderText="titel" SortExpression="titel" />
                <asp:BoundField DataField="vorname" HeaderText="vorname" 
                    SortExpression="vorname" />
                <asp:BoundField DataField="nachname" HeaderText="nachname" 
                    SortExpression="nachname" />
                <asp:BoundField DataField="strasse" HeaderText="strasse" 
                    SortExpression="strasse" />
                <asp:BoundField DataField="plz" HeaderText="plz" SortExpression="plz" />
                <asp:BoundField DataField="ort" HeaderText="ort" SortExpression="ort" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="teilnahme" HeaderText="teilnahme" 
                    SortExpression="teilnahme" />
                <asp:BoundField DataField="vegetarier" 
                    HeaderText="vegetarier" SortExpression="vegetarier" />
                <asp:BoundField DataField="sonstiges" 
                    HeaderText="sonstiges" SortExpression="sonstiges" />
                <asp:BoundField DataField="begleitperson_anrede" 
                    HeaderText="begleitperson_anrede" SortExpression="begleitperson_anrede" />
                <asp:BoundField DataField="begleitperson_titel" 
                    HeaderText="begleitperson_titel" SortExpression="begleitperson_titel" />
                <asp:BoundField DataField="begleitperson_vorname" 
                    HeaderText="begleitperson_vorname" 
                    SortExpression="begleitperson_vorname" />
                <asp:BoundField DataField="begleitperson_nachname" HeaderText="begleitperson_nachname" 
                    SortExpression="begleitperson_nachname" />
                <asp:BoundField DataField="begleitperson_vegetarier" 
                    HeaderText="begleitperson_vegetarier" 
                    SortExpression="begleitperson_vegetarier" />
                <asp:BoundField DataField="begleitperson_sonstiges" 
                    HeaderText="begleitperson_sonstiges" SortExpression="begleitperson_sonstiges" />
                <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                    SortExpression="bemerkung" />
                <asp:BoundField DataField="eingegangen" HeaderText="eingegangen" 
                    SortExpression="eingegangen" />
                <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
            </Columns>
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sql_ha006_aConnectionString %>" 
            SelectCommand="SELECT * FROM [Dortmunder_Kreis_Export]">
        </asp:SqlDataSource>
        
       </asp:Panel>
    </div>
    </form>
</body>
</html>
