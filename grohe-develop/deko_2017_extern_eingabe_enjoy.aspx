<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_extern.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="false" CodeFile="deko_2017_extern_eingabe_enjoy.aspx.vb" Inherits="deko_2017_extern_eingabe_enjoy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Eingabe Grohe Standard Deko 2016</h1>
    <table>
        <colgroup>
            <col width="150" />
            <col width="600" />
        </colgroup>
        <tr>
            <td>Name:</td>
            <td><asp:Label ID="name" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Straße und Hausnummer:</td>
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
            <td valign="top" style="width: 250px;">
                <h2>Einsatzdatum</h2>
                <asp:Calendar ID="dekodatum" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                <asp:Panel ID="auswahl1" runat="server">
                    <h2>Durchführung</h2>
                    <table>
                        <tr align="left">
                            <td style="width: 20px;"><asp:CheckBox ID="telefonische_ankuendigung" runat="server" /></td>
                            <td><b>telefonische Ankündigung erfolgt?</b></td>
                        </tr>
                        <tr align="left">
                            <td>&nbsp;</td>
                            <td></td>
                        </tr>
                        <tr align="left">
                            <td style="width: 20px;"><asp:RadioButton ID="deko_ja" AutoPostBack="true" Checked="true" GroupName="durchfuehrung" runat="server" /></td>
                            <td><b>Dekoration durchgeführt</b></td>
                        </tr>
                        <tr align="left">
                            <td><asp:RadioButton ID="deko_nein" GroupName="durchfuehrung" AutoPostBack="true" runat="server" /></td>
                            <td><b>Dekoration nicht durchgeführt</b></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="auswahl2" Visible="false" runat="server">
                    <h2>Gründe (bei nicht durchgeführter Dekoration)</h2>
                    <table>
                        <tr>
                            <td style="width: 20px;"><asp:RadioButton ID="keine_deko_abgabe" AutoPostBack="true" GroupName="keine_deko" runat="server" /></td>
                            <td><b>Abgabe der Werbemittel im Shop</b></td>
                        </tr>
                        <tr>
                            <td><asp:RadioButton ID="keine_deko_nicht_moeglich" AutoPostBack="true" GroupName="keine_deko" runat="server" /></td>
                            <td><b>Deko nicht möglich</b></td>
                        </tr>
                        <tr>
                            <td><asp:RadioButton ID="keine_deko_nicht_gewuenscht" AutoPostBack="true" GroupName="keine_deko" runat="server" /></td>
                            <td><b>Deko nicht gewünscht</b></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>

    <br />
    <br />
    <asp:Panel ID="deko_erfolgt" runat="server">
        <h2>Eingesetzte Werbemittel</h2>
        <table style="width: 610px;">
            <tr>
                <td style="width: 260px"><b>Grohe Standard</b></td>
                <td><b>Anzahl<br />
                    Ausgabe</b>
                </td>
                <td><b>Händlerbewertung<br />
                    Schulnotensystem 1 - 6<br />
                    Keine Wertung = 0</b>
                </td>
            </tr>
            <tr>
                <td><b>Banner Eurostyle</b></td>
                <td><asp:TextBox ID="banner_eurostyle" runat="server" CssClass="textbox"></asp:TextBox></td>
                <td><asp:TextBox ID="banner_eurostyle_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Banner Livestyle</b></td>
                <td><asp:TextBox ID="bannner_livestyle" runat="server" CssClass="textbox"></asp:TextBox></td>
                <td><asp:TextBox ID="bannner_livestyle_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Banner Essence</b></td>
                <td><asp:TextBox ID="banner_essence" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="banner_essence_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Aufkleber Aquatunes</b></td>
                <td><asp:TextBox ID="aufkleber_aquatunes" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="aufkleber_aquatunes_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Dekosäule Aquatunes</b></td>
                <td><asp:TextBox ID="deko_saeule_aquatunes" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="deko_saeule_aquatunes_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Dekowürfel Nachhaltigkeit</b></td>
                <td><asp:TextBox ID="deko_wuerfel_nachhaltigkeit" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="deko_wuerfel_nachhaltigkeit_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Dekowürfel Made in Germany</b></td>
                <td><asp:TextBox ID="deko_wuerfel_germany" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="deko_wuerfel_germany_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Dekowürfel Essence</b></td>
                <td><asp:TextBox ID="deko_wuerfel_essence" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="deko_wuerfel_essence_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3"><b>Für Neukunden (bei Bestandskunden nur bei Beschädigung)</b></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td><b>Dekosäule Standard Logo</b></td>
                <td><asp:TextBox ID="deko_saeule_logo" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="deko_saeule_logo_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Aufsteller &quot;5 Jahre Garantie&quot;</b></td>
                <td><asp:TextBox ID="fuenfjahre_garantie" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="fuenfjahre_garantie_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Aufkleber QR-Code</b></td>
                <td><asp:TextBox ID="qr" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="qr_note" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Aufkleber Logo</b></td>
                <td><asp:TextBox ID="aufkleber_logo" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="aufkleber_logo_note" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td><b>Badetuch 80x150</b></td>
                <td><asp:TextBox ID="badetuch" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="badetuch_note" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <br />
        <%--<h2>Winterdeko</h2>
        <table>
            <tr>
                <td style="width: 260px"><b>Winterdeko erhalten? (ja/nein)</b></td>
                <td>
                    <asp:DropDownList ID="winterdeko_erhalten" runat="server">
                        <asp:ListItem Value="keine Angabe">keine Angabe</asp:ListItem>
                        <asp:ListItem Value="ja">ja</asp:ListItem>
                        <asp:ListItem Value="nein">nein</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><b>Winterdeko genutzt? (ja/nein)</b></td>
                <td>
                    <asp:DropDownList ID="winterdeko_genutzt" runat="server">
                        <asp:ListItem Value="keine Angabe">keine Angabe</asp:ListItem>
                        <asp:ListItem Value="ja">ja</asp:ListItem>
                        <asp:ListItem Value="nein">nein</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><b>Bewertung Winterdeko (Schulnoten 1 - 6)</b></td>
                <td><asp:TextBox ID="bewertung_winterdeko" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <br />--%>
        <h2>sonstige Outlet-Daten</h2>
        <table>
            <tr>
                <td style="width: 260px"><b>Anzahl möglicher Banner</b></td>
                <td><asp:TextBox ID="banner_anzahl" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Schaufenster Stromanschluss vorhanden</b></td>
                <td>
                    <asp:DropDownList ID="stromanschluss_vorhanden" runat="server">
                        <asp:ListItem Value="keine Angabe">keine Angabe</asp:ListItem>
                        <asp:ListItem Value="ja">ja</asp:ListItem>
                        <asp:ListItem Value="nein">nein</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><b>Attraktivität der Fenster</b></td>
                <td>
                    <asp:DropDownList ID="attraktivitaet" runat="server">
                        <asp:ListItem Value="keine Angabe">keine Angabe</asp:ListItem>
                        <asp:ListItem Value="A">A</asp:ListItem>
                        <asp:ListItem Value="B">B</asp:ListItem>
                        <asp:ListItem Value="C">C</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <h2>Bemerkung</h2>
        <asp:TextBox ID="bemerkung_material" runat="server" Width="560px" TextMode="MultiLine" Rows="8"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="speichern_material" runat="server" Text="Bericht speichern" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="nicht_moeglich" Visible="false" runat="server">
        <h2>Keine Dekoration möglich</h2>
        <table>
            <tr>
                <td style="width: 20px"><asp:RadioButton ID="nicht_angetroffen" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td style="width: 150px"><b>nicht angetroffen</b></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="betriebsferien" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>Betriebsferien (bis:)</b></td>
                <td><asp:TextBox ID="betriebsferien_bis" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="umbau" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>Umbau (bis:)</b></td>
                <td><asp:TextBox ID="umbau_bis" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="umzug" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>Umzug (neue Adresse:)</b></td>
                <td><asp:TextBox ID="umzug_neue_adresse" runat="server" Width="350px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="geschaeftsaufgabe" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>baldige Geschäftsaufgabe</b></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="nicht_existent" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>nicht existent</b></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="keine_schaufenster" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>keine Schaufenster</b></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="ablehnung_telefon" GroupName="keine_deko_moeglich" runat="server" /></td>
                <td><b>Ablehnung bei telefonischer Anmeldung</b></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="keine_deko_fehler" runat="server" ForeColor="Red" Font-Bold="true" Visible="false" Text="Bitte einen Grund auswählen!"></asp:Label>
                </td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <h2>Bemerkung</h2>
        <asp:TextBox ID="keine_deko_moeglich_bemerkung" runat="server" Width="560px" TextMode="MultiLine" Rows="8"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="keine_deko_moeglich_speichern" runat="server" Text="Bericht speichern" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="nicht_gewünscht" Visible="false" runat="server">
        <h2>Kein Dekoservice gewünscht</h2>
        <table style="width: 600px">
            <tr>
                <td><asp:CheckBox ID="ablehnung_generell" runat="server" /></td>
                <td><b>Händler wünscht generell keine Deko mehr</b></td>

            </tr>
            <tr>
                <td><asp:CheckBox ID="ablehnung_versand" runat="server" /></td>
                <td><b>Händler wünscht zukünftig Dekomittel per Versand / Eigendeko</b></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="ablehnung_kuenftig" runat="server" /></td>
                <td><b>Händler wünscht bei künftigen Aktionen den Dekoservice</b></td>
            </tr>
        </table>
        <br />
        <br />
        <h2>Bemerkung</h2>
        <asp:TextBox ID="ablehnung_bemerkung" runat="server" Width="560px" TextMode="MultiLine" Rows="8"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ablehnng_speichern" runat="server" Text="Bericht speichern" />
        <br />
        <br />
    </asp:Panel>
</asp:Content>

