<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" Debug="true" AutoEventWireup="true" CodeFile="deko_2014_intern_bild_freigabe.aspx.vb" Inherits="deko_2014_intern_bild_freigabe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Bilder-Freigabe</h1>
    
     <table>
        <tr>
            <td style="width:10%">Name:</td>
            <td><asp:Label ID="name" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Straße:</td>
            <td><asp:Label ID="strasse" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>PLZ und Ort:</td>
            <td><asp:Label ID="plz_ort" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Dekoration:</td>
            <td><asp:Label ID="deko" runat="server"></asp:Label></td>
        </tr>        
    </table>
    <br />
    <table style="width: 100%">
        <tr>
            <td>
                <h2>Vorher</h2>
            </td>
            <td><h2>Bearbeitung</h2></td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="vor_1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Löschen" />
                <asp:Button ID="Button2" runat="server" Text="Freigeben" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="vor_2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="vor_3" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="vor_4" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <h2>Nachher</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="nach_1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="nach_2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="nach_3" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="nach_4" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <h2>Bericht</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="bericht" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

