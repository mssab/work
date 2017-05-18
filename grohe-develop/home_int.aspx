<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="home_int.aspx.vb" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="headline">Home</span>
    <p class="absatz">Dies ist die interne Seite für Gate-Mitarbeiter</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"  EnableSortingAndPagingCallbacks="true"
        EnableModelValidation="True" AllowSorting="true">
        
        <Columns>
        <asp:BoundField DataField="vorname" HeaderText="vorname" 
                SortExpression="vorname" />
            <asp:BoundField DataField="nachname" HeaderText="nachname" 
                SortExpression="nachname" />
                <asp:BoundField DataField="rolle" HeaderText="rolle" 
                SortExpression="rolle" />
            <asp:BoundField DataField="passwort" HeaderText="passwort" 
                SortExpression="passwort" />
                </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        
            SelectCommand="SELECT vorname, nachname, rolle, passwort from promotion_login">
    </asp:SqlDataSource>
</asp:Content>

