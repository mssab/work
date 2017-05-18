<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="true" CodeFile="material_detail_spa.aspx.vb" Inherits="material_detail_spa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Materialübersicht Grohe SPA für <asp:Label ID="name" runat="server"></asp:Label></h1>
    <h2>Einsätze</h2>
    <table style="width:280px;">
        <tr>
            <td>Gesamtzahl:</td>
            <td><asp:Label ID="gesamt" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td><asp:Label ID="neu" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td>Besuchte Shops:</td>
            <td><asp:Label ID="besucht" runat="server" ></asp:Label></td>
        </tr>
        <tr>
            <td>davon neue Shops:</td>
            <td><asp:Label ID="neu_besucht" runat="server" ></asp:Label></td>
        </tr>
        
    </table>
    <br />
    <table>
        <tr>
            <td><h2>Eingesetztes Material</h2></td>
            
            <td><h2>Zugeordnetes Material</h2></td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="200px" 
                AutoGenerateRows="False" DataSourceID="SqlDataSource2" 
                EnableModelValidation="True" >
                
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
                    <asp:CommandField  ItemStyle-Height="15" />
                    <asp:BoundField DataField="Logo" HeaderText="Logo" SortExpression="Logo" />
                    <asp:BoundField DataField="Allure" HeaderText="Allure" 
                        SortExpression="Allure" />
                    <asp:BoundField DataField="QR" HeaderText="QR" SortExpression="QR" />
                    <asp:BoundField DataField="column1" HeaderText="Power&Soul" 
                        SortExpression="column1" />
                    <asp:BoundField DataField="Woman" HeaderText="Woman" SortExpression="Woman" />
                    <asp:BoundField DataField="Grandera" HeaderText="Grandera" 
                        SortExpression="Grandera" />
                    <asp:BoundField DataField="Millieu" HeaderText="Millieu" 
                        SortExpression="Millieu" />
                    <asp:BoundField DataField="Germany" HeaderText="Germany" 
                        SortExpression="Germany" />
                    <asp:BoundField DataField="Garantie" HeaderText="Garantie" 
                        SortExpression="Garantie" />
                    <asp:BoundField DataField="displa_mit_beleuchtung" HeaderText="Display mit Beleuchtung" 
                        SortExpression="displa_mit_beleuchtung" />
                    <asp:BoundField DataField="display_ohne_beleuchtung" HeaderText="Display ohne Beleuchtung" 
                        SortExpression="display_ohne_beleuchtung" />
                    <asp:BoundField DataField="Schwamm" HeaderText="Schwamm" 
                        SortExpression="Schwamm" />
                    <asp:BoundField DataField="Duschgel" HeaderText="Duschgel" 
                        SortExpression="Duschgel" />
                    <asp:BoundField DataField="Bilderrahmen" HeaderText="Bilderrahmen" 
                        SortExpression="Bilderrahmen" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:promotion %>" 
                
                    SelectCommand="SELECT [Logo], [Allure], [QR], [Power&amp;Soul] AS column1, [Woman], [Grandera], [Millieu], [Germany], [Garantie], [displa_mit_beleuchtung], [display_ohne_beleuchtung], [Schwamm], [Duschgel], [Bilderrahmen] FROM [ausgabe_spa_nach_mitarbeiter] WHERE ([mitarbeiter] = @mitarbeiter)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="mitarbeiter" 
                        QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </td>
            <td>
                 <asp:DetailsView ID="DetailsView1" CaptionAlign="Right" runat="server" 
        Height="50px" Width="200px" AutoGenerateRows="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" CancelText="Abbruch" EditText="Bearbeiten" UpdateText="Speichern"  />
            <asp:BoundField DataField="aufkleber_grohe_logo" 
                HeaderText="Logo" SortExpression="aufkleber_grohe_logo" />
            <asp:BoundField DataField="aufkleber_allure" HeaderText="Allure" 
                SortExpression="aufkleber_allure" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="QR" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="banner_power_and_soul" HeaderText="Power&Soul" 
                SortExpression="banner_power_and_soul" />
            <asp:BoundField DataField="banner_woman" HeaderText="Woman" 
                SortExpression="banner_woman" />
            <asp:BoundField DataField="banner_grandera" HeaderText="Grandera" 
                SortExpression="banner_grandera" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="Millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="Germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="Garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="Display mit Beleuchtung" 
                SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="Display ohne Beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="schwamm" HeaderText="Schwamm" 
                SortExpression="schwamm" />
            <asp:BoundField DataField="duschgel" HeaderText="Duschgel" 
                SortExpression="duschgel" />
            <asp:BoundField DataField="bilderrahmen" HeaderText="Bilderrahmen" 
                SortExpression="bilderrahmen" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [material_spa] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [material_spa] ([aufkleber_grohe_logo], [aufkleber_allure], [aufkleber_qr], [banner_power_and_soul], [banner_woman], [banner_grandera], [wuerfel_millieu], [wuerfel_germany], [aufsteller_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [schwamm], [duschgel], [bilderrahmen]) VALUES (@aufkleber_grohe_logo, @aufkleber_allure, @aufkleber_qr, @banner_power_and_soul, @banner_woman, @banner_grandera, @wuerfel_millieu, @wuerfel_germany, @aufsteller_garantie, @display_mit_beleuchtung, @display_ohne_beleuchtung, @schwamm, @duschgel, @bilderrahmen)" 
        SelectCommand="SELECT [aufkleber_grohe_logo], [aufkleber_allure], [aufkleber_qr], [banner_power_and_soul], [banner_woman], [banner_grandera], [wuerfel_millieu], [wuerfel_germany], [aufsteller_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [schwamm], [duschgel], [bilderrahmen], [id] FROM [material_spa] WHERE ([promotion_id] = @promotion_id)" 
        
                     UpdateCommand="UPDATE [material_spa] SET [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_allure] = @aufkleber_allure, [aufkleber_qr] = @aufkleber_qr, [banner_power_and_soul] = @banner_power_and_soul, [banner_woman] = @banner_woman, [banner_grandera] = @banner_grandera, [wuerfel_millieu] = @wuerfel_millieu, [wuerfel_germany] = @wuerfel_germany, [aufsteller_garantie] = @aufsteller_garantie, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [schwamm] = @schwamm, [duschgel] = @duschgel, [bilderrahmen] = @bilderrahmen WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul" Type="Int32" />
            <asp:Parameter Name="banner_woman" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="bilderrahmen" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" 
                QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_allure" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="banner_power_and_soul" Type="Int32" />
            <asp:Parameter Name="banner_woman" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="bilderrahmen" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
    
   
</asp:Content>

