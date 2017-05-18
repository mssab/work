<%@ Page Title="" Language="VB" MasterPageFile="~/master_kunde.master" AutoEventWireup="false" CodeFile="deko_2014_kunde_schaufenster_liste.aspx.vb" Inherits="kunde_schaufenster_liste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Suchergebnis</h2>
    <asp:Label ID="ergebnis_anzahl" runat="server"> </asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" 
        DataKeyNames="id">
        <Columns>
            <asp:TemplateField HeaderText="Bilder"></asp:TemplateField>
            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" SortExpression="GP_ID" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />            
            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="ort" 
                ReadOnly="True" />
            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                SortExpression="dekoration" />
            <asp:BoundField DataField="glh" HeaderText="GLH" SortExpression="glh" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="freigabe_bilder_intern" 
                HeaderText="freigabe_bilder_intern" SortExpression="freigabe_bilder_intern" />
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
        
        SelectCommand="SELECT [GP_ID], [name], [plz]+' '+ [ort] as ort, [dekoration], [glh], [id], freigabe_bilder_intern FROM [deko_2014_stammdaten]">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="feature_1">
    <h2>Ihre Suche</h2>
    <p>Hier können Sie gezielt nach Shops suchen. Geben Sie Ihren Suchbegriff (z.B. GPID, Firmenname, PLZ, Ort, Dekorationsart, Außendienst) in das Feld ein und klicken anschließend auf "SUCHEN".</p>
    <br />
        <asp:TextBox ID="suchbegriff" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Suche" />
        <br />
    </div>
    <div id="feature_2"></div>
    <div id="feature_3"></div>
</asp:Content>
