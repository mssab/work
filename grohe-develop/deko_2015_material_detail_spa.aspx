<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2015_material_detail_spa.aspx.vb" Inherits="material_detail_spa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Materialübersicht Grohe SPA für <asp:Label ID="name" runat="server"></asp:Label></h1>
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
            <td valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:BoundField DataField="Banner F Digital Deluxe" 
                            HeaderText="Banner F Digital Deluxe" SortExpression="Banner F Digital Deluxe" />
                        <asp:BoundField DataField="Banner Essence" HeaderText="Banner Essence" 
                            SortExpression="Banner Essence" />
                        <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                            SortExpression="Banner Grandera" />
                        <asp:BoundField DataField="Aufkleber F Digital Bluetooth" 
                            HeaderText="Aufkleber F Digital Bluetooth" 
                            SortExpression="Aufkleber F Digital Bluetooth" />
                        <asp:BoundField DataField="Deko Wuerfel Essence" 
                            HeaderText="Deko Wuerfel Essence" SortExpression="Deko Wuerfel Essence" />
                        <asp:BoundField DataField="Aufkleber Grohe SPA Logo" 
                            HeaderText="Aufkleber Grohe SPA Logo" 
                            SortExpression="Aufkleber Grohe SPA Logo" />
                        <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                            SortExpression="Aufkleber QR Code" />
                        <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" 
                            SortExpression="Aufsteller 5 Jahre Garantie" />
                        <asp:BoundField DataField="Deko Saeule SPA Logo" 
                            HeaderText="Deko Saeule SPA Logo" SortExpression="Deko Saeule SPA Logo" />
                        <asp:BoundField DataField="Body Lotion" HeaderText="Body Lotion" 
                            SortExpression="Body Lotion" />
                        <asp:BoundField DataField="Handtuch 50x100" HeaderText="Handtuch 50x100" 
                            SortExpression="Handtuch 50x100" />
                        <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" 
                            SortExpression="Handtuch 30x50" />
                        <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                            SortExpression="Schwamm" />
                        <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" SortExpression="Duschgel" />
                        <asp:BoundField DataField="Dig Bilderrahmen" HeaderText="Dig Bilderrahmen" 
                            SortExpression="Dig Bilderrahmen" />
                        <asp:BoundField DataField="Deko Steine Hot Stones" 
                            HeaderText="Deko Steine Hot Stones" SortExpression="Deko Steine Hot Stones" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    
                    SelectCommand="SELECT [Banner F Digital Deluxe], [Banner Essence], [Banner Grandera], [Aufkleber F Digital Bluetooth], [Deko Wuerfel Essence], [Aufkleber Grohe SPA Logo], [Aufkleber QR Code], [Aufsteller 5 Jahre Garantie], [Deko Saeule SPA Logo], [Body Lotion], [Handtuch 50x100], [Handtuch 30x50], Schwamm, Duschgel, [Dig Bilderrahmen], [Deko Steine Hot Stones] FROM deko_2015_ausgabe_spa_nach_mitarbeiter WHERE (mitarbeiter = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
                        <asp:BoundField DataField="Banner_F_Digital_Deluxe" 
                            HeaderText="Banner F Digital Deluxe" SortExpression="Banner_F_Digital_Deluxe" />
                        <asp:BoundField DataField="Banner_Essence" HeaderText="Banner Essence" 
                            SortExpression="Banner_Essence" />
                        <asp:BoundField DataField="Banner_Grandera" HeaderText="Banner Grandera" 
                            SortExpression="Banner_Grandera" />
                        <asp:BoundField DataField="Aufkleber_F_Digital_Bluetooth" 
                            HeaderText="Aufkleber F Digital Bluetooth" 
                            SortExpression="Aufkleber_F_Digital_Bluetooth" />
                        <asp:BoundField DataField="Deko_Wuerfel_Essence" 
                            HeaderText="Deko Wuerfel Essence" SortExpression="Deko_Wuerfel_Essence" />
                        <asp:BoundField DataField="Aufkleber_Grohe_SPA_Logo" 
                            HeaderText="Aufkleber Grohe SPA Logo" 
                            SortExpression="Aufkleber_Grohe_SPA_Logo" />
                        <asp:BoundField DataField="Aufkleber_QR_Code" HeaderText="Aufkleber QR Code" 
                            SortExpression="Aufkleber_QR_Code" />
                        <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" 
                            SortExpression="Aufsteller_5_Jahre_Garantie" />
                        <asp:BoundField DataField="Deko_Saeule_SPA_Logo" 
                            HeaderText="Deko Saeule SPA Logo" SortExpression="Deko_Saeule_SPA_Logo" />
                        <asp:BoundField DataField="Body_Lotion" HeaderText="Body Lotion" 
                            SortExpression="Body_Lotion" />
                        <asp:BoundField DataField="Handtuch_50x100" HeaderText="Handtuch 50x100" 
                            SortExpression="Handtuch_50x100" />
                        <asp:BoundField DataField="Handtuch_30x50" HeaderText="Handtuch 30x50" 
                            SortExpression="Handtuch_30x50" />
                        <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                            SortExpression="Schwamm" />
                        <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" 
                            SortExpression="Duschgel" />
                        <asp:BoundField DataField="Dig_Bilderrahmen" HeaderText="Dig Bilderrahmen" 
                            SortExpression="Dig_Bilderrahmen" />
                        <asp:BoundField DataField="Deko_Steine_Hot_Stones" 
                            HeaderText="Deko Steine Hot Stones" SortExpression="Deko_Steine_Hot_Stones" />
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                            InsertVisible="False" ReadOnly="True" />
                        
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2015_material_spa] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2015_material_spa] ([Banner F Digital Deluxe], [Banner Essence], [Banner Grandera], [Aufkleber F Digital Bluetooth], [Deko Wuerfel Essence], [Aufkleber Grohe SPA Logo], [Aufkleber QR Code], [Aufsteller 5 Jahre Garantie], [Deko Saeule SPA Logo], [Body Lotion], [Handtuch 50x100], [Handtuch 30x50], [Schwamm], [Duschgel], [Dig Bilderrahmen], [Deko Steine Hot Stones]) VALUES (@Banner_F_Digital_Deluxe, @Banner_Essence, @Banner_Grandera, @Aufkleber_F_Digital_Bluetooth, @Deko_Wuerfel_Essence, @Aufkleber_Grohe_SPA_Logo, @Aufkleber_QR_Code, @Aufsteller_5_Jahre_Garantie, @Deko_Saeule_SPA_Logo, @Body_Lotion, @Handtuch_50x100, @Handtuch_30x50, @Schwamm, @Duschgel, @Dig_Bilderrahmen, @Deko_Steine_Hot_Stones)"
                    SelectCommand="SELECT [Banner F Digital Deluxe] AS Banner_F_Digital_Deluxe, [Banner Essence] AS Banner_Essence, [Banner Grandera] AS Banner_Grandera, [Aufkleber F Digital Bluetooth] AS Aufkleber_F_Digital_Bluetooth, [Deko Wuerfel Essence] AS Deko_Wuerfel_Essence, [Aufkleber Grohe SPA Logo] AS Aufkleber_Grohe_SPA_Logo, [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [Deko Saeule SPA Logo] AS Deko_Saeule_SPA_Logo, [Body Lotion] AS Body_Lotion, [Handtuch 50x100] AS Handtuch_50x100, [Handtuch 30x50] AS Handtuch_30x50, [Schwamm], [Duschgel], [Dig Bilderrahmen] AS Dig_Bilderrahmen, [Deko Steine Hot Stones] AS Deko_Steine_Hot_Stones, [id] FROM [deko_2015_material_spa] WHERE ([promotion_id] = @promotion_id)"
                    
                    UpdateCommand="UPDATE [deko_2015_material_spa] SET [Banner F Digital Deluxe] = @Banner_F_Digital_Deluxe, [Banner Essence] = @Banner_Essence, [Banner Grandera] = @Banner_Grandera, [Aufkleber F Digital Bluetooth] = @Aufkleber_F_Digital_Bluetooth, [Deko Wuerfel Essence] = @Deko_Wuerfel_Essence, [Aufkleber Grohe SPA Logo] = @Aufkleber_Grohe_SPA_Logo, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Deko Saeule SPA Logo] = @Deko_Saeule_SPA_Logo, [Body Lotion] = @Body_Lotion, [Handtuch 50x100] = @Handtuch_50x100, [Handtuch 30x50] = @Handtuch_30x50, [Schwamm] = @Schwamm, [Duschgel] = @Duschgel, [Dig Bilderrahmen] = @Dig_Bilderrahmen, [Deko Steine Hot Stones] = @Deko_Steine_Hot_Stones WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Banner_F_Digital_Deluxe" Type="Int32" />
                        <asp:Parameter Name="Banner_Essence" Type="Int32" />
                        <asp:Parameter Name="Banner_Grandera" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth" Type="Int32" />
                        <asp:Parameter Name="Deko_Wuerfel_Essence" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Body_Lotion" Type="Int32" />
                        <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
                        <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
                        <asp:Parameter Name="Schwamm" Type="Int32" />
                        <asp:Parameter Name="Duschgel" Type="Int32" />
                        <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
                        <asp:Parameter Name="Deko_Steine_Hot_Stones" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" 
                            QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Banner_F_Digital_Deluxe" Type="Int32" />
                        <asp:Parameter Name="Banner_Essence" Type="Int32" />
                        <asp:Parameter Name="Banner_Grandera" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_F_Digital_Bluetooth" Type="Int32" />
                        <asp:Parameter Name="Deko_Wuerfel_Essence" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Body_Lotion" Type="Int32" />
                        <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
                        <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
                        <asp:Parameter Name="Schwamm" Type="Int32" />
                        <asp:Parameter Name="Duschgel" Type="Int32" />
                        <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
                        <asp:Parameter Name="Deko_Steine_Hot_Stones" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView3" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Banner F Digital Deluxe" />
                        <asp:TemplateField HeaderText="Banner Essence" />
                        <asp:TemplateField HeaderText="Banner Grandera" />
                        <asp:TemplateField HeaderText="Aufkleber F Digital Bluetooth" />
                        <asp:TemplateField HeaderText="Deko Wuerfel Essence" />
                        <asp:TemplateField HeaderText="Aufkleber Grohe SPA Logo" />
                        <asp:TemplateField HeaderText="Aufkleber QR Code" />
                        <asp:TemplateField HeaderText="Aufsteller 5 Jahre Garantie" />
                        <asp:TemplateField HeaderText="Deko Saeule SPA Logo" />
                        <asp:TemplateField HeaderText="Body Lotion" />
                        <asp:TemplateField HeaderText="Handtuch 50x100" />
                        <asp:TemplateField HeaderText="Handtuch 30x50" />
                        <asp:TemplateField HeaderText="Schwamm" />
                        <asp:TemplateField HeaderText="Duschgel" />
                        <asp:TemplateField HeaderText="Dig Bilderrahmen" />
                        <asp:TemplateField HeaderText="Deko Steine Hot Stones" />
                        
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

