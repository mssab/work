<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="daten_aendern.aspx.vb" Inherits="daten_aendern" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Stammdaten ändern</h1>
    <asp:DetailsView ID="DetailsView1" runat="server" DataKeyNames="id"  CellPadding="3"  
                        DataSourceID="SqlDataSource1" AutoGenerateRows="False" EnableModelValidation="True" CommandRowStyle-BackColor="#A09E97" >
        <Fields>
            <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" CancelText="Abbruch" UpdateText="Änderung speichern" HeaderStyle-BackColor="#A09E97" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="GP_ID" HeaderText="GP_ID" 
                                SortExpression="GP_ID"  />
                            <asp:BoundField DataField="typ" HeaderText="Typ" 
                                SortExpression="typ" />
                            <asp:BoundField DataField="name" HeaderText="Name" 
                                SortExpression="name" />                            
                            <asp:BoundField DataField="strasse" HeaderText="Strasse" 
                                SortExpression="strasse" />
                            <asp:BoundField DataField="plz" HeaderText="PLZ" SortExpression="plz" />
                            <asp:BoundField DataField="ort" HeaderText="Ort" SortExpression="ort" />
                            <asp:BoundField DataField="telefon" HeaderText="Telefon" 
                                SortExpression="telefon" />
                            <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                            <asp:BoundField DataField="dekoration" HeaderText="Dekoration" 
                                SortExpression="dekoration" />
                            <asp:BoundField DataField="anzahl_banner" HeaderText="Anzahl Banner" 
                                SortExpression="anzahl_banner" />
                            <asp:BoundField DataField="stroanschluss" HeaderText="Stromanschluss" 
                                SortExpression="stroanschluss" />
                            <asp:BoundField DataField="GPC" HeaderText="GPC" 
                                SortExpression="GPC" />
                            <asp:BoundField DataField="vl" HeaderText="VL" 
                                SortExpression="vl" />
                            <asp:BoundField DataField="gvl" HeaderText="GVL" 
                                SortExpression="gvl" />
                            <asp:BoundField DataField="glh" HeaderText="GLH" 
                                SortExpression="glh" />
                            
                            
                            
                        </Fields>
                        <AlternatingRowStyle BackColor="#DFDFDF" />
                        <HeaderStyle BackColor="#DFDFDF" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:promotion %>" 
                        DeleteCommand="DELETE FROM [stammdaten] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [stammdaten] ([GP_ID], [typ], [name], [strasse], [plz], [ort], [telefon], [email], [dekoration], [anzahl_banner], [stroanschluss], [GPC], [vl], [gvl], [glh]) VALUES (@GP_ID, @typ, @name, @strasse, @plz, @ort, @telefon, @email, @dekoration, @anzahl_banner, @stroanschluss, @GPC, @vl, @gvl, @glh)" 
                        SelectCommand="SELECT * FROM [stammdaten] WHERE ([id] = @id)" 
                        
        UpdateCommand="UPDATE [stammdaten] SET [GP_ID] = @GP_ID, [typ] = @typ, [name] = @name, [strasse] = @strasse, [plz] = @plz, [ort] = @ort, [telefon] = @telefon, [email] = @email, [dekoration] = @dekoration, [anzahl_banner] = @anzahl_banner, [stroanschluss] = @stroanschluss, [GPC] = @GPC, [vl] = @vl, [gvl] = @gvl, [glh] = @glh WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="GP_ID" Type="Int64" />
                                <asp:Parameter Name="typ" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
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
                                
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="id" 
                                    QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="GP_ID" Type="Int64" />
                                <asp:Parameter Name="typ" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
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
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                    </asp:SqlDataSource>
</asp:Content>

