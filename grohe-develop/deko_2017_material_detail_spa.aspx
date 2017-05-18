<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2017_material_detail_spa.aspx.vb" Inherits="material_detail_spa" %>

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
                <h2>Zugeordnetes Material</h2>
            </td>
            <td>
                <h2>Eingesetztes Material</h2>
            </td>            
            <td>
                <h2>Derzeitiger Bestand</h2>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
                        <asp:BoundField DataField="Banner_Rainshower_SmartControl" 
                            HeaderText="Banner Rainshower SmartControl" SortExpression="Banner_Rainshower_SmartControl" />
                        <asp:BoundField DataField="column1" HeaderText="Banner SPA-Welt" 
                            SortExpression="column1" />
                        <asp:BoundField DataField="Banner_Grandera" HeaderText="Banner Grandera" 
                            SortExpression="Banner_Grandera" />
                        <asp:BoundField DataField="Banner_Sensia_Arena" 
                            HeaderText="Banner Sensia Arena" 
                            SortExpression="Banner_Sensia_Arena" />
                        <asp:BoundField DataField="Dekosäule_Rainshower_Smart" 
                            HeaderText="Dekosäule Rainshower Smart" SortExpression="Dekosäule_Rainshower_Smart" />
                        <asp:BoundField DataField="column2" 
                            HeaderText="Dekowürfel Arena Set 3 Stk." 
                            SortExpression="column2" />
                        <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                            SortExpression="Dekowürfel_Nachhaltigkeit" />
                        <asp:BoundField DataField="column3" 
                            HeaderText="Mobilee SPA-Welt" 
                            SortExpression="column3" />
                        <asp:BoundField DataField="column4" 
                            HeaderText="Dekokörbchen (Set klein/groß)" SortExpression="column4" />
                        <asp:BoundField DataField="Handtuch_50x100" HeaderText="Handtuch 50x100" 
                            SortExpression="Handtuch_50x100" />
                        <asp:BoundField DataField="Handtuch_30x50" HeaderText="Handtuch 30x50" 
                            SortExpression="Handtuch_30x50" />
                        <asp:BoundField DataField="Bürste" HeaderText="Bürste" 
                            SortExpression="Bürste" />
                        <asp:BoundField DataField="Seife" HeaderText="Seife" 
                            SortExpression="Seife" />
                        <asp:BoundField DataField="Raumspray" HeaderText="Raumspray" 
                            SortExpression="Raumspray" />
                        <asp:BoundField DataField="Dig_Bilderrahmen" HeaderText="Dig Bilderrahmen" 
                            SortExpression="Dig_Bilderrahmen" />
                        <asp:BoundField DataField="Aufkleber_QR_Code" 
                            HeaderText="Aufkleber QR Code" SortExpression="Aufkleber_QR_Code" />
                        <asp:BoundField DataField="Aufkleber_Grohe_SPA_Logo" HeaderText="Aufkleber Grohe SPA Logo" SortExpression="Aufkleber_Grohe_SPA_Logo" />
                        
                        <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" HeaderText="Aufsteller 5 Jahre Garantie" SortExpression="Aufsteller_5_Jahre_Garantie" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        
                        
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2017_material_spa] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2017_material_spa] ([Banner Rainshower SmartControl], [Banner SPA-Welt], [Banner Grandera], [Banner Sensia Arena], [Dekosäule Rainshower Smart], [Dekowürfel Arena Set 3 Stk.], [Dekowürfel Nachhaltigkeit], [Mobilee SPA-Welt], [Dekokörbchen (Set klein/groß)], [Handtuch 50x100], [Handtuch 30x50], [Bürste], [Seife], [Raumspray], [Dig Bilderrahmen], [Aufkleber QR Code], [Aufkleber Grohe SPA Logo], [Aufsteller 5 Jahre Garantie]) VALUES (@Banner_Rainshower_SmartControl, @column1, @Banner_Grandera, @Banner_Sensia_Arena, @Dekosäule_Rainshower_Smart, @column2, @Dekowürfel_Nachhaltigkeit, @column3, @column4, @Handtuch_50x100, @Handtuch_30x50, @Bürste, @Seife, @Raumspray, @Dig_Bilderrahmen, @Aufkleber_QR_Code, @Aufkleber_Grohe_SPA_Logo, @Aufsteller_5_Jahre_Garantie)"
                    SelectCommand="SELECT [Banner Rainshower SmartControl] AS Banner_Rainshower_SmartControl, [Banner SPA-Welt] AS column1, [Banner Grandera] AS Banner_Grandera, [Banner Sensia Arena] AS Banner_Sensia_Arena, [Dekosäule Rainshower Smart] AS Dekosäule_Rainshower_Smart, [Dekowürfel Arena Set 3 Stk.] AS column2, [Dekowürfel Nachhaltigkeit] AS Dekowürfel_Nachhaltigkeit, [Mobilee SPA-Welt] AS column3, [Dekokörbchen (Set klein/groß)] AS column4, [Handtuch 50x100] AS Handtuch_50x100, [Handtuch 30x50] AS Handtuch_30x50, [Bürste], [Seife], [Raumspray], [Dig Bilderrahmen] AS Dig_Bilderrahmen, [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufkleber Grohe SPA Logo] AS Aufkleber_Grohe_SPA_Logo, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [id] FROM [deko_2017_material_spa] WHERE ([promotion_id] = @promotion_id)"
                    
                    UpdateCommand="UPDATE [deko_2017_material_spa] SET [Banner Rainshower SmartControl] = @Banner_Rainshower_SmartControl, [Banner SPA-Welt] = @column1, [Banner Grandera] = @Banner_Grandera, [Banner Sensia Arena] = @Banner_Sensia_Arena, [Dekosäule Rainshower Smart] = @Dekosäule_Rainshower_Smart, [Dekowürfel Arena Set 3 Stk.] = @column2, [Dekowürfel Nachhaltigkeit] = @Dekowürfel_Nachhaltigkeit, [Mobilee SPA-Welt] = @column3, [Dekokörbchen (Set klein/groß)] = @column4, [Handtuch 50x100] = @Handtuch_50x100, [Handtuch 30x50] = @Handtuch_30x50, [Bürste] = @Bürste, [Seife] = @Seife, [Raumspray] = @Raumspray, [Dig Bilderrahmen] = @Dig_Bilderrahmen, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber Grohe SPA Logo] = @Aufkleber_Grohe_SPA_Logo, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Banner_Rainshower_SmartControl" Type="Int32" />
                        <asp:Parameter Name="column1" Type="Int32" />
                        <asp:Parameter Name="Banner_Grandera" Type="Int32" />
                        <asp:Parameter Name="Banner_Sensia_Arena" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Rainshower_Smart" Type="Int32" />
                        <asp:Parameter Name="column2" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
                        <asp:Parameter Name="column3" Type="Int32" />
                        <asp:Parameter Name="column4" Type="Int32" />
                        <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
                        <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
                        <asp:Parameter Name="Bürste" Type="Int32" />
                        <asp:Parameter Name="Seife" Type="Int32" />
                        <asp:Parameter Name="Raumspray" Type="Int32" />
                        <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" 
                            QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Banner_Rainshower_SmartControl" Type="Int32" />
                        <asp:Parameter Name="column1" Type="Int32" />
                        <asp:Parameter Name="Banner_Grandera" Type="Int32" />
                        <asp:Parameter Name="Banner_Sensia_Arena" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Rainshower_Smart" Type="Int32" />
                        <asp:Parameter Name="column2" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
                        <asp:Parameter Name="column3" Type="Int32" />
                        <asp:Parameter Name="column4" Type="Int32" />
                        <asp:Parameter Name="Handtuch_50x100" Type="Int32" />
                        <asp:Parameter Name="Handtuch_30x50" Type="Int32" />
                        <asp:Parameter Name="Bürste" Type="Int32" />
                        <asp:Parameter Name="Seife" Type="Int32" />
                        <asp:Parameter Name="Raumspray" Type="Int32" />
                        <asp:Parameter Name="Dig_Bilderrahmen" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Grohe_SPA_Logo" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:BoundField DataField="Banner Rainshower SmartControl" 
                            HeaderText="Banner Rainshower SmartControl" SortExpression="Banner Rainshower SmartControl" />
                        <asp:BoundField DataField="Banner SPA-Welt" HeaderText="Banner SPA-Welt" 
                            SortExpression="Banner SPA-Welt" />
                        <asp:BoundField DataField="Banner Grandera" HeaderText="Banner Grandera" 
                            SortExpression="Banner Grandera" />
                        <asp:BoundField DataField="Banner Sensia Arena" 
                            HeaderText="Banner Sensia Arena" 
                            SortExpression="Banner Sensia Arena" />
                        <asp:BoundField DataField="Dekosäule Rainshower Smart" 
                            HeaderText="Dekosäule Rainshower Smart" SortExpression="Dekosäule Rainshower Smart" />
                        <asp:BoundField DataField="Dekowürfel Arena Set 3 Stk." 
                            HeaderText="Dekowürfel Arena Set 3 Stk." 
                            SortExpression="Dekowürfel Arena Set 3 Stk." />
                        <asp:BoundField DataField="Dekowürfel Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                            SortExpression="Dekowürfel Nachhaltigkeit" />
                        <asp:BoundField DataField="Mobilee SPA-Welt" 
                            HeaderText="Mobilee SPA-Welt" 
                            SortExpression="Mobilee SPA-Welt" />
                        <asp:BoundField DataField="Dekokörbchen (Set klein/groß)" 
                            HeaderText="Dekokörbchen (Set klein/groß)" SortExpression="Dekokörbchen (Set klein/groß)" />
                        <asp:BoundField DataField="Handtuch 50x100" HeaderText="Handtuch 50x100" 
                            SortExpression="Handtuch 50x100" />
                        <asp:BoundField DataField="Handtuch 30x50" HeaderText="Handtuch 30x50" 
                            SortExpression="Handtuch 30x50" />
                        <asp:BoundField DataField="Bürste" HeaderText="Bürste" 
                            SortExpression="Bürste" />
                        <asp:BoundField DataField="Seife" HeaderText="Seife" 
                            SortExpression="Seife" />
                        <asp:BoundField DataField="Raumspray" HeaderText="Raumspray" SortExpression="Raumspray" />
                        <asp:BoundField DataField="Dig Bilderrahmen]" HeaderText="Dig Bilderrahmen]" 
                            SortExpression="Dig Bilderrahmen]" />
                        <asp:BoundField DataField="Aufkleber QR Code" 
                            HeaderText="Aufkleber QR Code" SortExpression="Aufkleber QR Code" />
                        <asp:BoundField DataField="Aufkleber Grohe SPA Logo" HeaderText="Aufkleber Grohe SPA Logo" SortExpression="Aufkleber Grohe SPA Logo" />
                        <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" HeaderText="Aufsteller 5 Jahre Garantie" SortExpression="Aufsteller 5 Jahre Garantie" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    
                    SelectCommand="SELECT [Banner Rainshower SmartControl], [Banner SPA-Welt], [Banner Grandera], [Banner Sensia Arena], [Dekosäule Rainshower Smart], [Dekowürfel Arena Set 3 Stk.], [Dekowürfel Nachhaltigkeit], [Mobilee SPA-Welt], [Dekokörbchen (Set klein/groß)], [Handtuch 50x100], [Handtuch 30x50], Bürste, Seife, Raumspray, [Dig Bilderrahmen]]], [Aufkleber QR Code], [Aufkleber Grohe SPA Logo], [Aufsteller 5 Jahre Garantie] FROM deko_2017_ausgabe_spa_nach_mitarbeiter WHERE (mitarbeiter = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            
            <td valign="top">
                <asp:DetailsView ID="DetailsView3" CaptionAlign="Right" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Banner Rainshower SmartControl" />
                        <asp:TemplateField HeaderText="Banner SPA-Welt" />
                        <asp:TemplateField HeaderText="Banner Grandera" />
                        <asp:TemplateField HeaderText="Banner Sensia Arena" />
                        <asp:TemplateField HeaderText="Dekosäule Rainshower Smart" />
                        <asp:TemplateField HeaderText="Dekowürfel Arena Set 3 Stk." />
                        <asp:TemplateField HeaderText="Dekowürfel_Nachhaltigkeit" />
                        <asp:TemplateField HeaderText="Mobilee SPA-Welt" />
                        <asp:TemplateField HeaderText="Dekokörbchen (Set klein/groß)" />
                        <asp:TemplateField HeaderText="Handtuch 50x100" />
                        <asp:TemplateField HeaderText="Handtuch 30x50" />
                        <asp:TemplateField HeaderText="Bürste" />
                        <asp:TemplateField HeaderText="Seife" />
                        <asp:TemplateField HeaderText="Raumspray" />
                        <asp:TemplateField HeaderText="Dig Bilderrahmen" />
                        <asp:TemplateField HeaderText="Aufkleber QR Code" />
                        <asp:TemplateField HeaderText="Aufkleber Grohe SPA Logo" />
                        <asp:TemplateField HeaderText="Aufsteller 5 Jahre Garantie" />
                        
                        
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

