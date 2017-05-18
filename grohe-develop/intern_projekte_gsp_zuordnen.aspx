<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_zuordnen.aspx.vb" Inherits="intern_projekte_gsp_zuordnen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Offenes GSP-Projekt zuordnen</h1>
    <h2>Offene Projekte</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Auswahl">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" SortExpression="JobNr" />
            <asp:BoundField DataField="GSP" HeaderText="GSP" SortExpression="GSP" />
            <asp:BoundField DataField="Umruestung" HeaderText="Umruestung" 
                SortExpression="Umruestung" />
            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                SortExpression="Eingangsdatum" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" SortExpression="Ort" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT gsp_auftraege.JobNr, gsp_auftraege.GSP, gsp_auftraege.Umruestung, gsp_auftraege.Eingangsdatum, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.id FROM gsp_auftraege INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id WHERE (gsp_auftraege.Team IS NULL) or (gsp_auftraege.Team < 1)">
    </asp:SqlDataSource>
    
    <br />
    
                <h2>Ausgewählte Projekte zuordnen</h2>
        <table style="width:30%;">
            
            
            
            <tr>
                <td><b>Team</b></td>
                <td>
                    <asp:DropDownList ID="team" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="anmeldename" DataValueField="id" AppendDataBoundItems="true">
                        <asp:ListItem>bitte wählen...</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:promotion %>" 
                        SelectCommand="SELECT [id], [anmeldename] FROM [promotion_login] WHERE (([rolle] = @rolle) AND ([id] &gt; @id))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="extern" Name="rolle" Type="String" />
                            <asp:Parameter DefaultValue="7" Name="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                
            </tr>
            
            
        </table>
            
    
    
    
        
        
        <br />
        <br />
        <asp:Button ID="speichern" runat="server" Text="Auftrag speichern" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="zurueck" runat="server" Text="zurück" />
        <br />
        <br />
    
    
    
</asp:Content>

