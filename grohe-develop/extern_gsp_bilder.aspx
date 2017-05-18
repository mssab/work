<%@ Page Title="" Language="VB" Debug="true" MasterPageFile="~/master_extern_gsp.master" AutoEventWireup="false" CodeFile="extern_gsp_bilder.aspx.vb" Inherits="extern_gsp_bilder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Bilder-Upload</h1>
    <table>
        <tr>
            <td style="width:120px;">Name:</td>
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
    <h2>Bilder die hochgeladen werden sollen:</h2>
    <br />
    <table>
        <tr>
            <td style="width:120px;">Vorher 1</td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" Width="600px" /></td>
            <td style="width:200px;"><asp:Label ID="meldung_vorher_1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Vorher 2</td>
            <td><asp:FileUpload ID="FileUpload2" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_vorher_2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Vorher 3</td>
            <td><asp:FileUpload ID="FileUpload3" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_vorher_3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Vorher 4</td>
            <td><asp:FileUpload ID="FileUpload4" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_vorher_4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Nachher 1</td>
            <td><asp:FileUpload ID="FileUpload5" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_nachher_1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Nachher 2</td>
            <td><asp:FileUpload ID="FileUpload6" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_nachher_2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Nachher 3</td>
            <td><asp:FileUpload ID="FileUpload7" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_nachher_3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Nachher 4</td>
            <td><asp:FileUpload ID="FileUpload8" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_nachher_4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Bericht</td>
            <td><asp:FileUpload ID="FileUpload9" runat="server" Width="600px" /></td>
            <td><asp:Label ID="meldung_bericht" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" UseSubmitBehavior="false" Text="Upload" /></td>
        </tr>
    </table>
</asp:Content>

