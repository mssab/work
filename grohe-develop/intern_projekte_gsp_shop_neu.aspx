<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_shop_neu.aspx.vb" Inherits="intern_projekte_gsp_shop_neu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Neuer GSP-Shop</h1>
    
    <br />
    
        <table >
            
            
            <tr>
                <td style="width:120px;"><b>Kunde</b></td>
                <td><asp:TextBox ID="kunde" runat="server" ></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Straße</b></td>
                <td>
                    <asp:TextBox ID="strasse" runat="server" ></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td><b>PLZ</b></td>
                <td><asp:TextBox ID="plz" runat="server" ></asp:TextBox>
                
            </tr>
            <tr>
                <td><b>Ort</b></td>
                <td><asp:TextBox ID="ort" runat="server" ></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Ansprechpartner</b></td>
                <td><asp:TextBox ID="ansprechpartner" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Telefon</b></td>
                <td><asp:TextBox ID="telefon" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>E-Mail</b></td>
                <td><asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>CRM</b></td>
                <td><asp:TextBox ID="crm" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Regalmeter</b></td>
                <td><asp:TextBox ID="regalmeter" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>StoreCheck</b></td>
                <td><asp:TextBox ID="storecheck" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GVL</b></td>
                <td><asp:TextBox ID="gvl" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GVL Handy</b></td>
                <td><asp:TextBox ID="gvl_handy" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GLH</b></td>
                <td><asp:TextBox ID="glh" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GLH Handy</b></td>
                <td><asp:TextBox ID="glh_handy" runat="server"></asp:TextBox></td>
                
            </tr>
        </table>
            
    
    
    
        
        
        <br />
        <br />
        <asp:Button ID="speichern" runat="server" Text="Shop speichern" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="zurueck" runat="server" Text="zurück" />
        <br />
        <br />
    
    
    
</asp:Content>

