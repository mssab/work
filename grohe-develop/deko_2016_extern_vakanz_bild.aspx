<%@ Page Title="" Language="VB" Debug="true" MasterPageFile="~/deko_2016_master_extern.master" AutoEventWireup="false" CodeFile="deko_2016_extern_vakanz_bild.aspx.vb" Inherits="deko_2016_extern_bilder_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Bilder-Upload bei nicht möglicher Dekoration</h1>
    <table style="width:100%;">
        <tr>
            <td style="width:10%;">Name:</td>
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
    <h2>Bild das hochgeladen werden soll:</h2>
    <br />
    <table style="width:100%;">
        <tr>
            <td style="width:10%;">Vorher 1</td>
            <td style="width:45%;"><asp:FileUpload ID="FileUpload1" runat="server" Width="300px" /></td>
            <td style="width:45%;"><asp:Label ID="meldung_vorher_1" runat="server" Width="100%"></asp:Label></td>
        </tr>        
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" UseSubmitBehavior="false" Text="Upload" /></td>
        </tr>
    </table>
</asp:Content>

