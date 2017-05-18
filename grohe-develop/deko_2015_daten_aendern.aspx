<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2015_master_intern.master" AutoEventWireup="false" CodeFile="deko_2015_daten_aendern.aspx.vb" Inherits="daten_aendern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Stammdaten ändern</h1>
    <asp:DetailsView ID="DetailsView1" runat="server"  CellPadding="3"  
                        DataSourceID="SqlDataSource1" AutoGenerateRows="False" 
        EnableModelValidation="True" CommandRowStyle-BackColor="#A09E97"  >

<CommandRowStyle BackColor="#A09E97"></CommandRowStyle>
        <Fields>
            <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Speichern" />
                            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" 
                SortExpression="GP_ID" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="typ" HeaderText="Typ" 
                                SortExpression="typ"  ControlStyle-Width="350px"   />
                            <asp:BoundField DataField="name" HeaderText="Name" 
                                SortExpression="name" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="name2" HeaderText="Name2" 
                                SortExpression="name2" ControlStyle-Width="350px"  />                            
                            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                                SortExpression="strasse" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="plz" HeaderText="PLZ" 
                SortExpression="plz" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="ort" HeaderText="Ort" 
                SortExpression="ort" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="telefon" HeaderText="Telefon" 
                                SortExpression="telefon" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="email" HeaderText="E-Mail" 
                SortExpression="email" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                                SortExpression="dekoration" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="anzahl_banner" HeaderText="Anzahl Banner" 
                                SortExpression="anzahl_banner" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="stroanschluss" HeaderText="Stromanschluss" 
                                SortExpression="stroanschluss" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="GPC" HeaderText="GPC" 
                                SortExpression="GPC" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="vl" HeaderText="VL" 
                                SortExpression="vl" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="gvl" HeaderText="GVL" 
                                SortExpression="gvl" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="glh" HeaderText="GHL" 
                                SortExpression="glh" ControlStyle-Width="350px"  />
                            
                            
                            
                        <asp:BoundField DataField="mitarbeiter" HeaderText="Mitarbeiter" 
                SortExpression="mitarbeiter" ControlStyle-Width="350px"  />
            <asp:BoundField DataField="neu" HeaderText="Neu" SortExpression="neu" ControlStyle-Width="350px"  />
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="true" />
                            
                            
                            
                            
                            
                        </Fields>
                        <AlternatingRowStyle BackColor="#DFDFDF" />
                        <HeaderStyle BackColor="#DFDFDF" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:promotion %>" 
                        
        
        SelectCommand="SELECT [GP_ID], [typ], [name], [name2], [strasse], [plz], [ort], [telefon], [email], [dekoration], [anzahl_banner], [stroanschluss], [GPC], [vl], [gvl], [glh], [mitarbeiter], [neu], [id] FROM [deko_2015_stammdaten] WHERE ([id] = @id)" 
        DeleteCommand="DELETE FROM [deko_2015_stammdaten] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2015_stammdaten] ([GP_ID], [typ], [name], [name2], [strasse], [plz], [ort], [telefon], [email], [dekoration], [anzahl_banner], [stroanschluss], [GPC], [vl], [gvl], [glh], [mitarbeiter], [neu]) VALUES (@GP_ID, @typ, @name, @name2, @strasse, @plz, @ort, @telefon, @email, @dekoration, @anzahl_banner, @stroanschluss, @GPC, @vl, @gvl, @glh, @mitarbeiter, @neu)" 
        UpdateCommand="UPDATE [deko_2015_stammdaten] SET [GP_ID] = @GP_ID, [typ] = @typ, [name] = @name, [name2] = @name2, [strasse] = @strasse, [plz] = @plz, [ort] = @ort, [telefon] = @telefon, [email] = @email, [dekoration] = @dekoration, [anzahl_banner] = @anzahl_banner, [stroanschluss] = @stroanschluss, [GPC] = @GPC, [vl] = @vl, [gvl] = @gvl, [glh] = @glh, [mitarbeiter] = @mitarbeiter, [neu] = @neu WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="GP_ID" Type="Int64" />
                                <asp:Parameter Name="typ" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="name2" Type="String" />
                                <asp:Parameter Name="strasse" Type="String" />
                                <asp:Parameter Name="plz" Type="String" />
                                <asp:Parameter Name="ort" Type="String" />
                                <asp:Parameter Name="telefon" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="dekoration" Type="String" />
                                <asp:Parameter Name="anzahl_banner" Type="Int32" />
                                <asp:Parameter Name="stroanschluss" Type="String" />
                                <asp:Parameter Name="GPC" Type="String" />
                                <asp:Parameter Name="vl" Type="String" />
                                <asp:Parameter Name="gvl" Type="String" />
                                <asp:Parameter Name="glh" Type="String" />
                                <asp:Parameter Name="mitarbeiter" Type="Int32" />
                                <asp:Parameter Name="neu" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="id" 
                                    QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="GP_ID" Type="Int64" />
                                <asp:Parameter Name="typ" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="name2" Type="String" />
                                <asp:Parameter Name="strasse" Type="String" />
                                <asp:Parameter Name="plz" Type="String" />
                                <asp:Parameter Name="ort" Type="String" />
                                <asp:Parameter Name="telefon" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="dekoration" Type="String" />
                                <asp:Parameter Name="anzahl_banner" Type="Int32" />
                                <asp:Parameter Name="stroanschluss" Type="String" />
                                <asp:Parameter Name="GPC" Type="String" />
                                <asp:Parameter Name="vl" Type="String" />
                                <asp:Parameter Name="gvl" Type="String" />
                                <asp:Parameter Name="glh" Type="String" />
                                <asp:Parameter Name="mitarbeiter" Type="Int32" />
                                <asp:Parameter Name="neu" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                    </asp:SqlDataSource>
</asp:Content>

