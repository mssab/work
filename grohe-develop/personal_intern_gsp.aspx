<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="personal_intern_gsp.aspx.vb" Inherits="personal_intern_gsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
<h1>Personalbestand</h1>  
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False" Width="50%">
        <Columns>
            <asp:BoundField DataField="vorname" HeaderText="Vorname" 
                SortExpression="vorname" />
            <asp:BoundField DataField="nachname" HeaderText="Nachname" 
                SortExpression="nachname" />
            <asp:BoundField DataField="anmeldename" HeaderText="Anmeldename" 
                SortExpression="anmeldename" />
            <asp:BoundField DataField="passwort" HeaderText="Passwort" 
                SortExpression="passwort" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        SelectCommand="SELECT [vorname], [nachname], [anmeldename], [passwort] FROM [promotion_login] WHERE (([rolle] = @rolle) AND ([id] > @id))">
    <SelectParameters>
        <asp:Parameter DefaultValue="extern" Name="rolle" Type="String" />
        <asp:Parameter DefaultValue="7" Name="id" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

