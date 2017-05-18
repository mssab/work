<%@ Page Title="" Language="VB" MasterPageFile="~/master_extern_gsp.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="false" CodeFile="extern_gsp_eingabe.aspx.vb" Inherits="extern_gsp_eingabe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Eingabe Grohe SPA</h1>
    <table>
        <tr>
            <td>Name:</td>
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
    <table>
        <tr>
            <td valign="top" style="width:250px;">
                <h2>Einsatzdatum</h2>
    <asp:Calendar ID="dekodatum" runat="server" BackColor="White" 
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
            
        </tr>
    </table>
    
    <br />
    <br />
    <asp:Panel ID="deko_erfolgt" runat="server">
        <h2>Erhobene Daten</h2>
        <table style="width:600px;">
            
            
            <tr>
                <td><b>Regalmeter</b></td>
                <td><asp:TextBox ID="regalmeter" runat="server" CssClass="textbox"></asp:TextBox></td>
                
            </tr>
            
        </table>
        <br />
        <br />
        <h2>Bemerkung</h2>
        <asp:TextBox ID="bemerkung_material" runat="server" Width="560px" TextMode="MultiLine" Rows="8" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="speichern_material" runat="server" Text="Bericht speichern" />
        <br />
        <br />
    </asp:Panel>    
    
    
</asp:Content>

