<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2014_material_detail_standard.aspx.vb" Inherits="material_detail_standard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Materialübersicht Grohe Standard für
        <asp:Label ID="name" runat="server"></asp:Label></h1>
    <h2>Einsätze</h2>
    <table style="width: 280px;">
        <tr>
            <td>Gesamtzahl:</td>
            <td>
                <asp:Label ID="gesamt" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td>
                <asp:Label ID="neu" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Besuchte Shops:</td>
            <td>
                <asp:Label ID="besucht" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td>
                <asp:Label ID="neu_besucht" runat="server"></asp:Label></td>
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
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:BoundField DataField="Aufkleber_Logo" HeaderText="Aufkleber Logo" SortExpression="Aufkleber_Logo" />
                        <asp:BoundField DataField="Aufkleber_Wasser" HeaderText="Aufkleber Wasser" SortExpression="Aufkleber_Wasser" />
                        <asp:BoundField DataField="Banner_Kubistisch" HeaderText="Banner Kubistisch" SortExpression="Banner_Kubistisch" />
                        <asp:BoundField DataField="Banner_Kind" HeaderText="Banner Kind" SortExpression="Banner_Kind" />
                        <asp:BoundField DataField="Banner_Minta" HeaderText="Banner Minta" SortExpression="Banner_Minta" />
                        <asp:BoundField DataField="Mobil_Flower" HeaderText="Mobil Flower" SortExpression="Mobil_Flower" />
                        <asp:BoundField DataField="Aufkleber_Flower" HeaderText="Aufkleber Flower" SortExpression="Aufkleber_Flower" />
                        <asp:BoundField DataField="Würfel_Germany" HeaderText="Deco Cube" SortExpression="Würfel_Germany" />
                        <asp:BoundField DataField="Aufkleber_QR" HeaderText="Aufkleber QR" SortExpression="Aufkleber_QR" />
                        <asp:BoundField DataField="Aufsteller_Garantie" HeaderText="Aufsteller Garantie" SortExpression="Aufsteller_Garantie" />
                        <asp:BoundField DataField="Display_mit_Beleuchtung" HeaderText="Display mit Beleuchtung" SortExpression="Display_mit_Beleuchtung" />
                        <asp:BoundField DataField="Display_ohne_Beleuchtung" HeaderText="Display ohne Beleuchtung" SortExpression="Display_ohne_Beleuchtung" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    SelectCommand="SELECT [Aufkleber Logo] AS Aufkleber_Logo, [Aufkleber Wasser] AS Aufkleber_Wasser, [Banner Kubistisch] AS Banner_Kubistisch, [Banner Kind] AS Banner_Kind, [Banner Minta] AS Banner_Minta, [Mobil Flower] AS Mobil_Flower, [Aufkleber Flower] AS Aufkleber_Flower, [Würfel Germany] AS Würfel_Germany, [Aufkleber QR] AS Aufkleber_QR, [Aufsteller Garantie] AS Aufsteller_Garantie, [Display mit Beleuchtung] AS Display_mit_Beleuchtung, [Display ohne Beleuchtung] AS Display_ohne_Beleuchtung FROM [deko_2014_ausgabe_standard_nach_mitarbeiter] WHERE ([mitarbeiter] = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="aufkleber_grohe_logo" HeaderText="Aufkleber Logo" SortExpression="aufkleber_grohe_logo" />
                        <asp:BoundField DataField="aufkleber_wasser" HeaderText="Aufkleber Wasser" SortExpression="aufkleber_wasser" />
                        <asp:BoundField DataField="banner_kubistisch" HeaderText="Banner Kubistisch" SortExpression="banner_kubistisch" />
                        <asp:BoundField DataField="banner_kind_neu" HeaderText="Banner Kind" SortExpression="banner_kind_neu" />
                        <asp:BoundField DataField="banner_minta_touch" HeaderText="Banner Minta" SortExpression="banner_minta_touch" />
                        <asp:BoundField DataField="mobile_icon_flower" HeaderText="Mobil Flower" SortExpression="mobile_icon_flower" />
                        <asp:BoundField DataField="aufkleber_icon_flower" HeaderText="Aufkleber Flower" SortExpression="aufkleber_icon_flower" />
                        <asp:BoundField DataField="wuerfel_made_in_germany" HeaderText="Deco Cube" SortExpression="wuerfel_made_in_germany" />
                        <asp:BoundField DataField="aufkleber_qr_code" HeaderText="Aufkleber QR" SortExpression="aufkleber_qr_code" />
                        <asp:BoundField DataField="aufsteller_5_jahre_garantie" HeaderText="Aufsteller Garantie" SortExpression="aufsteller_5_jahre_garantie" />
                        <asp:BoundField DataField="display_mit_beleuchtung" HeaderText="Display mit Beleuchtung" SortExpression="display_mit_beleuchtung" />
                        <asp:BoundField DataField="display_ohne_beleuchtung" HeaderText="Display ohne Beleuchtung" SortExpression="display_ohne_beleuchtung" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2014_material_enjoy] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2014_material_enjoy] ([aufkleber_grohe_logo], [aufkleber_wasser], [banner_kubistisch], [banner_kind_neu], [banner_minta_touch], [mobile_icon_flower], [aufkleber_icon_flower], [wuerfel_made_in_germany], [aufkleber_qr_code], [aufsteller_5_jahre_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung]) VALUES (@aufkleber_grohe_logo, @aufkleber_wasser, @banner_kubistisch, @banner_kind_neu, @banner_minta_touch, @mobile_icon_flower, @aufkleber_icon_flower, @wuerfel_made_in_germany, @aufkleber_qr_code, @aufsteller_5_jahre_garantie, @display_mit_beleuchtung, @display_ohne_beleuchtung)"
                    SelectCommand="SELECT [aufkleber_grohe_logo], [aufkleber_wasser], [banner_kubistisch], [banner_kind_neu], [banner_minta_touch], [mobile_icon_flower], [aufkleber_icon_flower], [wuerfel_made_in_germany], [aufkleber_qr_code], [aufsteller_5_jahre_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [id] FROM [deko_2014_material_enjoy] WHERE ([promotion_id] = @promotion_id)"
                    UpdateCommand="UPDATE [deko_2014_material_enjoy] SET [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_wasser] = @aufkleber_wasser, [banner_kubistisch] = @banner_kubistisch, [banner_kind_neu] = @banner_kind_neu, [banner_minta_touch] = @banner_minta_touch, [mobile_icon_flower] = @mobile_icon_flower, [aufkleber_icon_flower] = @aufkleber_icon_flower, [wuerfel_made_in_germany] = @wuerfel_made_in_germany, [aufkleber_qr_code] = @aufkleber_qr_code, [aufsteller_5_jahre_garantie] = @aufsteller_5_jahre_garantie, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_ohne_beleuchtung] = @display_ohne_beleuchtung WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
                        <asp:Parameter Name="aufkleber_wasser" Type="Int32" />
                        <asp:Parameter Name="banner_kubistisch" Type="Int32" />
                        <asp:Parameter Name="banner_kind_neu" Type="Int32" />
                        <asp:Parameter Name="banner_minta_touch" Type="Int32" />
                        <asp:Parameter Name="mobile_icon_flower" Type="Int32" />
                        <asp:Parameter Name="aufkleber_icon_flower" Type="Int32" />
                        <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
                        <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
                        <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
                        <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
                        <asp:Parameter Name="aufkleber_wasser" Type="Int32" />
                        <asp:Parameter Name="banner_kubistisch" Type="Int32" />
                        <asp:Parameter Name="banner_kind_neu" Type="Int32" />
                        <asp:Parameter Name="banner_minta_touch" Type="Int32" />
                        <asp:Parameter Name="mobile_icon_flower" Type="Int32" />
                        <asp:Parameter Name="aufkleber_icon_flower" Type="Int32" />
                        <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
                        <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
                        <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
                        <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Aufkleber Logo" />
                        <asp:TemplateField HeaderText="Aufkleber Wasser" />
                        <asp:TemplateField HeaderText="Banner Kubistisch" />
                        <asp:TemplateField HeaderText="Banner Kind" />
                        <asp:TemplateField HeaderText="Banner Minta" />
                        <asp:TemplateField HeaderText="Mobil Flower" />
                        <asp:TemplateField HeaderText="Aufkleber Flower" />
                        <asp:TemplateField HeaderText="Deco Cube" />
                        <asp:TemplateField HeaderText="Aufkleber QR" />
                        <asp:TemplateField HeaderText="Aufsteller Garantie" />
                        <asp:TemplateField HeaderText="Display mit Beleuchtung" />
                        <asp:TemplateField HeaderText="Display ohne Beleuchtung" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

