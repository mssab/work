<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2014_material_detail_spa.aspx.vb" Inherits="material_detail_spa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Materialübersicht Grohe SPA für<asp:Label ID="name" runat="server"></asp:Label></h1>
    <h2>Einsätze</h2>
    <table style="width: 280px;">
        <tr>
            <td>Gesamtzahl:</td>
            <td>
                <asp:Label ID="gesamt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td>
                <asp:Label ID="neu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Besuchte Shops:</td>
            <td>
                <asp:Label ID="besucht" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td>
                <asp:Label ID="neu_besucht" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
                <h2>Eingesetztes Material</h2>
            </td>
            <td>
                <h2>Zugeordnetes Material</h2>
            </td>
            <td>
                <h2>Derzeitiger Bestand</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:BoundField DataField="Aufkleber_Digital" HeaderText="Aufkleber Digital" SortExpression="Aufkleber_Digital" />
                        <asp:BoundField DataField="Banner_Digital_Deluxe" HeaderText="Banner Digital Deluxe" SortExpression="Banner_Digital_Deluxe" />
                        <asp:BoundField DataField="Banner_NCC" HeaderText="Banner NCC" SortExpression="Banner_NCC" />
                        <asp:BoundField DataField="Wuerfel_Germany" HeaderText="Deco Cube" SortExpression="Wuerfel_Germany" />
                        <asp:BoundField DataField="Hot_Stones" HeaderText="Hot Stones" SortExpression="Hot_Stones" />
                        <asp:BoundField DataField="SD_Card" HeaderText="SD Card" SortExpression="SD_Card" />
                        <asp:BoundField DataField="Aufkleber_Spa" HeaderText="Aufkleber Spa" SortExpression="Aufkleber_Spa" />
                        <asp:BoundField DataField="Aufkleber_QR" HeaderText="Aufkleber QR" SortExpression="Aufkleber_QR" />
                        <asp:BoundField DataField="Banner_Grandera" HeaderText="Banner Grandera" SortExpression="Banner_Grandera" />
                        <asp:BoundField DataField="Aufsteller_Garantie" HeaderText="Aufsteller Garantie" SortExpression="Aufsteller_Garantie" />
                        <asp:BoundField DataField="Display_mit_Beleuchtung" HeaderText="Display mit Beleuchtung" SortExpression="Display_mit_Beleuchtung" />
                        <asp:BoundField DataField="Display_ohne_Beleuchtung" HeaderText="Display ohne Beleuchtung" SortExpression="Display_ohne_Beleuchtung" />
                        <asp:BoundField DataField="Buerste" HeaderText="Buerste" SortExpression="Buerste" />
                        <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" SortExpression="Duschgel" />
                        <asp:BoundField DataField="Handtuch" HeaderText="Handtuch" SortExpression="Handtuch" />
                        <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" SortExpression="Schwamm" />
                        <asp:BoundField DataField="Digitaler_Bilderrahmen" HeaderText="Digitaler Bilderrahmen" SortExpression="Digitaler_Bilderrahmen" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    SelectCommand="SELECT [Aufkleber Digital] AS Aufkleber_Digital, [Banner Digital Deluxe] AS Banner_Digital_Deluxe, [Banner NCC] AS Banner_NCC, [Wuerfel Germany] AS Wuerfel_Germany, [Hot Stones] AS Hot_Stones, [SD Card] AS SD_Card, [Aufkleber Spa] AS Aufkleber_Spa, [Aufkleber QR] AS Aufkleber_QR, [Banner Grandera] AS Banner_Grandera, [Aufsteller Garantie] AS Aufsteller_Garantie, [Display mit Beleuchtung] AS Display_mit_Beleuchtung, [Display ohne Beleuchtung] AS Display_ohne_Beleuchtung, [Buerste] AS Buerste, [Duschgel] AS Duschgel, [Handtuch] AS Handtuch, [Schwamm] AS Schwamm, [Digitaler Bilderrahmen] AS Digitaler_Bilderrahmen FROM [deko_2014_ausgabe_spa_nach_mitarbeiter] WHERE ([mitarbeiter] = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="aufkleber_f_digital" HeaderText="Aufkleber Digital" SortExpression="aufkleber_f_digital" />
                        <asp:BoundField DataField="banner_f_digital_deluxe" HeaderText="Banner Digital Deluxe" SortExpression="banner_f_digital_deluxe" />
                        <asp:BoundField DataField="banner_p_s_ncc" HeaderText="Banner NCC" SortExpression="banner_p_s_ncc" />
                        <asp:BoundField DataField="wuerfel_made_in_germany" HeaderText="Deco Cube" SortExpression="wuerfel_made_in_germany" />
                        <asp:BoundField DataField="hot_stones" HeaderText="Hot Stones" SortExpression="hot_stones" />
                        <asp:BoundField DataField="neue_slideshow_sd_card" HeaderText="SD Card" SortExpression="neue_slideshow_sd_card" />
                        <asp:BoundField DataField="aufkleber_grohe_spa_logo" HeaderText="Aufkleber Spa" SortExpression="aufkleber_grohe_spa_logo" />
                        <asp:BoundField DataField="aufkleber_qr_code" HeaderText="Aufkleber QR" SortExpression="aufkleber_qr_code" />
                        <asp:BoundField DataField="banner_grandera" HeaderText="Banner Grandera" SortExpression="banner_grandera" />
                        <asp:BoundField DataField="aufsteller_5_jahre_garantie" HeaderText="Aufsteller Garantie" SortExpression="aufsteller_5_jahre_garantie" />
                        <asp:BoundField DataField="display_mit_beleuchtung" HeaderText="Display mit Beleuchtung" SortExpression="display_mit_beleuchtung" />
                        <asp:BoundField DataField="display_ohne_beleuchtung" HeaderText="Display ohne Beleuchtung" SortExpression="display_ohne_beleuchtung" />
                        <asp:BoundField DataField="buerste" HeaderText="Buerste" SortExpression="buerste" />
                        <asp:BoundField DataField="duschgel" HeaderText="Duschgel" SortExpression="duschgel" />
                        <asp:BoundField DataField="handtuch" HeaderText="Handtuch" SortExpression="handtuch" />
                        <asp:BoundField DataField="schwamm" HeaderText="Schwamm" SortExpression="schwamm" />
                        <asp:BoundField DataField="dig_bilderrahmen" HeaderText="Digitaler Bilderrahmen" SortExpression="dig_bilderrahmen" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2014_material_spa] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2014_material_spa] ([aufkleber_f_digital], [banner_f_digital_deluxe], [banner_p_s_ncc], [wuerfel_made_in_germany], [hot_stones], [neue_slideshow_sd_card], [aufkleber_grohe_spa_logo], [aufkleber_qr_code], [banner_grandera], [aufsteller_5_jahre_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [buerste], [duschgel], [handtuch], [schwamm], [dig_bilderrahmen]) VALUES (@aufkleber_f_digital, @banner_f_digital_deluxe, @banner_p_s_ncc, @wuerfel_made_in_germany, @hot_stones, @neue_slideshow_sd_card, @aufkleber_grohe_spa_logo, @aufkleber_qr_code, @banner_grandera,  @aufsteller_5_jahre_garantie, @display_mit_beleuchtung, @display_ohne_beleuchtung, @buerste, @duschgel, @handtuch, @schwamm, @dig_bilderrahmen)"
                    SelectCommand="SELECT [aufkleber_f_digital], [banner_f_digital_deluxe], [banner_p_s_ncc], [wuerfel_made_in_germany], [hot_stones], [neue_slideshow_sd_card], [aufkleber_grohe_spa_logo], [aufkleber_qr_code], [banner_grandera], [aufsteller_5_jahre_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [buerste], [duschgel], [handtuch], [schwamm], [dig_bilderrahmen], [id] FROM [deko_2014_material_spa] WHERE ([promotion_id] = @promotion_id)"
                    UpdateCommand="UPDATE [deko_2014_material_spa] SET [aufkleber_f_digital] = @aufkleber_f_digital, [banner_f_digital_deluxe] = @banner_f_digital_deluxe, [banner_p_s_ncc] = @banner_p_s_ncc, [wuerfel_made_in_germany] = @wuerfel_made_in_germany, [hot_stones] = @hot_stones, [neue_slideshow_sd_card] = @neue_slideshow_sd_card, [aufkleber_grohe_spa_logo] = @aufkleber_grohe_spa_logo, [aufkleber_qr_code] = @aufkleber_qr_code, [banner_grandera] = @banner_grandera, [aufsteller_5_jahre_garantie] = @aufsteller_5_jahre_garantie, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [buerste] = @buerste, [duschgel] = @duschgel, [handtuch] = @handtuch, [schwamm] = @schwamm, [dig_bilderrahmen] = @dig_bilderrahmen WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="aufkleber_f_digital" Type="Int32" />
                        <asp:Parameter Name="banner_f_digital_deluxe" Type="Int32" />
                        <asp:Parameter Name="banner_p_s_ncc" Type="Int32" />
                        <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
                        <asp:Parameter Name="hot_stones" Type="Int32" />
                        <asp:Parameter Name="neue_slideshow_sd_card" Type="Int32" />
                        <asp:Parameter Name="aufkleber_grohe_spa_logo" Type="Int32" />
                        <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
                        <asp:Parameter Name="banner_grandera" Type="Int32" />
                        <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
                        <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="buerste" Type="Int32" />
                        <asp:Parameter Name="duschgel" Type="Int32" />
                        <asp:Parameter Name="handtuch" Type="Int32" />
                        <asp:Parameter Name="schwamm" Type="Int32" />
                        <asp:Parameter Name="dig_bilderrahmen" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="aufkleber_f_digital" Type="Int32" />
                        <asp:Parameter Name="banner_f_digital_deluxe" Type="Int32" />
                        <asp:Parameter Name="banner_p_s_ncc" Type="Int32" />
                        <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
                        <asp:Parameter Name="hot_stones" Type="Int32" />
                        <asp:Parameter Name="neue_slideshow_sd_card" Type="Int32" />
                        <asp:Parameter Name="aufkleber_grohe_spa_logo" Type="Int32" />
                        <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
                        <asp:Parameter Name="banner_grandera" Type="Int32" />
                        <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
                        <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="buerste" Type="Int32" />
                        <asp:Parameter Name="duschgel" Type="Int32" />
                        <asp:Parameter Name="handtuch" Type="Int32" />
                        <asp:Parameter Name="schwamm" Type="Int32" />
                        <asp:Parameter Name="dig_bilderrahmen" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView3" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Aufkleber Digital" />
                        <asp:TemplateField HeaderText="Banner Digital Deluxe" />
                        <asp:TemplateField HeaderText="Banner NCC" />
                        <asp:TemplateField HeaderText="Deco Cube" />
                        <asp:TemplateField HeaderText="Hot Stones" />
                        <asp:TemplateField HeaderText="SD Card" />
                        <asp:TemplateField HeaderText="Aufkleber Spa" />
                        <asp:TemplateField HeaderText="Aufkleber QR" />
                        <asp:TemplateField HeaderText="Banner Grandera" />
                        <asp:TemplateField HeaderText="Aufsteller Garantie" />
                        <asp:TemplateField HeaderText="Display mit Beleuchtung" />
                        <asp:TemplateField HeaderText="Display ohne Beleuchtung" />
                        <asp:TemplateField HeaderText="Buerste" />
                        <asp:TemplateField HeaderText="Duschgel" />
                        <asp:TemplateField HeaderText="Handtuch" />
                        <asp:TemplateField HeaderText="Schwamm" />
                        <asp:TemplateField HeaderText="Digitaler Bilderrahmen" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

