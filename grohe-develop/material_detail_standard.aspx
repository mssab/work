<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="true" CodeFile="material_detail_standard.aspx.vb" Inherits="material_detail_standard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Materialübersicht Grohe Standard für <asp:Label ID="name" runat="server"></asp:Label></h1>
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
                    <asp:BoundField DataField="Tempera" HeaderText="Tempesta" 
                        SortExpression="Tempera" />
                    <asp:BoundField DataField="QR" HeaderText="QR" SortExpression="QR" />
                    <asp:BoundField DataField="Eurocube" HeaderText="Eurocube" 
                        SortExpression="Eurocube" />
                    <asp:BoundField DataField="Kind" HeaderText="Kind" SortExpression="Kind" />
                    <asp:BoundField DataField="Grotherm" HeaderText="Grohtherm" 
                        SortExpression="Grotherm" />
                    <asp:BoundField DataField="Millieu" HeaderText="Millieu" 
                        SortExpression="Millieu" />
                    <asp:BoundField DataField="Germany" HeaderText="Germany" 
                        SortExpression="Germany" />
                    <asp:BoundField DataField="Garantie" HeaderText="Garantie" 
                        SortExpression="Garantie" />
                    <asp:BoundField DataField="column1" HeaderText="Displ. mit Beleuchtung" 
                        SortExpression="column1" />
                    <asp:BoundField DataField="column2" HeaderText="Displ. ohne Beleuchtung" 
                        SortExpression="column2" />
                    <asp:BoundField DataField="Quitsche_Ente" HeaderText="Quitsche Ente" 
                        SortExpression="Quitsche_Ente" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:promotion %>" 
                SelectCommand="SELECT [Logo], [Tempera], [QR], [Eurocube], [Kind], [Grotherm], [Millieu], [Germany], [Garantie], [Disp. mit Beleuchtung] AS column1, [Displ. ohne Beleuchtung] AS column2, [Quitsche Ente] AS Quitsche_Ente FROM [ausgabe_standard_nach_mitarbeiter] WHERE ([mitarbeiter] = @mitarbeiter)">
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
            <asp:BoundField DataField="aufkleber_tempesta" HeaderText="Tempesta" 
                SortExpression="aufkleber_tempesta" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="QR" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="banner_eurocube" HeaderText="Eurocube" 
                SortExpression="banner_eurocube" />
            <asp:BoundField DataField="banner_kind" HeaderText="Kind" 
                SortExpression="banner_kind" />
            <asp:BoundField DataField="banner_grohtherm" HeaderText="Grohtherm" 
                SortExpression="banner_grohtherm" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="Millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="Germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="Garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="Displ. mit Beleuchtung" SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="Displ. ohne Beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="quitsche_ente" HeaderText="Quitsche Ente" 
                SortExpression="quitsche_ente" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [material_enjoy] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [material_enjoy] ([aufkleber_grohe_logo], [aufkleber_tempesta], [aufkleber_qr], [banner_eurocube], [banner_kind], [banner_grohtherm], [wuerfel_millieu], [wuerfel_germany], [aufsteller_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [quitsche_ente]) VALUES (@aufkleber_grohe_logo, @aufkleber_tempesta, @aufkleber_qr, @banner_eurocube, @banner_kind, @banner_grohtherm, @wuerfel_millieu, @wuerfel_germany, @aufsteller_garantie, @display_mit_beleuchtung, @display_ohne_beleuchtung, @quitsche_ente)" 
        SelectCommand="SELECT [aufkleber_grohe_logo], [aufkleber_tempesta], [aufkleber_qr], [banner_eurocube], [banner_kind], [banner_grohtherm], [wuerfel_millieu], [wuerfel_germany], [aufsteller_garantie], [display_mit_beleuchtung], [display_ohne_beleuchtung], [quitsche_ente], [id] FROM [material_enjoy] WHERE ([promotion_id] = @promotion_id)" 
        UpdateCommand="UPDATE [material_enjoy] SET [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_tempesta] = @aufkleber_tempesta, [aufkleber_qr] = @aufkleber_qr, [banner_eurocube] = @banner_eurocube, [banner_kind] = @banner_kind, [banner_grohtherm] = @banner_grohtherm, [wuerfel_millieu] = @wuerfel_millieu, [wuerfel_germany] = @wuerfel_germany, [aufsteller_garantie] = @aufsteller_garantie, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [quitsche_ente] = @quitsche_ente WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="banner_eurocube" Type="Int32" />
            <asp:Parameter Name="banner_kind" Type="Int32" />
            <asp:Parameter Name="banner_grohtherm" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="quitsche_ente" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="promotion_id" 
                QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="banner_eurocube" Type="Int32" />
            <asp:Parameter Name="banner_kind" Type="Int32" />
            <asp:Parameter Name="banner_grohtherm" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="quitsche_ente" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
    
   
</asp:Content>

