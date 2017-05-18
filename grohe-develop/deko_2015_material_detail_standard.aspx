<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2015_material_detail_standard.aspx.vb" Inherits="material_detail_standard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Materialübersicht Grohe Standard für <asp:Label ID="name" runat="server"></asp:Label></h1>
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
            <td valign="top">
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:BoundField DataField="Banner kubistisches Design" 
                            HeaderText="Banner kubistisches Design" 
                            SortExpression="Banner kubistisches Design" />
                        <asp:BoundField DataField="Banner Livestyle" HeaderText="Banner Livestyle" 
                            SortExpression="Banner Livestyle" />
                        <asp:BoundField DataField="Banner Armaturen" HeaderText="Banner Armaturen" 
                            SortExpression="Banner Armaturen" />
                        <asp:BoundField DataField="Deko Saeule SML Standard" 
                            HeaderText="Deko Saeule SML Standard" 
                            SortExpression="Deko Saeule SML Standard" />
                        <asp:BoundField DataField="Vase" HeaderText="Vase" SortExpression="Vase" />
                        <asp:BoundField DataField="Orchideen" HeaderText="Orchideen" 
                            SortExpression="Orchideen" />
                        <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                            SortExpression="Badetuch" />
                        <asp:BoundField DataField="Aufkleber QR Code" HeaderText="Aufkleber QR Code" 
                            SortExpression="Aufkleber QR Code" />
                        <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" 
                            SortExpression="Aufsteller 5 Jahre Garantie" />
                        <asp:BoundField DataField="Aufkleber Wasser Splash" 
                            HeaderText="Aufkleber Wasser Splash" SortExpression="Aufkleber Wasser Splash" />
                        <asp:BoundField DataField="Aufkleber Logo" HeaderText="Aufkleber Logo" 
                            SortExpression="Aufkleber Logo" />
                        <asp:BoundField DataField="Deko Saeule Logo Standard" 
                            HeaderText="Deko Saeule Logo Standard" 
                            SortExpression="Deko Saeule Logo Standard" />
                        <asp:BoundField DataField="Mobile Icon Flower" HeaderText="Mobile Icon Flower" 
                            SortExpression="Mobile Icon Flower" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    
                    SelectCommand="SELECT [Banner kubistisches Design], [Banner Livestyle], [Banner Armaturen], [Deko Saeule SML Standard], Vase, Orchideen, Badetuch, [Aufkleber QR Code], [Aufsteller 5 Jahre Garantie], [Aufkleber Wasser Splash], [Aufkleber Logo], [Deko Saeule Logo Standard], [Mobile Icon Flower] FROM deko_2015_ausgabe_standard_nach_mitarbeiter WHERE (mitarbeiter = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
                        <asp:BoundField DataField="Banner_kubistisches_Design" 
                            HeaderText="Banner kubistisches Design" 
                            SortExpression="Banner_kubistisches_Design" />
                        <asp:BoundField DataField="Banner_Livestyle" HeaderText="Banner Livestyle" 
                            SortExpression="Banner_Livestyle" />
                        <asp:BoundField DataField="Banner_Armaturen" HeaderText="Banner Armaturen" 
                            SortExpression="Banner_Armaturen" />
                        <asp:BoundField DataField="Deko_Saeule_SML_Standard" 
                            HeaderText="Deko Saeule SML Standard" 
                            SortExpression="Deko_Saeule_SML_Standard" />
                        <asp:BoundField DataField="Vase" HeaderText="Vase" SortExpression="Vase" />
                        <asp:BoundField DataField="Orchideen" HeaderText="Orchideen" 
                            SortExpression="Orchideen" />
                        <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                            SortExpression="Badetuch" />
                        <asp:BoundField DataField="Aufkleber_QR_Code" HeaderText="Aufkleber QR Code" 
                            SortExpression="Aufkleber_QR_Code" />
                        <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" 
                            SortExpression="Aufsteller_5_Jahre_Garantie" />
                        <asp:BoundField DataField="Aufkleber_Wasser_Splash" 
                            HeaderText="Aufkleber Wasser Splash" SortExpression="Aufkleber_Wasser_Splash" />
                        <asp:BoundField DataField="Aufkleber_Logo" HeaderText="Aufkleber Logo" 
                            SortExpression="Aufkleber_Logo" />
                        <asp:BoundField DataField="Deko_Saeule_Logo_Standard" 
                            HeaderText="Deko Saeule Logo Standard" 
                            SortExpression="Deko_Saeule_Logo_Standard" />
                        <asp:BoundField DataField="Mobile_Icon_Flower" HeaderText="Mobile Icon Flower" 
                            SortExpression="Mobile_Icon_Flower" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2015_material_enjoy] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2015_material_enjoy] ([Banner kubistisches Design], [Banner Livestyle], [Banner Armaturen], [Deko Saeule SML Standard], [Vase], [Orchideen], [Badetuch], [Aufkleber QR Code], [Aufsteller 5 Jahre Garantie], [Aufkleber Wasser Splash], [Aufkleber Logo], [Deko Saeule Logo Standard], [Mobile Icon Flower]) VALUES (@Banner_kubistisches_Design, @Banner_Livestyle, @Banner_Armaturen, @Deko_Saeule_SML_Standard, @Vase, @Orchideen, @Badetuch, @Aufkleber_QR_Code, @Aufsteller_5_Jahre_Garantie, @Aufkleber_Wasser_Splash, @Aufkleber_Logo, @Deko_Saeule_Logo_Standard, @Mobile_Icon_Flower)"
                    SelectCommand="SELECT [Banner kubistisches Design] AS Banner_kubistisches_Design, [Banner Livestyle] AS Banner_Livestyle, [Banner Armaturen] AS Banner_Armaturen, [Deko Saeule SML Standard] AS Deko_Saeule_SML_Standard, [Vase], [Orchideen], [Badetuch], [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [Aufkleber Wasser Splash] AS Aufkleber_Wasser_Splash, [Aufkleber Logo] AS Aufkleber_Logo, [Deko Saeule Logo Standard] AS Deko_Saeule_Logo_Standard, [Mobile Icon Flower] AS Mobile_Icon_Flower, [id] FROM [deko_2015_material_enjoy] WHERE ([promotion_id] = @promotion_id)"
                    
                    UpdateCommand="UPDATE [deko_2015_material_enjoy] SET [Banner kubistisches Design] = @Banner_kubistisches_Design, [Banner Livestyle] = @Banner_Livestyle, [Banner Armaturen] = @Banner_Armaturen, [Deko Saeule SML Standard] = @Deko_Saeule_SML_Standard, [Vase] = @Vase, [Orchideen] = @Orchideen, [Badetuch] = @Badetuch, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufkleber Wasser Splash] = @Aufkleber_Wasser_Splash, [Aufkleber Logo] = @Aufkleber_Logo, [Deko Saeule Logo Standard] = @Deko_Saeule_Logo_Standard, [Mobile Icon Flower] = @Mobile_Icon_Flower WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Banner_kubistisches_Design" Type="Int32" />
                        <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Armaturen" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_SML_Standard" Type="Int32" />
                        <asp:Parameter Name="Vase" Type="Int32" />
                        <asp:Parameter Name="Orchideen" Type="Int32" />
                        <asp:Parameter Name="Badetuch" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Wasser_Splash" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_Logo_Standard" Type="Int32" />
                        <asp:Parameter Name="Mobile_Icon_Flower" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Banner_kubistisches_Design" Type="Int32" />
                        <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Armaturen" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_SML_Standard" Type="Int32" />
                        <asp:Parameter Name="Vase" Type="Int32" />
                        <asp:Parameter Name="Orchideen" Type="Int32" />
                        <asp:Parameter Name="Badetuch" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Wasser_Splash" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
                        <asp:Parameter Name="Deko_Saeule_Logo_Standard" Type="Int32" />
                        <asp:Parameter Name="Mobile_Icon_Flower" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Banner kubistisches Design" />
                        <asp:TemplateField HeaderText="Banner Livestyle" />
                        <asp:TemplateField HeaderText="Banner Armaturen" />
                        <asp:TemplateField HeaderText="Deko Saeule SML Standard" />
                        <asp:TemplateField HeaderText="Vase" />
                        <asp:TemplateField HeaderText="Orchideen" />
                        <asp:TemplateField HeaderText="Badetuch" />
                        <asp:TemplateField HeaderText="Aufkleber QR Code" />
                        <asp:TemplateField HeaderText="Aufsteller 5 Jahre Garantie" />
                        <asp:TemplateField HeaderText="Aufkleber Wasser Splash" />
                        <asp:TemplateField HeaderText="Aufkleber Logo" />
                        <asp:TemplateField HeaderText="Deko Saeule Logo Standard" />
                        <asp:TemplateField HeaderText="Mobile Icon Flower" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

