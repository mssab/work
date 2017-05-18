<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_projekte_gsp_neu.aspx.vb" Inherits="intern_projekte_gsp_neu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Neues GSP-Projekt</h1>
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
                
    </table>
    <br />
    <table>
        <tr>
            <td valign="top">
                <h2>Projektdetails</h2>
        <table >
            
            
            <tr>
                <td><b>Jobnummer</b></td>
                <td><asp:TextBox ID="jobnummer" runat="server" ></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GSP</b></td>
                <td>
                    <asp:DropDownList ID="gsp" runat="server">
                        <asp:ListItem>Pick Up</asp:ListItem>
                        <asp:ListItem>ETS</asp:ListItem>
                        <asp:ListItem>OTC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td><b>Umrüstung</b></td>
                <td><asp:DropDownList ID="umruestung" runat="server">
                    <asp:ListItem>Nein</asp:ListItem>
                    <asp:ListItem>Ja</asp:ListItem>
                    </asp:DropDownList></td>
                
            </tr>
            <tr>
                <td><b>Status</b></td>
                <td><asp:DropDownList ID="status" runat="server">
                    <asp:ListItem>offen</asp:ListItem>
                    <asp:ListItem>erledigt</asp:ListItem>
                    </asp:DropDownList></td>
                
            </tr>
            <tr>
                <td><b>Bemerkung</b></td>
                <td><asp:TextBox ID="bemerkung" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Regalmeter</b></td>
                <td><asp:TextBox ID="regalmeter" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Unterstüzung durch Gate</b></td>
                <td><asp:TextBox ID="unterstuetzung" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Top Schilder</b></td>
                <td><asp:TextBox ID="top_schilder" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>GSP Flyer</b></td>
                <td><asp:TextBox ID="gsp_flyer" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td><b>Gesamt Regalmeter</b></td>
                <td><asp:TextBox ID="gesamt_regalmeter" runat="server"></asp:TextBox></td>
                
            </tr>
        </table>
            </td>
            <td>
                <h2>Eingangsdatum</h2>
                <table>
                    <tr>
            <td valign="top">
                
    <asp:Calendar ID="eingangsdatum" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
            </td>
            <td valign="top">
   
            </td>
        </tr>
                </table>
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

