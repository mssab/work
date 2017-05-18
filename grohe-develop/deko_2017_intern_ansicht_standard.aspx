<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2017_master_intern.master" AutoEventWireup="false" CodeFile="deko_2017_intern_ansicht_standard.aspx.vb" Inherits="deko_2017_intern_ansicht" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/slides.min.jquery.js"></script>
	
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.3.1.css" media="screen" />
    <script type="text/javascript">
		$(document).ready(function() {
			/*
			*   Examples - images
			*/

			$("a#example1").fancybox({
				'titleShow'		: false,
				'transitionIn'		: 'elastic',
				'transitionOut'		: 'elastic',
				'titlePosition' 	: 'over',
			});

			$("a#example2").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
			});

			$("a#example3").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'
			});

			$("a#example4").fancybox();

			$("a#example5").fancybox({
				'titlePosition'	: 'inside'
			});

			$("a#example6").fancybox({
				'titlePosition'	: 'over'
			});

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'elastic',
				'transitionOut'		: 'elastic',
				'titlePosition' 	: 'over',				
			});

			/*
			*   Examples - various
			*/

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$("#various3").fancybox({
				'width'				: '75%',
				'height'			: '75%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Grohe</h1>
    <table>
        <tr>
            <td style="width:10%">Name:</td>
            <td><asp:Label ID="name" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Straße:</td>
            <td><asp:Label ID="strasse" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>PLZ und Ort:</td>
            <td><asp:Label ID="plz_ort" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Dekoration:</td>
            <td><asp:Label ID="deko" runat="server"></asp:Label></td>
        </tr>        
    </table>
    <br />
    
    <h1>Bilder</h1>
    <asp:Panel ID="bilder_vorhanden" runat="server">
        <table>
        <tr>
            <td><h2>Vorher</h2></td>
            <td><h2>Nachher</h2></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_1" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_2" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_3" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_4" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td></td>
            <td><h2>Berichtsbild</h2></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="bericht" runat="server"></asp:Label></td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="bilder_nicht_vorhanden" runat="server">
        <h2>Für diese GP-ID liegen im Dekoportal leider noch keine Fotos vor.</h2>
    </asp:Panel>
    <h1>Bericht</h1>
     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True">
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" EditText="Bearbeiten" UpdateText="Speichern" CancelText="Abbruch" />
            <asp:BoundField DataField="id" HeaderText="id" 
                ReadOnly="True" SortExpression="id" InsertVisible="False" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="Banner_Eurostyle" 
                HeaderText="Banner_Eurostyle" 
                SortExpression="Banner_Eurostyle" />
            <asp:BoundField DataField="Banner_Eurostyle_Note" 
                HeaderText="Banner_Eurostyle_Note" 
                SortExpression="Banner_Eurostyle_Note" />
            <asp:BoundField DataField="Banner_Livestyle" HeaderText="Banner_Livestyle" 
                SortExpression="Banner_Livestyle" />
            <asp:BoundField DataField="Banner_Livestyle_Note" 
                HeaderText="Banner_Livestyle_Note" 
                SortExpression="Banner_Livestyle_Note" />
            <asp:BoundField DataField="Banner_Essence" HeaderText="Banner_Essence" 
                SortExpression="Banner_Essence" />
            <asp:BoundField DataField="Banner_Essence_Note" HeaderText="Banner_Essence_Note" 
                SortExpression="Banner_Essence_Note" />
            <asp:BoundField DataField="Aufkleber_Aquatunes" HeaderText="Aufkleber_Aquatunes" 
                SortExpression="Aufkleber_Aquatunes" />
            <asp:BoundField DataField="Aufkleber_Aquatunes_Note" 
                HeaderText="Aufkleber_Aquatunes_Note" 
                SortExpression="Aufkleber_Aquatunes_Note" />
            <asp:BoundField DataField="Dekosäule_Aquatunes" HeaderText="Dekosäule_Aquatunes" 
                SortExpression="Dekosäule_Aquatunes" />
            <asp:BoundField DataField="Dekosäule_Aquatunes_Note" HeaderText="Dekosäule_Aquatunes_Note" 
                SortExpression="Dekosäule_Aquatunes_Note" />
            <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit" HeaderText="Dekowürfel_Nachhaltigkeit" 
                SortExpression="Dekowürfel_Nachhaltigkeit" />
            <asp:BoundField DataField="Dekowürfel_Nachhaltigkeit_Note" 
                HeaderText="Dekowürfel_Nachhaltigkeit_Note" 
                SortExpression="Dekowürfel_Nachhaltigkeit_Note" />
            <asp:BoundField DataField="Dekowürfel_Made_in_Germany" HeaderText="Dekowürfel_Made_in_Germany" 
                SortExpression="Dekowürfel_Made_in_Germany" />
            <asp:BoundField DataField="Dekowürfel_Made_in_Germany_Note" 
                HeaderText="Dekowürfel_Made_in_Germany_Note" 
                SortExpression="Dekowürfel_Made_in_Germany_Note" />
            <asp:BoundField DataField="Dekosäule_Logo_Standard" HeaderText="Dekosäule_Logo_Standard" 
                SortExpression="Dekosäule_Logo_Standard" />
            <asp:BoundField DataField="Dekosäule_Logo_Standard_Note" 
                HeaderText="Dekosäule_Logo_Standard_Note" 
                SortExpression="Dekosäule_Logo_Standard_Note" />
            <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie" 
                HeaderText="Aufsteller_5_Jahre_Garantie" 
                SortExpression="Aufsteller_5_Jahre_Garantie" />
            <asp:BoundField DataField="Aufsteller_5_Jahre_Garantie_Note" 
                HeaderText="Aufsteller_5_Jahre_Garantie_Note" 
                SortExpression="Aufsteller_5_Jahre_Garantie_Note" />
            <asp:BoundField DataField="Aufkleber_QR_Code" 
                HeaderText="Aufkleber_QR_Code" 
                SortExpression="Aufkleber_QR_Code" />
            <asp:BoundField DataField="Aufkleber_QR_Code_Note" 
                HeaderText="Aufkleber_QR_Code_Note" 
                SortExpression="Aufkleber_QR_Code_Note" />
            <asp:BoundField DataField="Aufkleber_Logo" 
                HeaderText="Aufkleber_Logo" 
                SortExpression="Aufkleber_Logo" />
            <asp:BoundField DataField="Aufkleber_Logo_Note" 
                HeaderText="Aufkleber_Logo_Note" 
                SortExpression="Aufkleber_Logo_Note" />
            <asp:BoundField DataField="Badetuch" HeaderText="Badetuch" 
                SortExpression="Badetuch" />
            <asp:BoundField DataField="Badetuch_Note" HeaderText="Badetuch_Note" 
                SortExpression="Badetuch_Note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" 
                SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" 
                HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" 
                HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="keine_deko_generell" 
                HeaderText="keine_deko_generell" SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="versand_gewuenscht" 
                HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
            
            
            
            
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [deko_2017_einsatzbericht_enjoy] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2017_einsatzbericht_enjoy] ([stammdaten_id], [datum], [Banner Eurostyle], [Banner Eurostyle Note], [Banner Livestyle], [Banner Livestyle Note], [Banner Essence], [Banner Essence Note], [Aufkleber Aquatunes], [Aufkleber Aquatunes Note], [Dekosäule Aquatunes], [Dekosäule Aquatunes Note], [Dekowürfel Nachhaltigkeit], [Dekowürfel Nachhaltigkeit Note], [Dekowürfel Made in Germany], [Dekowürfel Made in Germany Note], [Dekosäule Logo Standard], [Dekosäule Logo Standard Note], [Aufsteller 5 Jahre Garantie], [Aufsteller 5 Jahre Garantie Note], [Aufkleber QR Code], [Aufkleber QR Code Note], [Aufkleber Logo], [Aufkleber Logo Note], [Badetuch], [Badetuch Note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @Banner_Eurostyle, @Banner_Eurostyle_Note, @Banner_Livestyle, @Banner_Livestyle_Note, @Banner_Essence, @Banner_Essence_Note, @Aufkleber_Aquatunes, @Aufkleber_Aquatunes_Note, @Dekosäule_Aquatunes, @Dekosäule_Aquatunes_Note, @Dekowürfel_Nachhaltigkeit, @Dekowürfel_Nachhaltigkeit_Note, @Dekowürfel_Made_in_Germany, @Dekowürfel_Made_in_Germany_Note, @Dekosäule_Logo_Standard, @Dekosäule_Logo_Standard_Note, @Aufsteller_5_Jahre_Garantie, @Aufsteller_5_Jahre_Garantie_Note, @Aufkleber_QR_Code, @Aufkleber_QR_Code_Note, @Aufkleber_Logo, @Aufkleber_Logo_Note, @Badetuch, @Badetuch_Note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @keine_deko_generell, @kuenftige_dekos, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT [id], [stammdaten_id], [datum], [Banner Eurostyle] AS Banner_Eurostyle, [Banner Eurostyle Note] AS Banner_Eurostyle_Note, [Banner Livestyle] AS Banner_Livestyle, [Banner Livestyle Note] AS Banner_Livestyle_Note, [Banner Essence] AS Banner_Essence, [Banner Essence Note] AS Banner_Essence_Note, [Aufkleber Aquatunes] AS Aufkleber_Aquatunes, [Aufkleber Aquatunes Note] AS Aufkleber_Aquatunes_Note, [Dekosäule Aquatunes] AS Dekosäule_Aquatunes, [Dekosäule Aquatunes Note] AS Dekosäule_Aquatunes_Note, [Dekowürfel Nachhaltigkeit] AS Dekowürfel_Nachhaltigkeit, [Dekowürfel Nachhaltigkeit Note] AS Dekowürfel_Nachhaltigkeit_Note, [Dekowürfel Made in Germany] AS Dekowürfel_Made_in_Germany, [Dekowürfel Made in Germany Note] AS Dekowürfel_Made_in_Germany_Note, [Dekosäule Logo Standard] AS Dekosäule_Logo_Standard, [Dekosäule Logo Standard Note] AS Dekosäule_Logo_Standard_Note, [Aufsteller 5 Jahre Garantie] AS Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] AS Aufsteller_5_Jahre_Garantie_Note, [Aufkleber QR Code] AS Aufkleber_QR_Code, [Aufkleber QR Code Note] AS Aufkleber_QR_Code_Note, [Aufkleber Logo] AS Aufkleber_Logo, [Aufkleber Logo Note] AS Aufkleber_Logo_Note, [Badetuch], [Badetuch Note] AS Badetuch_Note, [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt] FROM [deko_2017_einsatzbericht_enjoy] WHERE ([id] = @id)" 
        
                    UpdateCommand="UPDATE [deko_2017_einsatzbericht_enjoy] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [Banner Eurostyle] = @Banner_Eurostyle, [Banner Eurostyle Note] = @Banner_Eurostyle_Note, [Banner Livestyle] = @Banner_Livestyle, [Banner Livestyle Note] = @Banner_Livestyle_Note, [Banner Essence] = @Banner_Essence, [Banner Essence Note] = @Banner_Essence_Note, [Aufkleber Aquatunes] = @Aufkleber_Aquatunes, [Aufkleber Aquatunes Note] = @Aufkleber_Aquatunes_Note, [Dekosäule Aquatunes] = @Dekosäule_Aquatunes, [Dekosäule Aquatunes Note] = @Dekosäule_Aquatunes_Note, [Dekowürfel Nachhaltigkeit] = @Dekowürfel_Nachhaltigkeit, [Dekowürfel Nachhaltigkeit Note] = @Dekowürfel_Nachhaltigkeit_Note, [Dekowürfel Made in Germany] = @Dekowürfel_Made_in_Germany, [Dekowürfel Made in Germany Note] = @Dekowürfel_Made_in_Germany_Note, [Dekosäule Logo Standard] = @Dekosäule_Logo_Standard, [Dekosäule Logo Standard Note] = @Dekosäule_Logo_Standard_Note, [Aufsteller 5 Jahre Garantie] = @Aufsteller_5_Jahre_Garantie, [Aufsteller 5 Jahre Garantie Note] = @Aufsteller_5_Jahre_Garantie_Note, [Aufkleber QR Code] = @Aufkleber_QR_Code, [Aufkleber QR Code Note] = @Aufkleber_QR_Code_Note, [Aufkleber Logo] = @Aufkleber_Logo, [Aufkleber Logo Note] = @Aufkleber_Logo_Note, [Badetuch] = @Badetuch, [Badetuch Note] = @Badetuch_Note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_Eurostyle" Type="Int32" />
            <asp:Parameter Name="Banner_Eurostyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Essence" Type="Int32" />
            <asp:Parameter Name="Banner_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Aquatunes" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Aquatunes_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Aquatunes" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Aquatunes_Note" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit_Note" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Made_in_Germany" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Made_in_Germany_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Logo_Standard" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Logo_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Badetuch" Type="Int32" />
            <asp:Parameter Name="Badetuch_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="stammdaten_id" 
                Type="Int32" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="Banner_Eurostyle" Type="Int32" />
            <asp:Parameter Name="Banner_Eurostyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle" Type="Int32" />
            <asp:Parameter Name="Banner_Livestyle_Note" Type="Int32" />
            <asp:Parameter Name="Banner_Essence" Type="Int32" />
            <asp:Parameter Name="Banner_Essence_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Aquatunes" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Aquatunes_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Aquatunes" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Aquatunes_Note" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Nachhaltigkeit_Note" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Made_in_Germany" Type="Int32" />
            <asp:Parameter Name="Dekowürfel_Made_in_Germany_Note" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Logo_Standard" Type="Int32" />
            <asp:Parameter Name="Dekosäule_Logo_Standard_Note" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie" Type="Int32" />
            <asp:Parameter Name="Aufsteller_5_Jahre_Garantie_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code" Type="Int32" />
            <asp:Parameter Name="Aufkleber_QR_Code_Note" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo" Type="Int32" />
            <asp:Parameter Name="Aufkleber_Logo_Note" Type="Int32" />
            <asp:Parameter Name="Badetuch" Type="Int32" />
            <asp:Parameter Name="Badetuch_Note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

