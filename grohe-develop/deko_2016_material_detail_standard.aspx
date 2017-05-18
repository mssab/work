<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2016_master_intern.master" AutoEventWireup="true" Debug="true" CodeFile="deko_2016_material_detail_standard.aspx.vb" Inherits="material_detail_standard" %>

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
                <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
                        <asp:BoundField DataField="Banner_Eurostyle" HeaderText="Banner Eurostyle" 
                            SortExpression="Banner_Eurostyle" />
                        <asp:BoundField DataField="Banner_Livestyle" HeaderText="Banner Livestyle" 
                            SortExpression="Banner_Livestyle" />
                        <asp:BoundField DataField="Banner_Essence" 
                            HeaderText="Banner Essence" 
                            SortExpression="Banner_Essence" />
                        <asp:BoundField DataField="Aufkleber_Aquatunes" HeaderText="Aufkleber Aquatunes" SortExpression="Aufkleber_Aquatunes" />
                        <asp:BoundField DataField="Dekosäule_Aquatunes" HeaderText="Dekosäule Aquatunes" 
                            SortExpression="Dekosäule_Aquatunes" />
                        <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                            SortExpression="Dekowürfel_Nachhaltigkeit" />
                        <asp:BoundField DataField="Dekowürfel_Made_in_Germany" HeaderText="Dekowürfel Made in Germany" 
                            SortExpression="Dekowürfel_Made_in_Germany" />
                        <asp:BoundField DataField="Dekosäule_Logo_Standard" 
                            HeaderText="Dekosäule Logo Standard" 
                            SortExpression="Dekosäule_Logo_Standard" />
                        <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" SortExpression="Aufsteller_5_Jahre_Garantie" />
                        <asp:BoundField DataField="Aufkleber_QR_Code" HeaderText="Aufkleber QR Code" 
                            SortExpression="Aufkleber_QR_Code" />
                        <asp:BoundField DataField="Aufkleber_Logo" 
                            HeaderText="Aufkleber Logo" 
                            SortExpression="Aufkleber_Logo" />
                        <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                            SortExpression="Badetuch" />
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                        
                       
                        
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    DeleteCommand="DELETE FROM [deko_2016_material_enjoy] WHERE [id] = @id"
                    InsertCommand="INSERT INTO [deko_2016_material_enjoy] ([Banner Eurostyle], [Banner Livestyle], [Banner Essence], [Aufkleber Aquatunes], [Dekosäule Aquatunes], [Dekowürfel Nachhaltigkeit], [Dekowürfel Made in Germany], [Dekosäule Logo Standard], [Aufsteller 5 Jahre Garantie], [Aufkleber QR Code], [Aufkleber Logo], [Badetuch]) VALUES (@Banner_Eurostyle, @Banner_Livestyle, @Banner_Essence, @Aufkleber_Aquatunes, @Dekosäule_Aquatunes, @Dekowürfel_Nachhaltigkeit, @Dekowürfel_Made_in_Germany, @Dekosäule_Logo_Standard, @Aufsteller_5_Jahre_Garantie, @Aufkleber_QR_Code, @Aufkleber_Logo, @Badetuch)"
                    SelectCommand="SELECT [Banner Eurostyle] AS Banner_Eurostyle, [Banner Livestyle] AS Banner_Livestyle, [Banner Essence] AS Banner_Essence, [Aufkleber Aquatunes] AS Aufkleber_Aquatunes, [Dekosäule Aquatunes] AS Dekosäule_Aquatunes, [Dekowürfel Nachhaltigkeit] AS Dekowürfel_Nachhaltigkeit, [Dekowürfel Made in Germany] AS Dekowürfel_Made_in_Germany, [Dekosäule Logo Standard] AS Dekosäule_Logo_Standard, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufkleber Logo] AS Aufkleber_Logo, [Badetuch], [id] FROM [deko_2016_material_enjoy] WHERE ([promotion_id] = @promotion_id)"
                    
                    UpdateCommand="UPDATE [deko_2016_material_enjoy] SET [Banner Eurostyle] = @Banner_Eurostyle, [Banner Livestyle] = @Banner_Livestyle, [Banner Essence] = @Banner_Essence, [Aufkleber Aquatunes] = @Aufkleber_Aquatunes, [Dekosäule Aquatunes] = @Dekosäule_Aquatunes, [Dekowürfel Nachhaltigkeit] = @Dekowürfel_Nachhaltigkeit, [Dekowürfel Made in Germany] = @Dekowürfel_Made_in_Germany, [Dekosäule Logo Standard] = @Dekosäule_Logo_Standard, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber Logo] = @Aufkleber_Logo, [Badetuch] = @Badetuch WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Banner_Eurostyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Essence" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Aquatunes" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Aquatunes" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Made_in_Germany" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Logo_Standard" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
                        <asp:Parameter Name="Badetuch" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Banner_Eurostyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
                        <asp:Parameter Name="Banner_Essence" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Aquatunes" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Aquatunes" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
                        <asp:Parameter Name="Dekowürfel_Made_in_Germany" Type="Int32" />
                        <asp:Parameter Name="Dekosäule_Logo_Standard" Type="Int32" />
                        <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
                        <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
                        <asp:Parameter Name="Badetuch" Type="Int32" />
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
                        <asp:BoundField DataField="Banner Eurostyle" 
                            HeaderText="Banner Eurostyle" 
                            SortExpression="Banner Eurostyle" />
                        <asp:BoundField DataField="Banner Livestyle" HeaderText="Banner Livestyle" 
                            SortExpression="Banner Livestyle" />
                        <asp:BoundField DataField="Banner Essence" HeaderText="Banner Essence" 
                            SortExpression="Banner Essence" />
                        <asp:BoundField DataField="Aufkleber Aquatunes" 
                            HeaderText="Aufkleber Aquatunes" 
                            SortExpression="Aufkleber Aquatunes" />
                        <asp:BoundField DataField="Dekosäule Aquatunes" HeaderText="Dekosäule Aquatunes" SortExpression="Dekosäule Aquatunes" />
                        <asp:BoundField DataField="Dekowürfel Nachhaltigkeit" HeaderText="Dekowürfel Nachhaltigkeit" 
                            SortExpression="Dekowürfel Nachhaltigkeit" />
                        <asp:BoundField DataField="Dekowürfel Made in Germany" HeaderText="Dekowürfel Made in Germany" 
                            SortExpression="Dekowürfel Made in Germany" />
                        <asp:BoundField DataField="Dekosäule Logo Standard" HeaderText="Dekosäule Logo Standard" 
                            SortExpression="Dekosäule Logo Standard" />
                        <asp:BoundField DataField="Aufsteller 5 Jahre Garantie" 
                            HeaderText="Aufsteller 5 Jahre Garantie" 
                            SortExpression="Aufsteller 5 Jahre Garantie" />
                        <asp:BoundField DataField="Aufkleber QR Code" 
                            HeaderText="Aufkleber QR Code" SortExpression="Aufkleber QR Code" />
                        <asp:BoundField DataField="Aufkleber Logo" HeaderText="Aufkleber Logo" 
                            SortExpression="Aufkleber Logo" />
                        <asp:BoundField DataField="Badetuch" 
                            HeaderText="Badetuch" 
                            SortExpression="Badetuch" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:promotion %>"
                    
                    SelectCommand="SELECT [Banner Eurostyle], [Banner Livestyle], [Banner Essence], [Aufkleber Aquatunes], [Dekosäule Aquatunes], [Dekowürfel Nachhaltigkeit], [Dekowürfel Made in Germany], [Dekosäule Logo Standard], [Aufsteller 5 Jahre Garantie], [Aufkleber QR Code], [Aufkleber Logo], Badetuch FROM deko_2016_ausgabe_standard_nach_mitarbeiter WHERE (mitarbeiter = @mitarbeiter)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            
            <td valign="top">
                <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="200px" AutoGenerateRows="False" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="#DFDFDF" />
                    <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
                    <Fields>
                        <asp:CommandField ItemStyle-Height="15" />
                        <asp:TemplateField HeaderText="Banner Eurostyle" />
                        <asp:TemplateField HeaderText="Banner Livestyle" />
                        <asp:TemplateField HeaderText="Banner Essence" />
                        <asp:TemplateField HeaderText="Aufkleber Aquatunes" />
                        <asp:TemplateField HeaderText="Dekosäule Aquatunes" />
                        <asp:TemplateField HeaderText="Dekowürfel Nachhaltigkeit" />
                        <asp:TemplateField HeaderText="Dekowürfel Made in Germany" />
                        <asp:TemplateField HeaderText="Dekosäule Logo Standard" />
                        <asp:TemplateField HeaderText="Aufsteller 5 Jahre Garantie" />
                        <asp:TemplateField HeaderText="Aufkleber QR Code" />
                        <asp:TemplateField HeaderText="Aufkleber Logo" />
                        <asp:TemplateField HeaderText="Badetuch" />                        
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

