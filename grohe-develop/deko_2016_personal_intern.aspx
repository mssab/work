<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2016_master_intern.master" AutoEventWireup="false" CodeFile="deko_2016_personal_intern.aspx.vb" Inherits="deko_2016_personal_intern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Mitarbeiternummer" 
                SortExpression="id" />
            <asp:BoundField DataField="anmeldename" HeaderText="Anmeldename" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="passwort" HeaderText="Passwort" 
                SortExpression="passwort" />
            <asp:BoundField DataField="projektleiter" HeaderText="Projektleiter" 
                SortExpression="projektleiter" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
            
        SelectCommand="SELECT id, anmeldename, passwort, projektleiter FROM promotion_login WHERE (id IN (SELECT DISTINCT mitarbeiter FROM deko_2016_stammdaten)) ORDER BY nachname">
    </asp:SqlDataSource>
</asp:Content>

